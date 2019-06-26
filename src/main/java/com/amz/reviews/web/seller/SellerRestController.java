package com.amz.reviews.web.seller;


import com.amz.reviews.model.Product;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.awt.*;
import java.util.List;

@RestController
@RequestMapping(value = SellerRestController.REST_URL, produces = MediaType.APPLICATION_JSON_VALUE)
public class SellerRestController extends AbstractSellerController {

    static final String REST_URL = "/rest/seller";

    @Override
    @GetMapping
    public List<Product> getAll() {
        return super.getAll();
    }
}
