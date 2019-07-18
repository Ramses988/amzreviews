package com.amz.reviews.web.customer;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class CustomerUIController extends AbstractCustomerController {

    @GetMapping("/customer")
    public String getAll(Model model) {
        model.addAttribute("products", super.getActiveProducts());
        return "customer/products";
    }

    @GetMapping("/customer/product/{id}")
    public String get(@PathVariable("id") int id, Model model) {
        model.addAttribute("product", super.get(id));
        return "customer/product";
    }


//    @GetMapping("/customer")
//    public String get(Model model) {
//        model.addAttribute("orders", super.getAll());
//        return "customer/orders";
//    }
//
//    @GetMapping("/customer/product/{name}")
//    public String getOrder(@PathVariable("name") String name, Model model) {
//        model.addAttribute("order", super.getName(name));
//        return "customer/product";
//    }
}
