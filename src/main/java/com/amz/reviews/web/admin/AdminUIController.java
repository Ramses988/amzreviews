package com.amz.reviews.web.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminUIController {

    @GetMapping("/admin")
    public String getAll() {
        return "admin/admin";
    }

}
