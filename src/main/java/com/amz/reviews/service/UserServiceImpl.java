package com.amz.reviews.service;

import com.amz.reviews.model.ConfirmToken;
import com.amz.reviews.model.User;
import com.amz.reviews.repository.UserRepository;
import com.amz.reviews.repository.datajpa.CrudConfirmRepository;
import com.amz.reviews.to.FeedbackTo;
import com.amz.reviews.to.UserRegisterTo;
import com.amz.reviews.util.UserUtil;
import com.amz.reviews.util.ValidationUtil;
import com.amz.reviews.util.exception.ApplicationException;
import com.amz.reviews.util.exception.NotFoundException;
import com.amz.reviews.web.AuthorizedUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.HttpClientErrorException;

import java.util.Objects;

@Service("userService")
@Transactional(readOnly = true)
public class UserServiceImpl implements UserService, UserDetailsService {

    @Autowired
    private UserRepository repository;

    @Autowired
    private MailSender mailSender;

    @Autowired
    private CrudConfirmRepository crudConfirmRepository;

    @Override
    public User getOne(int userId) {
        return repository.getOne(userId);
    }

    @Override
    @Transactional
    public void userRegister(UserRegisterTo newUser) {
        if(Objects.isNull(newUser) || !(newUser.getPassword().equals(newUser.getConfirmPassword())))
            throw new ApplicationException("Пароли не совпадают!");

        User user = UserUtil.createNewFromTo(newUser);
        repository.save(user);
        ConfirmToken token = new ConfirmToken(user);
        crudConfirmRepository.save(token);

//            mailSender.send(user.getEmail(), token.getConfirmToken());
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
        mailSender.send("Ramses988@gmail.com", String.format("<p>%s</p>", feedback.getText()));
    }

    @Override
    @Transactional
    public void changePassword(String oldPassword, String newPassword, String confirmPassword, int userId) {
        User user = getUser(userId);

        if (!user.getPassword().equals(oldPassword))
            throw new ApplicationException("Неверный пароль");
        if (newPassword.length() < 7 || !newPassword.equals(confirmPassword))
            throw new ApplicationException("Пароли не совподают");

        user.setPassword(newPassword);
        repository.save(user);
    }

    @Override
    @Transactional
    public void resetPassword(String email) {
        User user = repository.getByEmail(email);

        if(Objects.nonNull(user)) {
            ConfirmToken token = new ConfirmToken(user);
            crudConfirmRepository.save(token);

            mailSender.send(user.getEmail(), token.getConfirmToken());
        }
    }

    @Override
    @Transactional
    public void changeResetPassword(String token, String password, String confirmPassword) {
        ConfirmToken confirmToken = crudConfirmRepository.findByConfirmToken(token).orElse(null);

        if(Objects.nonNull(confirmToken) && password.equals(confirmPassword)) {
            confirmToken.getUser().setPassword(password);
            repository.save(confirmToken.getUser());
            crudConfirmRepository.delete(confirmToken);
        }
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
