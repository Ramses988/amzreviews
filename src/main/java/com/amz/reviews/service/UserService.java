package com.amz.reviews.service;

import com.amz.reviews.model.User;
import com.amz.reviews.to.UserRegisterTo;

import java.util.List;

public interface UserService {

    User getOne(int userId);

    User getUser(int id);

    void userRegister(UserRegisterTo newUser);

    void userActive(String token);

    void resetPassword(String email);

    void confirmResetPassword(String token);

    void changeResetPassword(String token, String password, String confirmPassword);
}