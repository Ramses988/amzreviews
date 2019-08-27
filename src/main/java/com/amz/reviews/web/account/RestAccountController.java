package com.amz.reviews.web.account;

import com.amz.reviews.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
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
}