package com.amz.reviews.repository.datajpa;

import com.amz.reviews.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Transactional(readOnly = true)
public interface CrudUserRepository extends JpaRepository<User, Integer> {

    @Override
    List<User> findAll();

    @Override
    Optional<User> findById(Integer id);
}
