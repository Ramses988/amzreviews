package com.amz.reviews.model;

import javax.persistence.MappedSuperclass;

@MappedSuperclass
public class AbstractArticleEntity extends AbstractNamedEntity {
    private String text;

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
