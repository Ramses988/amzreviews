package com.amz.reviews.service;

import com.amz.reviews.model.ConfirmToken;
import com.amz.reviews.model.User;
import com.amz.reviews.repository.UserRepository;
import com.amz.reviews.repository.datajpa.CrudConfirmRepository;
import com.amz.reviews.to.FeedbackTo;
import com.amz.reviews.to.UserRegisterTo;
import com.amz.reviews.util.Mail;
import com.amz.reviews.util.UserUtil;
import com.amz.reviews.util.ValidationUtil;
import com.amz.reviews.util.exception.ApplicationException;
import com.amz.reviews.util.exception.NotFoundException;
import com.amz.reviews.web.AuthorizedUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.HttpClientErrorException;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@Service("userService")
@Transactional(readOnly = true)
public class UserServiceImpl implements UserService, UserDetailsService {

    private final PasswordEncoder passwordEncoder;

    @Autowired
    private UserRepository repository;

    @Autowired
    private MailSender mailSender;

    @Autowired
    private CrudConfirmRepository crudConfirmRepository;

    @Autowired
    public UserServiceImpl(PasswordEncoder passwordEncoder) {
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    public List<User> adminGetUsers() {
        return repository.adminGetUsers();
    }

    @Override
    public List<User> adminGetUsersEnabled() {
        return repository.adminGetUsersEnabledOrDisabled(true);
    }

    @Override
    public List<User> adminGetUsersDisabled() {
        return repository.adminGetUsersEnabledOrDisabled(false);
    }

    @Override
    public User adminGetUserWithProducts(int id) {
        return repository.adminGetUserWithProducts(id);
    }

    @Override
    public User getUserIdOrEmail(String find) {
        User user = null;
        int id = 0;
        try {
            id = Integer.parseInt(find);
        } catch (Exception ex) {
            id = repository.getByEmail(find).getId();
        }

        user = this.adminGetUserWithProducts(id);
        ValidationUtil.checkNotFound(user);
        return user;
    }

    @Override
    public User getOne(int userId) {
        return repository.getOne(userId);
    }

    @Override
    @Transactional
    public void userRegister(UserRegisterTo newUser) {
        if(Objects.isNull(newUser) || !(newUser.getPassword().equals(newUser.getConfirmPassword())))
            throw new ApplicationException("Passwords do not match!");

        User user = UserUtil.createNewFromTo(newUser);
        user.setPassword(UserUtil.prepareToPassword(newUser.getPassword(), passwordEncoder));
        repository.save(user);
        ConfirmToken token = new ConfirmToken(user);
        crudConfirmRepository.save(token);

        Map<String, Object> values = new HashMap<>();
        values.put("name", user.getName());
        values.put("token", token.getConfirmToken());
        Mail mail = new Mail(user.getEmail(), "Please confirm your email address", "verification_email", values);

        mailSender.send(mail);
    }


    @Override
    public String sellerGetBalance(int userId) {
        User user = getUser(userId);

        if(Objects.nonNull(user)) {
            if(user.getBalance() >= 0)
                return String.format("<span balance-status='true'>$%.2f</span>", user.getBalance());
            else
                return String.format("<span balance-status='false'>%.2f$</span>", user.getBalance());
        }

        return "";
    }

    @Override
    @Transactional
    public void updateUser(String name, String payPal, int userId) {
        User user = getUser(userId);
        user.setName(name);
        user.setPayPal(payPal);
        repository.save(user);
    }

    @Override
    public void feedback(FeedbackTo feedback) {
        Map<String, Object> values = new HashMap<>();
        values.put("name", feedback.getName());
        values.put("email", feedback.getEmail());
        values.put("text", feedback.getText());

        Mail mail = new Mail("info@amzreviews.biz", "Запрос из формы обратной связи", "feedback", values);
        mailSender.send(mail);
    }

    @Override
    @Transactional
    public void changePassword(String oldPassword, String newPassword, String confirmPassword, int userId) {
        User user = getUser(userId);

        if (!passwordEncoder.matches(oldPassword, user.getPassword()))
            throw new ApplicationException("Wrong password!");
        if (newPassword.length() < 7 || !newPassword.equals(confirmPassword))
            throw new ApplicationException("Passwords do not match!");

        user.setPassword(UserUtil.prepareToPassword(newPassword, passwordEncoder));
        repository.save(user);
    }

    @Override
    @Transactional
    public void save(User user) {
        repository.save(user);
    }

    @Override
    @Transactional
    public void resetPassword(String email) {
        User user = repository.getByEmail(email.toLowerCase().trim());

        if(Objects.nonNull(user)) {
            ConfirmToken token = new ConfirmToken(user);
            crudConfirmRepository.save(token);

            Map<String, Object> values = new HashMap<>();
            values.put("name", user.getName());
            values.put("token", token.getConfirmToken());

            Mail mail = new Mail(user.getEmail(), "Reset your password", "reset_password", values);
            mailSender.send(mail);
        }
    }

    @Override
    @Transactional
    public void changeResetPassword(String token, String password, String confirmPassword) {
        ConfirmToken confirmToken = crudConfirmRepository.findByConfirmToken(token).orElse(null);

        // Проверка значений

        if(Objects.nonNull(confirmToken) && password.equals(confirmPassword)) {
            confirmToken.getUser().setPassword(UserUtil.prepareToPassword(password, passwordEncoder));
            repository.save(confirmToken.getUser());
            crudConfirmRepository.delete(confirmToken);
        }

        // Обработка ошибки
    }

    @Override
    @Transactional
    public void userActive(String token) {
        ConfirmToken confirmToken = crudConfirmRepository.findByConfirmToken(token).orElse(null);

        ValidationUtil.checkNotFound(confirmToken);
        confirmToken.getUser().setEnabled(true);
        repository.save(confirmToken.getUser());
        crudConfirmRepository.delete(confirmToken);
    }

    @Override
    public void confirmResetPassword(String token) {
        ConfirmToken confirmToken = crudConfirmRepository.findByConfirmToken(token).orElse(null);
        ValidationUtil.checkNotFound(confirmToken);
    }

    @Override
    public User getUser(int id) {
        return repository.getUser(id);
    }

    @Override
    public AuthorizedUser loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = repository.getByEmail(email.toLowerCase());

        if(Objects.isNull(user))
            throw new UsernameNotFoundException("User " + email + " is not found");

        return new AuthorizedUser(user);

    }
}
