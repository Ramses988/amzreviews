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

    @GetMapping("/success")
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
        model.addAttribute("title", "Ваш email адрес успешно подтвержден");
        model.addAttribute("headline", "Спасибо за регистрацию на нашем сайте");
        model.addAttribute("text", "Спасибо за регистрацию на нашем сайте. Ваш email успешно подтвержден, теперь вы можете войти в Личный кабинет. Для входа в Личный кабинет перейдите по\n" +
                "                                <a class=\"original\" href=\"/login\">ссылке</a>");
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
                                       @RequestParam("confirmPassword") String confirmPassword, Model model) {
        service.changeResetPassword(token, password, confirmPassword);
        model.addAttribute("title", "Пароль успешно изменен!");
        model.addAttribute("headline", " ");
        model.addAttribute("text", "Вы успешно изменили пароль для входа в Личный кабинет. Для входа в Личный кабинет перейдите по <a class=\"original\" href=\"/login\">ссылке</a>");
        return "info";
    }
}