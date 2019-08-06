package com.amz.reviews.service;

import com.amz.reviews.model.Image;
import com.amz.reviews.repository.datajpa.CrudImageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
public class ImageServiceImpl implements ImageService {

    @Autowired
    private CrudImageRepository repository;

    @Override
    @Transactional
    public void saveAll(List<Image> images) {
        repository.saveAll(images);
    }
}
