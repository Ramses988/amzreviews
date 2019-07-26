package com.amz.reviews.repository;

import com.amz.reviews.model.Product;

import java.util.List;

public interface ProductRepository {

    List<Product> getActiveProducts();

    Product getCustomer(int productId);

    void save(Product product);

    List<Product> getAllSeller(int userId);

    Product getSeller(int productId, int userId);

}
