package com.amz.reviews.model;

import com.fasterxml.jackson.annotation.JsonProperty;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.time.LocalDateTime;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "users")
public class User extends AbstractNamedEntity {

    private String email;

    @NotBlank
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private String password;

    private boolean enabled;
    private String country;
    private double balance;
    private String payPal;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
    private List<Product> products;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
    private Set<Order> orders;

    @Enumerated(EnumType.STRING)
    @CollectionTable(name="user_roles", joinColumns = @JoinColumn(name = "user_id"))
    @Column(name="role")
    @ElementCollection(fetch = FetchType.EAGER)
    private Set<Role> roles;

    public User() {}

    public User(int id, LocalDateTime date, String name, String email, boolean enabled, String country, double balance) {
        super(id, date, name);
        this.email = email;
        this.enabled = enabled;
        this.country = country;
        this.balance = balance;
    }

    public User(Integer id, LocalDateTime date, String name, String email, boolean enabled, String country, double balance, Role... rolesSet) {
        super(id, date, name);
        this.email = email;
        this.enabled = enabled;
        this.country = country;
        this.balance = balance;
        setRoles(Set.of(rolesSet));
    }

    public String getPayPal() {
        return payPal;
    }

    public void setPayPal(String payPal) {
        this.payPal = payPal;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
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

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
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
