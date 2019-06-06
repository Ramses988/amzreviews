package com.amz.reviews.model;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "users")
public class User extends AbstractNamedEntity {

    private String email;
    private String password;
    private boolean enabled;
    private String country;
    private String city;
    private int balance;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
    private List<Product> products;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
    private Set<Order> orders;

    public User() {}

    public User(int id, LocalDateTime date, String name, String email, String password, boolean enabled, String country, String city, int balance) {
        super(id, date, name);
        this.email = email;
        this.password = password;
        this.enabled = enabled;
        this.country = country;
        this.city = city;
        this.balance = balance;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public int getBalance() {
        return balance;
    }

    public void setBalance(int balance) {
        this.balance = balance;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    public Set<Order> getOrders() {
        return orders;
    }

    public void setOrders(Set<Order> orders) {
        this.orders = orders;
    }
}
