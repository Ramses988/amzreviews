package com.amz.reviews.repository.datajpa;

import com.amz.reviews.model.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

@Transactional(readOnly = true)
public interface CrudOrderRepository extends JpaRepository<Order, Integer> {

//    List<Order> findByProduct(Product product);
//
//    List<Order> findByUser(User user);
//
//    @EntityGraph(attributePaths = "product.images", type = EntityGraph.EntityGraphType.LOAD)
//    List<Order> findByNameAndStatus(String name, String status);
//
//    @Query("SELECT DISTINCT new com.amz.reviews.to.OrderTo(o.name, o.price, p.image) FROM Order o JOIN o.product p WHERE o.status='New'")
//    List<OrderTo> GetOrdersNew();
//
////    @EntityGraph(attributePaths = "product", type = EntityGraph.EntityGraphType.LOAD)
////    List<Order> findByStatus(String status);
//
//    @EntityGraph(attributePaths = "product.images", type = EntityGraph.EntityGraphType.LOAD)
//    Optional<Order> findById(Integer id);
//
////    @EntityGraph(attributePaths = "product", type = EntityGraph.EntityGraphType.LOAD)
////    @Query("SELECT o FROM Order o WHERE o.id=:id")
////    Order get(@Param("id") int id);

}
