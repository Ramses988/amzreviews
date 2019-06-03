package com.amz.reviews.repository;


import com.amz.reviews.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DataJpaProductRepositoryImpl implements ProductRepository {

    @Autowired
    private CrudProductRepository crudRepository;

    @Override
    public List<Product> getAll() {
        return crudRepository.findAll();
    }
}
