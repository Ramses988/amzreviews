package com.amz.reviews.service;

import com.amz.reviews.model.User;
import com.amz.reviews.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository repository;

    @Override
    public User getOne(int userId) {
        return repository.getOne(userId);
    }

    @Override
    public List<User> getAll() {
        return repository.getAll();
    }

    @Override
    public User get(int id) {
        return repository.get(id);
    }

}
