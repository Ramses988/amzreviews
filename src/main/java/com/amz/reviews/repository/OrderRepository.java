package com.amz.reviews.repository;

import com.amz.reviews.model.Order;

import java.util.List;
import java.util.function.Predicate;

public interface OrderRepository {

    List<Order> getAll();

    void sellerCreate(Order order, int productId, int userId);

    List<Order> sellerGetActiveOrCompleted(int productId, int userId, Predicate<Order> status);

}
