package com.amz.reviews.repository;

import com.amz.reviews.model.User;
import com.amz.reviews.repository.datajpa.CrudUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DataJpaUserRepositoryImpl implements UserRepository {

    @Autowired
    private CrudUserRepository crudRepository;


    @Override
    public List<User> adminGetUsers() {
        return crudRepository.findAll();
    }

    @Override
    public List<User> adminGetUsersEnabledOrDisabled(boolean enabled) {
        return crudRepository.findAllByEnabledEquals(enabled);
    }

    @Override
    public User adminGetUserWithProducts(int id) {
        return crudRepository.getUserWithProducts(id);
    }

    @Override
    public void save(User user) {
        crudRepository.save(user);
    }

    @Override
    public User getOne(int id) {
        return crudRepository.getOne(id);
    }

    @Override
    public User getUser(int id) {
        return crudRepository.findById(id).orElse(null);
    }

    @Override
    public User getByEmail(String email) {
        return crudRepository.findByEmail(email);
    }
}
