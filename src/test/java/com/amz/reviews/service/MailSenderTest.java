package com.amz.reviews.service;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class MailSenderTest extends AbstractServiceTest {

    @Autowired
    private MailSender sender;

    @Test
    void sendTest() {
        sender.send("TambovtsevRA@it.mos.ru", "edc6a6cb-e22c-494f-826e-82b9f869c25b");
    }
}
