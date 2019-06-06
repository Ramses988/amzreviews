package com.amz.reviews.repository;

import com.amz.reviews.model.Order;

import java.util.List;

public interface OrderRepository {

    List<Order> getAll();

    void sellerCreate(Order order, int productId, int userId);

    List<Order> sellerGetActiveOrder(int productId, int userId);

}
