package com.amz.reviews.web.customer;

import com.amz.reviews.model.Order;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class CustomerUIController extends AbstractCustomerController {

    @GetMapping("/customer")
    public String get(Model model) {
        model.addAttribute("orders", super.getAll());
        return "customer/orders";
    }

    @GetMapping("/customer/product/{id}")
    public String getOrder(@PathVariable("id") int id, Model model) {
        model.addAttribute("order", super.get(id));
        return "customer/product";
    }
}
