package com.amz.reviews.web.admin;

import com.amz.reviews.model.Product;
import com.amz.reviews.to.ProductTo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminUIController extends AbstractAdminController {

    @GetMapping("/admin")
    public String get() {
        return "admin/index";
    }

    @GetMapping("/admin/product-add")
    public String addProduct(Model model) {
        model.addAttribute("product", new Product());
        return "admin/product";
    }

    @PostMapping("/admin/product-add")
    public String addProduct(ProductTo productTo, Model model) {
        model.addAttribute("product", super.adminAddProduct(productTo));
        return "admin/product";
    }

    @GetMapping("/admin/user-search")
    public String userSearch() {
        return "admin/user_search";
    }

    @PostMapping("/admin/user-search")
    public String userSearch(@RequestParam("find") String find, Model model) {
        model.addAttribute("user", super.getUserIdOrEmail(find));
        return "admin/user";
    }

    @GetMapping("/admin/users")
    public String getAllUsers(Model model) {
        model.addAttribute("users", super.adminGetUsers());
        return "admin/users";
    }

    @GetMapping("/admin/users-enabled")
    public String getAllUsersEnabled(Model model) {
        model.addAttribute("users", super.adminGetUsersEnabled());
        return "admin/users";
    }

    @GetMapping("/admin/users-disabled")
    public String getAllUsersDisabled(Model model) {
        model.addAttribute("users", super.adminGetUsersDisabled());
        return "admin/users";
    }

    @GetMapping("/admin/user/{id}")
    public String getUserWithProducts(@PathVariable("id") int id, Model model) {
        model.addAttribute("user", super.getUserWithProducts(id));
        return "admin/user";
    }

}
