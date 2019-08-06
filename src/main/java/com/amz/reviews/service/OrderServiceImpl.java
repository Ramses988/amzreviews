package com.amz.reviews.service;


import com.amz.reviews.model.Order;
import com.amz.reviews.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderRepository repository;

    @Override
    @Transactional
    public void save(Order order) {
        repository.save(order);
    }
}
