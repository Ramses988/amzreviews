package com.amz.reviews.service;


import com.amz.reviews.model.Order;
import com.amz.reviews.model.Product;
import com.amz.reviews.model.User;
import com.amz.reviews.repository.OrderRepository;
import com.amz.reviews.to.OrderIdTo;
import com.amz.reviews.to.OrderReviewTo;
import com.amz.reviews.util.Status;
import com.amz.reviews.util.ValidationUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Objects;

@Service
@Transactional(readOnly = true)
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderRepository repository;

    @Autowired
    private ProductService productService;

    @Autowired
    private UserService userService;

    @Override
    @Transactional
    public void save(Order order) {
        repository.save(order);
    }

    private User getUser(int userId) {
        return userService.getOne(userId);
    }

    @Override
    @Transactional
    public void customerAddOrderId(OrderIdTo orderIdTo, int userId) {
        if (Objects.nonNull(orderIdTo)) {
            Order order = repository.customerGetOrder(orderIdTo.getId(), getUser(userId));

            if (Objects.nonNull(order) && Objects.isNull(order.getOrderId())) {
                order.setOrderId(orderIdTo.getOrderId());
                order.setStatus(Status.BOUGHT.getStatus());
                save(order);
            }
        }
    }

    @Override
    @Transactional
    public void customerAddReview(OrderReviewTo orderReviewTo, int userId) {
        if (Objects.nonNull(orderReviewTo)) {
            Order order = repository.customerGetOrder(orderReviewTo.getId(), getUser(userId));

            if (Objects.nonNull(order) && Objects.isNull(order.getReviews())) {
                order.setReviews(orderReviewTo.getReviews());
                save(order);
            }
        }
    }

    @Override
    public Order customerGetOrderWithProduct(int orderId, int userId) {
        Order order = repository.customerGetOrderWithProduct(orderId, userId);
        ValidationUtil.checkNotFound(order);
        return order;
    }

    @Override
    public List<Order> customerGetActiveOrders(int userId) {
        User user = getUser(userId);

        if (Objects.nonNull(user))
            return repository.customerGetActiveOrders(user);

        return List.of();
    }

    @Override
    public List<Order> customerCompletedOrders(int userId) {
        User user = getUser(userId);

        if (Objects.nonNull(user))
            return repository.customerCompletedOrders(user);

        return List.of();
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
