package com.amz.reviews.service;

public interface MailSender {
    void send(String email, String token);
}