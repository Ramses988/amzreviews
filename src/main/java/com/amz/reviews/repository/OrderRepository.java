package com.amz.reviews.repository;

import com.amz.reviews.model.Order;

public interface OrderRepository {

    void save(Order order);

//    List<Order> getAll();
//
//    Order getName(String orderId, int userId);
//
//    Order get(int orderId, int userId);
//
//    void sellerCreate(Order order, int productId, int userId);
//
//    void customerReserve(int orderId, int userId);
//
//    List<Order> sellerGetActiveOrCompleted(int productId, int userId, Predicate<Order> status);
//
//    List<Order> customerGetActiveOrCompleted(int userId, Predicate<Order> status);
//
//    List<OrderTo> customerGetOrder();
//
//    void customerUpdate(Order order, int userId);

}
