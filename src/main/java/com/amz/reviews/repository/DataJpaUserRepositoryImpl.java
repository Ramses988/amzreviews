package com.amz.reviews.repository;

import com.amz.reviews.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DataJpaUserRepositoryImpl implements UserRepository {

    @Autowired
    private CrudUserRepository crudRepository;

    @Override
    public List<User> getAll() {
        return crudRepository.findAll();
    }

    @Override
    public User get(int id) {
        return crudRepository.findById(id).orElse(null);
    }
}
