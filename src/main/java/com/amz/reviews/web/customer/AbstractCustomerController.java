package com.amz.reviews.web.customer;

import com.amz.reviews.model.Order;
import com.amz.reviews.model.Product;
import com.amz.reviews.service.OrderService;
import com.amz.reviews.service.ProductService;
import com.amz.reviews.to.OrderIdTo;
import com.amz.reviews.to.OrderReviewTo;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public abstract class AbstractCustomerController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private ProductService productService;

    List<Order> customerGetActiveOrders() {
        int userId = 3;
        return orderService.customerGetActiveOrders(userId);
    }

    List<Order> customerCompletedOrders() {
        int userId = 3;
        return orderService.customerCompletedOrders(userId);
    }

    List<Product> customerGetActiveProducts() {
        return productService.customerGetActiveProducts();
    }

    Product customerGetProduct(int productId) {
        return productService.customerGetProduct(productId);
    }

    Order customerGetOrderWithProduct(int orderId) {
        int userId = 3;
        return orderService.customerGetOrderWithProduct(orderId, userId);
    }

    void customerReserve(Integer productId) {
        int userId = 3;
        productService.customerReserve(productId, userId);
    }

    void customerAddOrderId(OrderIdTo orderIdTo) {
        int userId = 3;
        orderService.customerAddOrderId(orderIdTo, userId);
    }

    void customerAddReview(OrderReviewTo orderReviewTo) {
        int userId = 3;
        orderService.customerAddReview(orderReviewTo, userId);
    }
}