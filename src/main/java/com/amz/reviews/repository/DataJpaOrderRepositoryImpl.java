package com.amz.reviews.repository;

import com.amz.reviews.model.Order;
import com.amz.reviews.model.Product;
import com.amz.reviews.repository.datajpa.CrudOrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.function.Predicate;


@Repository
public class DataJpaOrderRepositoryImpl implements OrderRepository {

    @Autowired
    private CrudOrderRepository crudRepository;

    @Override
    public void save(Order order) {
        crudRepository.save(order);
    }

    @Override
    public List<Order> sellerGetActiveOrders(Product product) {
        return crudRepository.findAllByStatusNotLikeAndProductOrderByDateDesc("Completed", product);
    }

    @Override
    public List<Order> sellerGetCompletedOrders(Product product) {
        return crudRepository.findAllByStatusEqualsAndProductOrderByDateDesc("Completed", product);
    }
}