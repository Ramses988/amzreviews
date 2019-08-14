package com.amz.reviews.repository.datajpa;

import com.amz.reviews.model.Order;
import com.amz.reviews.model.Product;
import com.amz.reviews.model.User;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Transactional(readOnly = true)
public interface CrudOrderRepository extends JpaRepository<Order, Integer> {

    List<Order> findAllByStatusNotLikeAndProductOrderByDateDesc(String status, Product product);

    List<Order> findAllByStatusEqualsAndProductOrderByDateDesc(String status, Product product);

    List<Order> findAllByStatusNotLikeAndUserOrderByDateDesc(String status, User user);

    List<Order> findAllByStatusEqualsAndUserOrderByDateDesc(String status, User user);

    Optional<Order> findByIdAndUser(Integer id, User user);

    @EntityGraph(attributePaths = "product.images", type = EntityGraph.EntityGraphType.LOAD)
    @Query("SELECT o FROM Order o WHERE o.id=:id AND o.user.id=:userId")
    Order getOrderWithProduct(@Param("id") int id, @Param("userId") int userId);
}