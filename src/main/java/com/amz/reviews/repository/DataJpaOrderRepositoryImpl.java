package com.amz.reviews.repository;

import com.amz.reviews.model.Order;
import com.amz.reviews.model.Product;
import com.amz.reviews.model.User;
import com.amz.reviews.repository.datajpa.CrudOrderRepository;
import com.amz.reviews.repository.datajpa.CrudProductRepository;
import com.amz.reviews.repository.datajpa.CrudUserRepository;
import com.amz.reviews.to.OrderTo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;


@Repository
public class DataJpaOrderRepositoryImpl implements OrderRepository {

    @Autowired
    private CrudOrderRepository crudOrderRepository;

    @Autowired
    private CrudProductRepository crudProductRepository;

    @Autowired
    private CrudUserRepository crudUserRepository;


    @Override
    public List<Order> getAll() {
        return crudOrderRepository.findAll();
    }


    @Override
    public Order getName(String orderId, int userId) {
        return crudOrderRepository.findByNameAndStatus(orderId, "New")
                .stream()
                .findFirst().orElse(null);
    }

    @Override
    public Order get(int orderId, int userId) {
        Order order = crudOrderRepository.findById(orderId).orElse(null);

        if(order != null && "New".equals(order.getStatus()))
            return order;

        if(order != null && order.getUser().getId() == userId)
            return order;

        return null;
    }

    @Override
    public void customerUpdate(Order orderId, int userId) {
        Order order = crudOrderRepository.findById(orderId.getId()).orElse(null);

        if(order != null && !"Completed".equals(order.getStatus()) && order.getUser().getId() == userId) {
            order.setOrderId(orderId.getOrderId());
            order.setReviews(orderId.getReviews());
            crudOrderRepository.save(order);
        }
    }

    @Override
    public void customerReserve(int orderId, int userId) {
        Order order = crudOrderRepository.findById(orderId).orElse(null);

        if(order != null && "New".equals(order.getStatus())) {
            order.setStatus("Reserved");
            order.setUser(crudUserRepository.getOne(userId));
            crudOrderRepository.save(order);
        } else {
            // Логика обработки если заказ уже зарезервирован
        }
    }

    @Override
    public List<OrderTo> customerGetOrder() {
        return crudOrderRepository.GetOrdersNew();
    }

//    @Override
//    public List<Order> customerGetOrder() {
//        return crudOrderRepository.findByStatus("New");
//    }

    @Override
    public List<Order> customerGetActiveOrCompleted(int userId, Predicate<Order> status) {
        User user = crudUserRepository.getOne(userId);

        if (user != null ) {
            return crudOrderRepository.findByUser(user)
                    .stream().filter(status)
                    .collect(Collectors.toList());
        }
        return null;
    }

    @Override
    public List<Order> sellerGetActiveOrCompleted(int productId, int userId, Predicate<Order> status) {
        Product product = crudProductRepository.get(productId, userId);

        if (product != null ) {
            return crudOrderRepository.findByProduct(product)
                    .stream().filter(status)
                    .collect(Collectors.toList());
        }
        return null;
    }

    @Override
    public void sellerCreate(Order order, int productId, int userId) {
        Product product = crudProductRepository.get(productId, userId);

        if (order.isNew() && product != null ) {
            order.setPrice(product.getPrice());
            order.setName((product.getTitle().length() >= 63) ? product.getTitle().substring(0, 63) : product.getTitle());
            order.setProduct(product);
            crudOrderRepository.save(order);
        }
    }
}
