package com.amz.reviews.to;

import org.hibernate.validator.constraints.SafeHtml;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

public class FeedbackTo {

    @NotBlank
    @SafeHtml
    @Size(min = 1, max = 50)
    private String name;

    @NotBlank
    @SafeHtml
    @Email
    private String email;

    @NotBlank
    @SafeHtml
    @Size(min = 1, max = 500)
    private String text;

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

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
