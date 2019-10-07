package com.amz.reviews.repository;

import com.amz.reviews.model.Order;
import com.amz.reviews.model.Product;
import com.amz.reviews.model.User;
import com.amz.reviews.repository.datajpa.CrudOrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class DataJpaOrderRepositoryImpl implements OrderRepository {

    @Autowired
    private CrudOrderRepository repository;

    @Override
    public void save(Order order) {
        repository.save(order);
    }

    @Override
    public Order customerGetOrderForProduct(Product product, User user) {
        return repository.findByProductAndUser(product, user).orElse(null);
    }

    @Override
    public Order customerGetOrder(int id, User user) {
        return repository.findByIdAndUser(id, user).orElse(null);
    }

    @Override
    public Order customerGetOrderWithProduct(int id, int userId) {
        return repository.getOrderWithProduct(id, userId);
    }

    @Override
    public List<Order> customerGetActiveOrders(User user) {
        return repository.findAllByStatusNotLikeAndUserOrderByDateDesc("Completed", user);
    }

    @Override
    public List<Order> customerCompletedOrders(User user) {
        return repository.findAllByStatusEqualsAndUserOrderByDateDesc("Completed", user);
    }

    @Override
    public List<Order> sellerGetActiveOrders(Product product) {
        return repository.findAllByStatusNotLikeAndProductOrderByDateDesc("Completed", product);
    }

    @Override
    public List<Order> sellerGetCompletedOrders(Product product) {
        return repository.findAllByStatusEqualsAndProductOrderByDateDesc("Completed", product);
    }
}