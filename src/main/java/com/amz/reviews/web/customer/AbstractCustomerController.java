package com.amz.reviews.web.customer;

import com.amz.reviews.model.Order;
import com.amz.reviews.service.OrderService;
import com.amz.reviews.to.OrderTo;
import com.amz.reviews.web.SecurityUtil;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public abstract class AbstractCustomerController {

    @Autowired
    private OrderService service;

    public List<OrderTo> getAll() {
        return service.customerGetOrder();
    }

    public Order getName(String orderId) {
        int userId = 3;
        return service.getName(orderId, userId);
    }

    public Order get(int orderId) {
        int userId = 3;
        return service.get(orderId, userId);
    }
}
