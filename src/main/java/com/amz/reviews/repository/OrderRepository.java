package com.amz.reviews.repository;

import com.amz.reviews.model.Order;

import java.util.List;
import java.util.function.Predicate;

public interface OrderRepository {

    List<Order> getAll();

    Order get(int orderId, int userId);

    void sellerCreate(Order order, int productId, int userId);

    void customerReserve(int orderId, int userId);

    List<Order> sellerGetActiveOrCompleted(int productId, int userId, Predicate<Order> status);

    List<Order> customerGetActiveOrCompleted(int userId, Predicate<Order> status);

    List<Order> customerGetOrder();

    void customerUpdate(Order order, int userId);

}
