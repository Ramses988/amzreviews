package com.amz.reviews.model;

import javax.persistence.*;

@Entity
@Table(name = "payments")
public class Payment extends AbstractNamedEntity {
    private double payment;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;

    public double getPayment() {
        return payment;
    }

    public void setPayment(double payment) {
        this.payment = payment;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
