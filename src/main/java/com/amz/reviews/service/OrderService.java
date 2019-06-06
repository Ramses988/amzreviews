package com.amz.reviews.service;

import com.amz.reviews.model.Order;

import java.util.List;

public interface OrderService {

    List<Order> getAll();

    void sellerCreate(Order order, int productId, int userId);

    List<Order> sellerGetActiveOrder(int productId, int userId);

}
