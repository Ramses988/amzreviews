package com.amz.reviews.service;

import com.amz.reviews.model.AbstractArticlesEntity;

public interface ArticlesService {

    AbstractArticlesEntity getArticle(String language, String name);

}