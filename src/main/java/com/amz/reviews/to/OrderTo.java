package com.amz.reviews.to;

import com.amz.reviews.model.AbstractBaseEntity;
import org.hibernate.validator.constraints.Range;
import org.hibernate.validator.constraints.SafeHtml;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class OrderTo extends AbstractBaseEntity {

    @NotNull
    private Double price;

    @NotBlank
    @Size(min = 3, max = 50)
    @SafeHtml
    private String key;

    @NotNull
    private boolean review;

    @NotNull
    @Range(min = 1, max = 100)
    private Integer count;

    public OrderTo() {}

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

