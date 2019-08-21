package com.amz.reviews.repository.datajpa;

import com.amz.reviews.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

public interface CrudUserRepository extends JpaRepository<User, Integer> {

    User findByEmail(String email);

}