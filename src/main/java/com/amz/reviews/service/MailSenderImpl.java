package com.amz.reviews.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

@Service
public class MailSenderImpl implements MailSender {

    @Autowired
    private JavaMailSender sender;

    @Override
    public void send(String email, String token) {

        MimeMessagePreparator messagePreparator = mimeMessage -> {
            MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, "UTF-8");

            messageHelper.setFrom("www-75@list.ru");
            messageHelper.setTo(email);
            messageHelper.setSubject("Message for testing");
            messageHelper.setText("<p>http://localhost:8080/confirm-account/"+token+"</p>", true);
        };

        try {
            sender.send(messagePreparator);
        } catch (MailException ex) {

        }
    }
}