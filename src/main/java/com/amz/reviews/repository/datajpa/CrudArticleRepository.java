package com.amz.reviews.repository.datajpa;

import com.amz.reviews.model.Article;
import com.amz.reviews.to.ArticleTo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Optional;

public interface CrudArticleRepository extends JpaRepository<Article, Integer> {

    @Query("SELECT NEW com.amz.reviews.to.ArticleTo(a.headlineRu, a.textRu) FROM Article a WHERE a.name=:name")
    Optional<ArticleTo> getArticleRu(@Param("name") String name);

    @Query("SELECT NEW com.amz.reviews.to.ArticleTo(a.headlineUs, a.textUS) FROM Article a WHERE a.name=:name")
    Optional<ArticleTo> getArticleUs(@Param("name") String name);

}