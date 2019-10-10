package com.amz.reviews.to;

public class ArticleTo {

    private String headline;
    private String text;

    public ArticleTo() {}

    public ArticleTo(String headline, String text) {
        this.headline = headline;
        this.text = text;
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
