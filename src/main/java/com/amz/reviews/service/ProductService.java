package com.amz.reviews.service;

import com.amz.reviews.model.Product;
import com.amz.reviews.to.OrderTo;
import com.amz.reviews.to.ProductTo;

import java.util.List;

public interface ProductService {

    /* Admins methods */

    Product adminAddProduct(ProductTo productTo);

    void adminChangeOwner(int product, int user);

    /* Customers methods */

    void customerReserve(String productId, int userId);

    Product customerGetProduct(int productId);

    List<Product> customerGetActiveProducts();


    /* Sellers methods */

    Product sellerGetProduct(int productId, int userId);

    Product sellerGetProductWithImages(int productId, int userId);

    List<Product> sellerGetAllProducts(int userId);

    void sellerCreateProduct(String asin, int userId);

    void sellerCreateOrders(OrderTo orderTo, int userId);

    void sellerDeleteProduct(Integer id, int userId);

}
