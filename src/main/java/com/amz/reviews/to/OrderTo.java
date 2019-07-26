package com.amz.reviews.to;

import com.amz.reviews.model.AbstractBaseEntity;

public class OrderTo extends AbstractBaseEntity {

    private Double price;
    private String key;
    private boolean review;
    private Integer count;


    public OrderTo(Integer id, Double price, String key, boolean review, Integer count) {
        super(id);
        this.price = price;
        this.key = key;
        this.review = review;
        this.count = count;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public boolean isReview() {
        return review;
    }

    public void setReview(boolean review) {
        this.review = review;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }
}

