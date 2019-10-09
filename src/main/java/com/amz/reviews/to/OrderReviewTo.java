package com.amz.reviews.to;

import org.hibernate.validator.constraints.SafeHtml;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class OrderReviewTo {
    @NotNull
    private int id;

    @NotBlank
    @Size(max = 500)
    @SafeHtml
    private String reviews;

    public OrderReviewTo(int id, String reviews) {
        this.id = id;
        this.reviews = reviews;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getReviews() {
        return reviews;
    }

    public void setReviews(String reviews) {
        this.reviews = reviews;
    }
}
