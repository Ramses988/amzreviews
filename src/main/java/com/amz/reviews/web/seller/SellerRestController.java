package com.amz.reviews.web.seller;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = SellerRestController.REST_URL, produces = MediaType.APPLICATION_JSON_VALUE)
public class SellerRestController extends AbstractSellerController {

    static final String REST_URL = "/rest/seller";

//    @Override
//    @GetMapping
//    public List<Product> getAll() {
//        return super.getAll();
//    }
}
