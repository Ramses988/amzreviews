package com.amz.reviews.model;

import javax.persistence.MappedSuperclass;

@MappedSuperclass
public abstract class AbstractArticlesEntity extends AbstractNamedEntity {

    private String headline;
    private String text;

    public String getHeadline() {
        return headline;
    }

    public void setHeadline(String headline) {
        this.headline = headline;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
