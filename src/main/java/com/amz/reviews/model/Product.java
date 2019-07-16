package com.amz.reviews.model;


import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "products")
public class Product extends AbstractNamedEntity {

    private String asin;
    private String title;
    private double price;
    private String description;

    @Column(name = "active_orders")
    private int activeOrders;

    @Column(name = "completed_orders")
    private int completedOrders;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    private User user;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
    private Set<Order> orders;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "product")
    private List<Image> images;

    public Product() {}

    public Product(Integer id, LocalDateTime date, String name, String asin, String title, double price,
                   String description, int activeOrders, int completedOrders) {
        super(id, date, name);
        this.asin = asin;
        this.title = title;
        this.price = price;
        this.description = description;
        this.activeOrders = activeOrders;
        this.completedOrders = completedOrders;
    }

    public String getAsin() {
        return asin;
    }

    public void setAsin(String asin) {
        this.asin = asin;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getActiveOrders() {
        return activeOrders;
    }

    public void setActiveOrders(int activeOrders) {
        this.activeOrders = activeOrders;
    }

    public int getCompletedOrders() {
        return completedOrders;
    }

    public void setCompletedOrders(int completedOrders) {
        this.completedOrders = completedOrders;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Set<Order> getOrders() {
        return orders;
    }

    public void setOrders(Set<Order> orders) {
        this.orders = orders;
    }

    public List<Image> getImages() {
        return images;
    }

    public void setImages(List<Image> images) {
        this.images = images;
    }
}
