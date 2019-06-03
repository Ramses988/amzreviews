package com.amz.reviews.repository;

import com.amz.reviews.model.User;

import java.util.List;

public interface UserRepository {

    List<User> getAll();

}
