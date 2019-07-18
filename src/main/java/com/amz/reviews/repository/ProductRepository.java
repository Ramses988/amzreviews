package com.amz.reviews.repository;

import com.amz.reviews.model.Product;

import java.util.List;

public interface ProductRepository {

    List<Product> getActiveProducts();

    Product get(int productId);

    void save(Product product);

//    List<Product> getAll(int userId);
//
//    Product get(int id, int userId);
//
//    void delete(int id, int userId);
//
//    void save(Product product, int userId);

}
