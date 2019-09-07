package com.amz.reviews.web.account;

import com.amz.reviews.service.UserService;
import com.amz.reviews.web.SecurityUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = RestAccountController.REST_URL, produces = MediaType.APPLICATION_JSON_VALUE)
public class RestAccountController {

    static final String REST_URL = "/rest/account";

    @Autowired
    private UserService service;

    @PostMapping("/reset-password")
    public void resetPassword(@RequestParam("email") String email) {
        service.resetPassword(email);
    }

    @PostMapping("/change-password")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void changePassword(@RequestParam("oldPassword") String oldPassword, @RequestParam("newPassword") String newPassword,
                               @RequestParam("confirmPassword") String confirmPassword) {
        int userId = SecurityUtil.authUserId();
        service.changePassword(oldPassword, newPassword, confirmPassword, userId);
    }

    @PostMapping("/update-profile")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void updateProfile(@RequestParam("name") String name, @RequestParam("payPal") String payPal) {
        int userId = SecurityUtil.authUserId();
        service.updateUser(name, payPal, userId);
    }
}