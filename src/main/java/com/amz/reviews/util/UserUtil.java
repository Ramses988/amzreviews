package com.amz.reviews.util;

import com.amz.reviews.model.Role;
import com.amz.reviews.model.User;
import com.amz.reviews.to.UserRegisterTo;

import java.time.LocalDateTime;

public class UserUtil {

    public static User createNewFromTo(UserRegisterTo newUser) {
        return new User(null, LocalDateTime.now(), newUser.getName(), newUser.getEmail(), newUser.getPassword(), false,
                newUser.getCountry(), 0, ("seller".equals(newUser.getRoles())) ? Role.ROLE_SELLER : Role.ROLE_CUSTOMER);
    }

}
