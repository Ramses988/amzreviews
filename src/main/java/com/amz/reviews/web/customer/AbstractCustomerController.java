package com.amz.reviews.web.customer;

import com.amz.reviews.model.Product;
import com.amz.reviews.service.OrderService;
import com.amz.reviews.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public abstract class AbstractCustomerController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private ProductService productService;

    public List<Product> getActiveProducts() {
        return productService.getActiveProducts();
    }

    public Product get(int productId) {
        return productService.get(productId);
    }

//    public List<OrderTo> getAll() {
//        return service.customerGetOrder();
//    }
//
//    public Order getName(String orderId) {
//        int userId = 3;
//        return service.getName(orderId, userId);
//    }
//
//    public Order get(int orderId) {
//        int userId = 3;
//        return service.get(orderId, userId);
//    }
}
