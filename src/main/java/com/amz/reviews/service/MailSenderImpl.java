package com.amz.reviews.service;

import com.amz.reviews.util.Mail;
import freemarker.template.Configuration;
import freemarker.template.Template;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;

import javax.servlet.ServletContext;

@Service
public class MailSenderImpl implements MailSender {

    @Autowired
    private JavaMailSender sender;

    @Autowired
    ServletContext context;

    private final Configuration cfg = new Configuration(Configuration.VERSION_2_3_29);

    @Override
    public void send(Mail mail) {
        try {
            cfg.setServletContextForTemplateLoading(context, "WEB-INF/jsp/templates");
            cfg.setDefaultEncoding("UTF-8");
            Template template = cfg.getTemplate(mail.getTemplate()+".ftl");
            String message = FreeMarkerTemplateUtils.processTemplateIntoString(template, mail.getValues());

            MimeMessagePreparator messagePreparator = mimeMessage -> {
                MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, "UTF-8");

                messageHelper.setFrom("noreply@amzreviews.biz", "Amz Reviews");
                messageHelper.setTo(mail.getEmail());
                messageHelper.setSubject(mail.getTitle());
                messageHelper.setText(message, true);
            };

            sender.send(messagePreparator);

        } catch (Exception ex) {
            // Логирование
            System.out.println(ex.getMessage());
        }
    }
}