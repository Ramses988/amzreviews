package com.amz.reviews.web.account;

import com.amz.reviews.service.UserService;
import com.amz.reviews.web.SecurityUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserAccountController {

    @Autowired
    private UserService service;

    @GetMapping("/profile")
    public String profile(Model model) {
        model.addAttribute("user", service.getUser(SecurityUtil.authUserId()));
        return "account/profile";
    }

    @GetMapping("/register")
    public String registerDisplay() {
        return "account/register";
    }

    @GetMapping("/register-success")
    public String registerSuccess() {
        return "account/success";
    }

//    @PostMapping("/register")
//    public String registerCreate(@Valid UserRegisterTo register, BindingResult result) {
//        if (result.hasErrors()) {
//            return "account/register";
//        }
//
//        service.userRegister(register);
//        return "info";
//    }

    @RequestMapping(value = "/confirm-account/{token}", method = {RequestMethod.GET, RequestMethod.POST})
    public String confirmUserAccount(@PathVariable("token") String token, Model model) {
        service.userActive(token);
        model.addAttribute("title", "Почтовый ящик успешно подтвержден");
        model.addAttribute("headline", "Почтовый ящик успешно подтвержден");
        model.addAttribute("text", "Почтовый ящик успешно подтвержден");
        return "info";
    }

    @GetMapping("/reset-password/{token}")
    public String confirmResetPassword(Model model, @PathVariable("token") String token) {
        service.confirmResetPassword(token);
        model.addAttribute("token", token);
        return "change";
    }

    @PostMapping("/reset-password")
    public String confirmResetPassword(@RequestParam("token") String token, @RequestParam("password") String password,
                                       @RequestParam("confirmPassword") String confirmPassword) {
        service.changeResetPassword(token, password, confirmPassword);
        return "info";
    }
}