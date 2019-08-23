package com.amz.reviews.model;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.UUID;

@Entity
@Table(name = "confirm_tokens")
public class ConfirmToken extends AbstractDateEntity {

    @Column(name="confirm_token")
    private String confirmToken;

    @OneToOne(targetEntity = User.class, fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    public ConfirmToken() {}

    public ConfirmToken(User user) {
        super(null, LocalDateTime.now());
        this.confirmToken = UUID.randomUUID().toString();
        this.user = user;
    }

    public String getConfirmToken() {
        return confirmToken;
    }

    public void setConfirmToken(String confirmToken) {
        this.confirmToken = confirmToken;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}