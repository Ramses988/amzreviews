package com.amz.reviews.util;

import java.util.Map;

public class Mail {

    private String email;
    private String title;
    private String template;
    private Map<String, Object> values;

    public Mail(String email, String title, String template, Map<String, Object> values) {
        this.email = email;
        this.title = title;
        this.template = template;
        this.values = values;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTemplate() {
        return template;
    }

    public void setTemplate(String template) {
        this.template = template;
    }

    public Map<String, Object> getValues() {
        return values;
    }

    public void setValues(Map<String, Object> values) {
        this.values = values;
    }
}
