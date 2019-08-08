package com.amz.reviews.repository.datajpa;

import com.amz.reviews.model.Order;
import com.amz.reviews.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional(readOnly = true)
public interface CrudOrderRepository extends JpaRepository<Order, Integer> {

    List<Order> findAllByStatusNotLikeAndProductOrderByDateDesc(String status, Product product);

    List<Order> findAllByStatusEqualsAndProductOrderByDateDesc(String status, Product product);
}
