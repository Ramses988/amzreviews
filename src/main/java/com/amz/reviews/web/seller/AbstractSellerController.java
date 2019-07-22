package com.amz.reviews.web.seller;

import com.amz.reviews.model.Product;
import com.amz.reviews.service.ProductService;
import com.amz.reviews.web.SecurityUtil;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public abstract class AbstractSellerController {

    @Autowired
    private ProductService service;

    public List<Product> getAllSeller() {
        int userId = 3;
        return service.getAllSeller(userId);
    }


//    public List<Product> getAll() {
//        int userId = SecurityUtil.authUserId();
//        return service.getAll(userId);
//    }

}
