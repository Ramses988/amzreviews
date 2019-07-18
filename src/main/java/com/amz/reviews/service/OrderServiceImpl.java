package com.amz.reviews.service;


import com.amz.reviews.model.Order;
import com.amz.reviews.repository.OrderRepository;
import com.amz.reviews.to.OrderTo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderRepository repository;

    @Override
    public List<Order> getAll() {
        return repository.getAll();
    }

    @Override
    public Order getName(String orderId, int userId) {
        return repository.getName(orderId, userId);
    }

    @Override
    public Order get(int orderId, int userId) {
        return repository.get(orderId, userId);
    }

    @Override
    public void customerUpdate(Order order, int userId) {
        repository.customerUpdate(order, userId);
    }

    @Override
    public List<OrderTo> customerGetOrder() {
        return repository.customerGetOrder();
    }

    @Override
    public void customerReserve(int orderId, int userId) {
        repository.customerReserve(orderId, userId);
    }

    @Override
    public List<Order> customerGetActiveOrder(int userId) {
        return repository.customerGetActiveOrCompleted(userId, order -> !"Completed".equals(order.getStatus()));
    }

    @Override
    public List<Order> customerGetCompletedOrder(int userId) {
        return repository.customerGetActiveOrCompleted(userId, order -> "Completed".equals(order.getStatus()));
    }

    @Override
    public List<Order> sellerGetActiveOrder(int productId, int userId) {
        return repository.sellerGetActiveOrCompleted(productId, userId, order -> !"Completed".equals(order.getStatus()));
    }

    @Override
    public List<Order> sellerGetCompletedOrder(int productId, int userId) {
        return repository.sellerGetActiveOrCompleted(productId, userId, order -> "Completed".equals(order.getStatus()));
    }

    @Override
    public void sellerCreate(Order order, int productId, int userId) {
        repository.sellerCreate(order, productId, userId);
    }
}
