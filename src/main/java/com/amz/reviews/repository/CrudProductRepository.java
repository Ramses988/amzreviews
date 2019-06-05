package com.amz.reviews.repository;


import com.amz.reviews.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Transactional(readOnly = true)
public interface CrudProductRepository extends JpaRepository<Product, Integer> {

    @Query("SELECT p FROM Product p WHERE p.user.id=:userId")
    List<Product> getAll(@Param("userId") int userId);

    @Modifying
    @Transactional
    @Query("DELETE FROM Product p WHERE p.id=:id AND p.user.id=:userId")
    void delete(@Param("id") int id, @Param("userId") int userId);
}
