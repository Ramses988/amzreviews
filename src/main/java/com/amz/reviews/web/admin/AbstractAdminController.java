package com.amz.reviews.web.admin;

import com.amz.reviews.model.User;
import com.amz.reviews.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public abstract class AbstractAdminController {

    @Autowired
    private UserService service;

//    public List<User> getAll() {
//        return service.getAll();
//    }

}
