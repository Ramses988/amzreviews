package com.amz.reviews.service;

import com.amz.reviews.model.Image;
import com.amz.reviews.repository.datajpa.CrudImageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ImageServiceImpl implements ImageService {

    @Autowired
    private CrudImageRepository repository;

    @Override
    public void saveAll(List<Image> images) {
        repository.saveAll(images);
    }
}
