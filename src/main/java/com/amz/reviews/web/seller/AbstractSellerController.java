package com.amz.reviews.web.seller;

import com.amz.reviews.model.Product;
import com.amz.reviews.service.ProductService;
import com.amz.reviews.to.OrderTo;
import com.amz.reviews.web.SecurityUtil;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public abstract class AbstractSellerController {

    @Autowired
    private ProductService service;

    List<Product> sellerGetAllProducts() {
        int userId = 3;
        return service.sellerGetAllProducts(userId);
    }

    void sellerCreateOrders(OrderTo orderTo) {
        int userId = 3;
        service.sellerCreateOrders(orderTo, userId);
    }
}
