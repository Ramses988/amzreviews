package com.amz.reviews.repository.datajpa;

import com.amz.reviews.model.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CrudImageRepository extends JpaRepository<Image, Integer> {
}
