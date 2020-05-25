package com.amz.reviews.to;

public class ArticleTo {

    private String description;
    private String keywords;
    private String headline;
    private String text;

    public ArticleTo() {}

    public ArticleTo(String description, String keywords, String headline, String text) {
        this.description = description;
        this.keywords = keywords;
        this.headline = headline;
        this.text = text;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }

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
