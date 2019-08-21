package com.amz.reviews.service;

import com.amz.reviews.model.User;
import com.amz.reviews.repository.UserRepository;
import com.amz.reviews.web.AuthorizedUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Objects;

@Service("userService")
@Transactional(readOnly = true)
public class UserServiceImpl implements UserService, UserDetailsService {

    @Autowired
    private UserRepository repository;

    @Override
    public User getOne(int userId) {
        return repository.getOne(userId);
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
