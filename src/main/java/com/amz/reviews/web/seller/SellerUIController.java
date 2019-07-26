package com.amz.reviews.web.seller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SellerUIController extends AbstractSellerController {

    @GetMapping("/seller")
    public String get() {
        return "seller/products";
    }
}
