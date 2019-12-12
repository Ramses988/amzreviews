package com.amz.reviews.repository;

import com.amz.reviews.model.User;

import java.util.List;

public interface UserRepository {

    /* Admins methods */

    List<User> adminGetUsers();

    List<User> adminGetUsersEnabledOrDisabled(boolean enabled);

    User adminGetUserWithProducts(int id);


    User getOne(int id);

    User getByEmail(String email);

    User getUser(int id);

    void save(User user);

}