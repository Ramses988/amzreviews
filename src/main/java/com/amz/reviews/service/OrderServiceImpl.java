package com.amz.reviews.service;


import com.amz.reviews.model.Order;
import com.amz.reviews.repository.OrderRepository;
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
