package com.amz.reviews.service;

import com.amz.reviews.model.AbstractArticlesEntity;
import com.amz.reviews.repository.datajpa.CrudArticleRuRepository;
import com.amz.reviews.repository.datajpa.CrudArticleUsRepository;
import com.amz.reviews.util.ValidationUtil;
import com.amz.reviews.util.exception.NotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Objects;

@Service
@Transactional(readOnly = true)
public class ArticlesServiceImpl implements ArticlesService {

    @Autowired
    private CrudArticleRuRepository repositoryRu;

    @Autowired
    private CrudArticleUsRepository repositoryUs;

    @Override
    public AbstractArticlesEntity getArticle(String language, String name) {
        AbstractArticlesEntity article = null;
        if("ru".equals(language))
            article= repositoryRu.findByName(name).orElse(null);
        if("us".equals(language))
            article= repositoryUs.findByName(name).orElse(null);

        ValidationUtil.checkNotFound(article);
        return article;
    }

}