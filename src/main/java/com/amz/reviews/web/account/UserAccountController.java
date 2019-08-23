package com.amz.reviews.web.account;

import com.amz.reviews.service.UserService;
import com.amz.reviews.to.UserRegisterTo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserAccountController {

    @Autowired
    private UserService service;

    @GetMapping("/register")
    public String registerDisplay() {
        return "account/register";
    }

    @PostMapping("/register")
    public String registerCreate(UserRegisterTo register) {
        service.userRegister(register);
        return "info";
    }

    @RequestMapping(value = "/confirm-account/{token}", method = {RequestMethod.GET, RequestMethod.POST})
    public String confirmUserAccount(@PathVariable("token") String token) {
        service.userActive(token);
        return "info";
    }
}