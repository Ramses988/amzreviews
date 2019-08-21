package com.amz.reviews.web.customer;

import com.amz.reviews.model.Order;
import com.amz.reviews.model.Product;
import com.amz.reviews.service.OrderService;
import com.amz.reviews.service.ProductService;
import com.amz.reviews.to.OrderIdTo;
import com.amz.reviews.to.OrderReviewTo;
import com.amz.reviews.web.SecurityUtil;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public abstract class AbstractCustomerController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private ProductService productService;

    List<Order> customerGetActiveOrders() {
        int userId = SecurityUtil.authUserId();
        return orderService.customerGetActiveOrders(userId);
    }

    List<Order> customerCompletedOrders() {
        int userId = SecurityUtil.authUserId();
        return orderService.customerCompletedOrders(userId);
    }

    List<Product> customerGetActiveProducts() {
        return productService.customerGetActiveProducts();
    }

    Product customerGetProduct(int productId) {
        return productService.customerGetProduct(productId);
    }

    Order customerGetOrderWithProduct(int orderId) {
        int userId = SecurityUtil.authUserId();
        return orderService.customerGetOrderWithProduct(orderId, userId);
    }

    void customerReserve(Integer productId) {
        int userId = SecurityUtil.authUserId();
        productService.customerReserve(productId, userId);
    }

    void customerAddOrderId(OrderIdTo orderIdTo) {
        int userId = SecurityUtil.authUserId();
        orderService.customerAddOrderId(orderIdTo, userId);
    }

    void customerAddReview(OrderReviewTo orderReviewTo) {
        int userId = SecurityUtil.authUserId();
        orderService.customerAddReview(orderReviewTo, userId);
    }
}