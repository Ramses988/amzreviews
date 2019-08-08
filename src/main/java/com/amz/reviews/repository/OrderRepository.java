package com.amz.reviews.repository;

import com.amz.reviews.model.Order;
import com.amz.reviews.model.Product;

import java.util.List;
import java.util.function.Predicate;

public interface OrderRepository {

    void save(Order order);

    List<Order> sellerGetActiveOrders(Product product);

    List<Order> sellerGetCompletedOrders(Product product);

}
