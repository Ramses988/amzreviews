package com.amz.reviews.web.seller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = SellerRestController.REST_URL, produces = MediaType.APPLICATION_JSON_VALUE)
public class SellerRestController extends AbstractSellerController {

    static final String REST_URL = "/rest/seller";

    @PostMapping("/add-product")
//    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void addProduct(@RequestBody String asin) {
        System.out.println(asin);
    }
}
