package com.amz.reviews.web.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminUIController extends AbstractAdminController {

    @GetMapping("/admin")
    public String get() {
        return "admin/index";
    }

    @GetMapping("/admin/users")
    public String getAllUsers(Model model) {
        model.addAttribute("users", super.adminGetUsers());
        return "admin/users";
    }

}
