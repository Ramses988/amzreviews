package com.amz.reviews.web.seller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class SellerUIController extends AbstractSellerController {

    @GetMapping("/seller")
    public String get() {
        return "seller/products";
    }

    @GetMapping("/seller/history/{id}")
    public String getOrders(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("id", id);
        return "seller/history";
    }
}