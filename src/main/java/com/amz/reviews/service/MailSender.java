package com.amz.reviews.service;

import com.amz.reviews.util.Mail;

public interface MailSender {
    void send(Mail mail);
}