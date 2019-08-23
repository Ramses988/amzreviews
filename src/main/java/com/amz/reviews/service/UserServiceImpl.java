package com.amz.reviews.service;

import com.amz.reviews.model.ConfirmToken;
import com.amz.reviews.model.User;
import com.amz.reviews.repository.UserRepository;
import com.amz.reviews.repository.datajpa.CrudConfirmRepository;
import com.amz.reviews.to.UserRegisterTo;
import com.amz.reviews.util.UserUtil;
import com.amz.reviews.web.AuthorizedUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
        if(Objects.nonNull(newUser) && (newUser.getPassword().equals(newUser.getConfirmPassword()))) {
            User user = UserUtil.createNewFromTo(newUser);
            repository.save(user);
            ConfirmToken token = new ConfirmToken(user);
            crudConfirmRepository.save(token);

            mailSender.send(user.getEmail(), token.getConfirmToken());
        }
    }

    @Override
    @Transactional
    public void userActive(String token) {
        ConfirmToken confirmToken = crudConfirmRepository.findByConfirmToken(token).orElse(null);

        if(Objects.nonNull(confirmToken)) {
            confirmToken.getUser().setEnabled(true);
            repository.save(confirmToken.getUser());
            crudConfirmRepository.delete(confirmToken);
        }
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
