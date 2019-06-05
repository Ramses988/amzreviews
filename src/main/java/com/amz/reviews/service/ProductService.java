package com.amz.reviews.service;

import com.amz.reviews.model.Product;

import java.util.List;

public interface ProductService {

    List<Product> getAll(int userId);

    Product get(int id, int userId);

    void delete(int id, int userId);

    void create(Product product, int userId);

    void update(Product product, int userId);

}
