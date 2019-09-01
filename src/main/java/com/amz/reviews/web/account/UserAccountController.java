package com.amz.reviews.web.account;

import com.amz.reviews.service.UserService;
import com.amz.reviews.to.UserRegisterTo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
public class UserAccountController {

    @Autowired
    private UserService service;

    @GetMapping("/profile")
    public String registerDisplay() {
        return "account/profile";
    }

    @GetMapping("/register")
    public String registerDisplay(Model model) {
        model.addAttribute("userRegisterTo", new UserRegisterTo());
        return "account/register";
    }

    @PostMapping("/register")
    public String registerCreate(@Valid UserRegisterTo register, BindingResult result) {
        if (result.hasErrors()) {
            return "account/register";
        }

        service.userRegister(register);
        return "info";
    }

    @RequestMapping(value = "/confirm-account/{token}", method = {RequestMethod.GET, RequestMethod.POST})
    public String confirmUserAccount(@PathVariable("token") String token) {
        service.userActive(token);
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