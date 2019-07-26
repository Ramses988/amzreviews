package com.amz.reviews.service;

import com.amz.reviews.model.Product;
import com.amz.reviews.to.OrderTo;

import java.util.List;

public interface ProductService {

    List<Product> getActiveProducts();

    Product getCustomer(int productId);

    void customerReserve(Integer productId, int userId);

    void CreateProduct(String asin, int userId);

    List<Product> getAllSeller(int userId);

    void createOrdersSeller(OrderTo orderTo, int userId);

    Product getSeller(int productId, int userId);

}
