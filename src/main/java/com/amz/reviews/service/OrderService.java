package com.amz.reviews.service;

import com.amz.reviews.model.Order;

import java.util.List;

public interface OrderService {

    List<Order> getAll();

    Order get(int orderId, int userId);

    void sellerCreate(Order order, int productId, int userId);

    List<Order> sellerGetActiveOrder(int productId, int userId);

    List<Order> sellerGetCompletedOrder(int productId, int userId);

    List<Order> customerGetActiveOrder(int userId);

    List<Order> customerGetCompletedOrder(int userId);

    List<Order> customerGetOrder();

    void customerReserve(int orderId, int userId);

    void customerUpdate(Order order, int userId);

}
