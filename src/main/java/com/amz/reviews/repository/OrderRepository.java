package com.amz.reviews.repository;

import com.amz.reviews.model.Order;
import com.amz.reviews.model.Product;
import com.amz.reviews.model.User;

import java.util.List;
import java.util.function.Predicate;

public interface OrderRepository {

    void save(Order order);

    /* Sellers methods */

    List<Order> sellerGetActiveOrders(Product product);

    List<Order> sellerGetCompletedOrders(Product product);

    /* Customers methods */

    List<Order> customerGetActiveOrders(User user);

    List<Order> customerCompletedOrders(User user);

    Order customerGetOrder(int id, User user);

    Order customerGetOrderForProduct(Product product, User user);

    Order customerGetOrderWithProduct(int id, int userId);

}
