package com.amz.reviews.web.customer;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CustomerUIController extends AbstractCustomerController {

    @GetMapping("/customer")
    public String getAll(Model model) {
        model.addAttribute("products", super.customerGetActiveProducts());
        return "customer/products";
    }

    @GetMapping("/customer/history")
    public String history() {
        return "customer/history";
    }

    @GetMapping("/customer/product/{id}")
    public String get(@PathVariable("id") int id, Model model) {
        model.addAttribute("product", super.customerGetProduct(id));
        return "customer/product";
    }

    @PostMapping("/customer/product")
    public String reserve(@RequestParam("id") Integer id) {
        super.customerReserve(id);
        return "redirect:/customer/history";
    }
}