package com.amz.reviews.service;

import com.amz.reviews.repository.datajpa.CrudArticleRepository;
import com.amz.reviews.to.ArticleTo;
import com.amz.reviews.util.ValidationUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class ArticlesServiceImpl implements ArticlesService {

    @Autowired
    private CrudArticleRepository repository;

    @Override
    public ArticleTo getArticle(String language, String name) {
        ArticleTo article = null;
        if("ru".equals(language))
            article = repository.getArticleRu(name).orElse(null);
        if("us".equals(language))
            article = repository.getArticleUs(name).orElse(null);

        ValidationUtil.checkNotFound(article);
        return article;
    }

}