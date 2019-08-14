package com.amz.reviews.repository;


import com.amz.reviews.model.Product;
import com.amz.reviews.repository.datajpa.CrudProductRepository;
import com.amz.reviews.repository.datajpa.CrudUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DataJpaProductRepositoryImpl implements ProductRepository {

    @Autowired
    private CrudProductRepository crudRepository;

    @Autowired
    private CrudUserRepository crudUserRepository;

    @Override
    public Product getSeller(int productId, int userId) {
        return crudRepository.findByIdAndUser(productId, crudUserRepository.getOne(userId)).orElse(null);
    }

    @Override
    public List<Product> getAllSeller(int userId) {
        return crudRepository.findAllByUserOrderByDateDesc(crudUserRepository.getOne(userId));
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