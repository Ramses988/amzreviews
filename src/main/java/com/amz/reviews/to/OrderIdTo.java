package com.amz.reviews.to;

public class OrderIdTo {
    private Integer id;
    private String orderId;

    public OrderIdTo(Integer id, String orderId) {
        this.id = id;
        this.orderId = orderId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }
}
