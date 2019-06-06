package com.amz.reviews.repository;

import com.amz.reviews.model.Order;
import com.amz.reviews.model.Product;
import com.amz.reviews.repository.datajpa.CrudOrderRepository;
import com.amz.reviews.repository.datajpa.CrudProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.stream.Collectors;


@Repository
public class DataJpaOrderRepositoryImpl implements OrderRepository {

    @Autowired
    private CrudOrderRepository crudOrderRepository;

    @Autowired
    private CrudProductRepository crudProductRepository;


    @Override
    public List<Order> getAll() {
        return crudOrderRepository.findAll();
    }

    @Override
    public List<Order> sellerGetActiveOrder(int productId, int userId) {
        Product product = crudProductRepository.get(productId, userId);

        if (product != null ) {
            return crudOrderRepository.findByProduct(product)
                    .stream().filter(order -> !"Completed".equals(order.getStatus()))
                    .collect(Collectors.toList());
        }
        return null;
    }

    @Override
    public void sellerCreate(Order order, int productId, int userId) {
        Product product = crudProductRepository.get(productId, userId);

        if (order.isNew() && product != null ) {
            order.setPrice(product.getPrice());
            order.setProduct(product);
            crudOrderRepository.save(order);
        }
    }
}
