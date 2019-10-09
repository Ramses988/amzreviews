package com.amz.reviews.repository.datajpa;

import com.amz.reviews.model.ArticleRu;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface CrudArticleRuRepository extends JpaRepository<ArticleRu, Integer> {

    Optional<ArticleRu> findByName(String name);

}