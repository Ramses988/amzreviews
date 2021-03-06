package com.amz.reviews.model;

import com.amz.reviews.util.exception.ApplicationException;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "orders")
public class Order extends AbstractNamedEntity {

    private double price;
    private String status;
    private boolean payment;
    private String reviews;
    private String key;
    private boolean refund;

    @Column(name = "review_enable")
    private boolean reviewEnable;

    @Column(name = "order_id")
    private String orderId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    @OnDelete(action = OnDeleteAction.CASCADE)
    private User user;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "product_id", nullable = false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    private Product product;

    public Order() {}

    public Order(Integer id, LocalDateTime date, String name, double price, String status, String key, boolean reviewEnable, User user, Product product, boolean payment) {
        super(id, date, name);
        this.price = price;
        this.status = status;
        this.key = key;
        this.user = user;
        this.product = product;
        this.reviewEnable = reviewEnable;
        this.payment = payment;
        this.refund = false;
    }

    public boolean isRefund() {
        return refund;
    }

    public void setRefund(boolean refund) {
        this.refund = refund;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public boolean isPayment() {
        return payment;
    }

    public void setPayment(boolean payment) {
        this.payment = payment;
    }

    public String getReviews() {
        return reviews;
    }

    public void setReviews(String reviews) {
        String tmp = reviews.trim();
        if (tmp.startsWith("https://www.amazon.com/") || tmp.startsWith("https://amazon.com/"))
            this.reviews = tmp;
        else
            throw new ApplicationException("Неверный формат. Ссылка должна указывать на Amazon");
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public boolean isReviewEnable() {
        return reviewEnable;
    }

    public void setReviewEnable(boolean reviewEnable) {
        this.reviewEnable = reviewEnable;
    }
}
