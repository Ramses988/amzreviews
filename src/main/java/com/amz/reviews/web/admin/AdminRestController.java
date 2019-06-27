package com.amz.reviews.web.admin;

import com.amz.reviews.model.User;
import com.amz.reviews.web.seller.SellerRestController;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = AdminRestController.REST_URL, produces = MediaType.APPLICATION_JSON_VALUE)
public class AdminRestController extends AbstractAdminController {

    static final String REST_URL = "/rest/admin";

    @Override
    @GetMapping
    public List<User> getAll() {
        return super.getAll();
    }
}