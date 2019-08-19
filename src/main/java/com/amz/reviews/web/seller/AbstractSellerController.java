package com.amz.reviews.web.seller;

import com.amz.reviews.model.Order;
import com.amz.reviews.model.Product;
import com.amz.reviews.service.OrderService;
import com.amz.reviews.service.ProductService;
import com.amz.reviews.to.OrderTo;
import com.amz.reviews.web.SecurityUtil;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public abstract class AbstractSellerController {

    @Autowired
    private ProductService productService;

    @Autowired
    private OrderService orderService;

    void sellerDeleteProduct(Integer id) {
        int userId = 3;
        productService.sellerDeleteProduct(id, userId);
    }

    Product sellerGetProductWithImages(int id) {
        int userId = 3;
        return productService.sellerGetProductWithImages(id, userId);
    }

    List<Product> sellerGetAllProducts() {
        int userId = 3;
        return productService.sellerGetAllProducts(userId);
    }

    List<Order> sellerGetActiveOrders(int id) {
        int userId = 3;
        return orderService.sellerGetActiveOrders(id, userId);
    }

    List<Order> sellerGetCompletedOrders(int id) {
        int userId = 3;
        return orderService.sellerGetCompletedOrders(id, userId);
    }

    void sellerCreateOrders(OrderTo orderTo) {
        int userId = 3;
        productService.sellerCreateOrders(orderTo, userId);
    }
}
