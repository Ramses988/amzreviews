package com.amz.reviews.service;

import com.amz.reviews.model.User;
import com.amz.reviews.to.FeedbackTo;
import com.amz.reviews.to.UserRegisterTo;

import java.util.List;

public interface UserService {

    User getOne(int userId);

    User getUser(int id);

    void feedback(FeedbackTo feedback);

    void userRegister(UserRegisterTo newUser);

    void userActive(String token);

    void updateUser(String name, String payPal, int userId);

    void resetPassword(String email);

    void confirmResetPassword(String token);

    void changeResetPassword(String token, String password, String confirmPassword);

    void changePassword(String oldPassword, String newPassword, String confirmPassword, int userId);
}