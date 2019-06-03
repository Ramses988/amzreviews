package com.amz.reviews.repository;

import com.amz.reviews.model.Product;

import java.util.List;

public interface ProductRepository {

    List<Product> getAll();

}
