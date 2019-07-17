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

    List<Order> findByProduct(Product product);

    List<Order> findByUser(User user);

    @EntityGraph(attributePaths = "product", type = EntityGraph.EntityGraphType.LOAD)
    @Query("SELECT o FROM Order o WHERE o.status='New'")
    List<Order> GetOrdersNew();

//    @EntityGraph(attributePaths = "product", type = EntityGraph.EntityGraphType.LOAD)
//    List<Order> findByStatus(String status);

    @EntityGraph(attributePaths = "product", type = EntityGraph.EntityGraphType.LOAD)
    Optional<Order> findById(Integer id);

//    @EntityGraph(attributePaths = "product", type = EntityGraph.EntityGraphType.LOAD)
//    @Query("SELECT o FROM Order o WHERE o.id=:id")
//    Order get(@Param("id") int id);

}
