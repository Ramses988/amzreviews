package com.amz.reviews.service;


import com.amz.reviews.model.Order;

import java.util.List;

public interface OrderService {

    void save(Order order);

    /* Sellers methods */

    List<Order> sellerGetActiveOrders(int id, int userId);

    List<Order> sellerGetCompletedOrders(int id, int userId);


    /* Customers methods */

}