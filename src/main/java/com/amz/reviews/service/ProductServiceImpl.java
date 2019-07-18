package com.amz.reviews.service;

import com.amz.reviews.model.Product;
import com.amz.reviews.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import java.util.List;
import java.util.Objects;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductRepository repository;

    @Override
    public List<Product> getActiveProducts() {
        return repository.getActiveProducts();
    }

    @Override
    public Product get(int productId) {
        Product product = repository.get(productId);

        if(Objects.nonNull(product) && product.getCountOrders() > 0)
            return product;

        // Обработка null
        return null;
    }

    //    @Override
//    public List<Product> getAll(int userId) {
//        return repository.getAll(userId);
//    }
//
//    @Override
//    public Product get(int id, int userId) {
//        return repository.get(id, userId);
//    }
//
//    @Override
//    public void delete(int id, int userId) {
//        repository.delete(id, userId);
//    }
//
//    @Override
//    public void create(Product product, int userId) {
//        repository.save(product, userId);
//    }
//
//    @Override
//    public void update(Product product, int userId) {
//        repository.save(product, userId);
//    }
}
