package com.amz.reviews.service;

import com.amz.reviews.to.ArticleTo;

public interface ArticlesService {

    ArticleTo getArticle(String language, String name);

}