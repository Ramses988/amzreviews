package com.amz.reviews.service;

import com.amz.reviews.model.User;

import java.util.List;

public interface UserService {

    List<User> getAll();

    User get(int id);

}
