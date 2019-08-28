package com.amz.reviews.to;

import com.amz.reviews.model.AbstractBaseEntity;
import org.hibernate.validator.constraints.SafeHtml;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

public class UserRegisterTo extends AbstractBaseEntity {

    @NotBlank
    @Size(min = 3, max = 50)
    @SafeHtml
    private String name;

    @Email
    @NotBlank
    @Size(max = 100)
    @SafeHtml
    private String email;

    @NotBlank
    @Size(min = 7, max = 15)
    private String password;

    @NotBlank
    @Size(min = 7, max = 15)
    private String confirmPassword;

    private String roles;
    private String country;

    public UserRegisterTo() {}

    public UserRegisterTo(Integer id, String name, String email, String password, String confirmPassword, String roles, String country) {
        super(id);
        this.name = name;
        this.email = email;
        this.password = password;
        this.confirmPassword = confirmPassword;
        this.roles = roles;
        this.country = country;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getRoles() {
        return roles;
    }

    public void setRoles(String roles) {
        this.roles = roles;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}
