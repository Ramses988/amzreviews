package com.amz.reviews.to;

public class OrderReviewTo {
    private int id;
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
