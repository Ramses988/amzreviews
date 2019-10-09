package com.amz.reviews.repository.datajpa;

import com.amz.reviews.model.ArticleUs;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;


public interface CrudArticleUsRepository extends JpaRepository<ArticleUs, Integer> {

    Optional<ArticleUs> findByName(String name);

}