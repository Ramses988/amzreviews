package com.amz.reviews.service;


import com.amz.reviews.model.Order;
import com.amz.reviews.model.Product;
import com.amz.reviews.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Service
@Transactional(readOnly = true)
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderRepository repository;

    @Autowired
    private ProductService productService;

    @Override
    @Transactional
    public void save(Order order) {
        repository.save(order);
    }

    @Override
    public List<Order> sellerGetActiveOrders(int id, int userId) {
        Product product = productService.sellerGetProduct(id, userId);

        if(Objects.nonNull(product)) {
            return repository.sellerGetActiveOrders(product);
        }

        return List.of();
    }

    @Override
    public List<Order> sellerGetCompletedOrders(int id, int userId) {
        Product product = productService.sellerGetProduct(id, userId);

        if(Objects.nonNull(product)) {
            return repository.sellerGetCompletedOrders(product);
        }

        return List.of();
    }
}
