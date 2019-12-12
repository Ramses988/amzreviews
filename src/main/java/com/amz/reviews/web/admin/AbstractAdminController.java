package com.amz.reviews.web.admin;

import com.amz.reviews.model.Product;
import com.amz.reviews.model.User;
import com.amz.reviews.service.ProductService;
import com.amz.reviews.service.UserService;
import com.amz.reviews.to.ProductTo;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public abstract class AbstractAdminController {

    @Autowired
    private UserService service;

    @Autowired
    private ProductService productService;

    List<User> adminGetUsers() {
        return service.adminGetUsers();
    }

    List<User> adminGetUsersEnabled() {
        return service.adminGetUsersEnabled();
    }

    List<User> adminGetUsersDisabled() {
        return service.adminGetUsersDisabled();
    }

    User getUserWithProducts(int id) {
        return service.adminGetUserWithProducts(id);
    }

    User getUserIdOrEmail(String find) {
        return service.getUserIdOrEmail(find);
    }

    Product adminAddProduct(ProductTo productTo) {
        return productService.adminAddProduct(productTo);
    }

}
