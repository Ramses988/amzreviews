package com.amz.reviews.repository;

import com.amz.reviews.model.Product;
import com.amz.reviews.model.User;

import java.util.List;

public interface ProductRepository {

    List<Product> getActiveProducts();

    Product getCustomer(int productId);

    void save(Product product);

    List<Product> sellerGetAllProducts(User user);

    Product sellerGetProduct(int productId, User user);

    Product sellerGetProductWithImages(int productId, int userId);

}
