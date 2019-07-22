package com.amz.reviews.web.seller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SellerUIController extends AbstractSellerController {

    @GetMapping("/seller")
    public String get(Model model) {
        model.addAttribute("products", super.getAllSeller());
        return "seller/products";
    }
}
