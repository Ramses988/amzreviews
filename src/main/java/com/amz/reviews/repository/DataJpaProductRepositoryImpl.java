package com.amz.reviews.repository;


import com.amz.reviews.model.Product;
import com.amz.reviews.model.User;
import com.amz.reviews.repository.datajpa.CrudProductRepository;
import com.amz.reviews.repository.datajpa.CrudUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DataJpaProductRepositoryImpl implements ProductRepository {

    @Autowired
    private CrudProductRepository crudRepository;

    @Override
    public Product sellerGetProduct(int productId, User user) {
        return crudRepository.findByIdAndUser(productId, user).orElse(null);
    }

    @Override
    public Product getProductWithUser(int productId) {
        return crudRepository.getProductWithUser(productId);
    }

    @Override
    public Product sellerGetProductWithImages(int productId, int userId) {
        return crudRepository.sellerGetProductWithImages(productId, userId);
    }

    @Override
    public List<Product> sellerGetAllProducts(User user) {
        return crudRepository.findAllByUserOrderByDateDesc(user);
    }

    @Override
    public List<Product> getActiveProducts() {
        return crudRepository.findAllByCountOrdersGreaterThanOrderByDateOfChangeDesc(0);
    }

    @Override
    public Product getCustomer(int productId) {
        return crudRepository.findById(productId).orElse(null);
    }

    @Override
    public void save(Product product) {
        crudRepository.save(product);
    }
}