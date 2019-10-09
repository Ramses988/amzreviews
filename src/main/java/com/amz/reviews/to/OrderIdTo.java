package com.amz.reviews.to;

import org.hibernate.validator.constraints.SafeHtml;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class OrderIdTo {
    @NotNull
    private Integer id;

    @NotBlank
    @Size(max = 100)
    @SafeHtml
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
