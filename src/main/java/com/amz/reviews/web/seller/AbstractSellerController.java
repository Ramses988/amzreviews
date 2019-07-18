package com.amz.reviews.web.seller;

import com.amz.reviews.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class AbstractSellerController {

    @Autowired
    private ProductService service;

//    public List<Product> getAll() {
//        int userId = SecurityUtil.authUserId();
//        return service.getAll(userId);
//    }

}
