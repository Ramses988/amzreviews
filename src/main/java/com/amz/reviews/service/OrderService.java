package com.amz.reviews.service;


import com.amz.reviews.model.Order;
import com.amz.reviews.model.Product;
import com.amz.reviews.model.User;
import com.amz.reviews.to.OrderIdTo;
import com.amz.reviews.to.OrderReviewTo;

import java.util.List;

public interface OrderService {

    void save(Order order);

    /* Sellers methods */

    List<Order> sellerGetActiveOrders(int id, int userId);

    List<Order> sellerGetCompletedOrders(int id, int userId);


    /* Customers methods */

    Order customerGetOrderWithProduct(int orderId, int userId);

    Order customerGetOrderForProduct(Product product, User user);

    List<Order> customerGetActiveOrders(int userId);

    List<Order> customerCompletedOrders(int userId);

    void customerAddOrderId(OrderIdTo orderIdTo, int userId);

    void customerAddReview(OrderReviewTo orderReviewTo, int userId);

}