package com.amz.reviews.repository;


import com.amz.reviews.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DataJpaProductRepositoryImpl implements ProductRepository {

    @Autowired
    private CrudProductRepository crudProductRepository;

    @Autowired
    private CrudUserRepository crudUserRepository;

    @Override
    public List<Product> getAll(int userId) {
        return crudProductRepository.getAll(userId);
    }

    @Override
    public Product get(int id, int userId) {
        return crudProductRepository.findById(id).filter(product -> product.getUser().getId() == userId).orElse(null);
    }

    @Override
    public void delete(int id, int userId) {
        crudProductRepository.delete(id, userId);
    }

    @Override
    public void save(Product product, int userId) {
        if(!product.isNew() && get(product.getId(), userId) == null)
            return;

        product.setUser(crudUserRepository.getOne(userId));
        crudProductRepository.save(product);
    }
}