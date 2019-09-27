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
            messageHelper.setText("<table align=\"center\" bgcolor=\"#005a95\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"5a0f0e86582ab26d75d6373356b89ec5wrap\" width=\"100%\" style=\"border-collapse:collapse !important;display:table;font-family:'helvetica' , 'arial' , sans-serif !important;min-width:100%;table-layout:fixed !important\"><tbody><tr><td align=\"center\" bgcolor=\"#005a95\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important\">\n" +
                    "        \n" +
                    "        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"bfbb4df934deef6f0c5289c58d6c6d18w640\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;max-width:640px;width:100%\"><tbody><tr><td align=\"center\" bgcolor=\"#005a95\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important\">\n" +
                    "        \n" +
                    "        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"6e06ff1733c2621921caae9b66f88cb4w580\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;max-width:580px;width:100%\"><tbody><tr><td height=\"50\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:50px;line-height:50px\">&nbsp;</td></tr><tr><td style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important\"><table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"43080807ee6c5f21a38f85be4e8da4fcwFull\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;width:440px\"><tbody><tr><td align=\"center\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important\">\n" +
                    "        <h1 style=\"color:#fff\">AMZ Reviews intense</h1>\n" +
                    "        </td></tr></tbody></table></td></tr><tr><td height=\"50\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:50px;line-height:50px\">&nbsp;</td></tr></tbody></table>\n" +
                    "        \n" +
                    "        </td></tr></tbody></table>\n" +
                    "        \n" +
                    "        </td></tr></tbody></table>\n" +
                    "<div>\n" +
                    "        <table align=\"center\" bgcolor=\"#005a95\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"5a0f0e86582ab26d75d6373356b89ec5wrap\" width=\"100%\" style=\"border-collapse:collapse !important;display:table;font-family:'helvetica' , 'arial' , sans-serif !important;min-width:100%;table-layout:fixed !important\"><tbody><tr><td align=\"center\" bgcolor=\"#005a95\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important\">\n" +
                    "        \n" +
                    "        <table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"bfbb4df934deef6f0c5289c58d6c6d18w640\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;max-width:640px;width:100%\"><tbody><tr><td height=\"20\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:20px;line-height:20px\">&nbsp;</td></tr><tr><td align=\"center\" bgcolor=\"#ffffff\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important\">\n" +
                    "        \n" +
                    "        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"6e06ff1733c2621921caae9b66f88cb4w580\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;max-width:580px;width:100%\"><tbody><tr><td height=\"20\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:20px;line-height:20px\">&nbsp;</td></tr><tr><td align=\"left\" style=\"border-collapse:collapse !important;color:#000000;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:34px;font-weight:bold;line-height:39px\">You are no longer advertising with sponsored ads</td></tr><tr><td height=\"15\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:15px;line-height:15px\">&nbsp;</td></tr></tbody></table>\n" +
                    "        \n" +
                    "        </td></tr></tbody></table>\n" +
                    "        \n" +
                    "        </td></tr></tbody></table>\n" +
                    "        </div>\n" +
                    "<div>\n" +
                    "        <table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"5a0f0e86582ab26d75d6373356b89ec5wrap\" width=\"100%\" style=\"border-collapse:collapse !important;display:table;font-family:'helvetica' , 'arial' , sans-serif !important;min-width:100%;table-layout:fixed !important\"><tbody><tr><td align=\"center\" bgcolor=\"#ffffff\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important\">\n" +
                    "        \n" +
                    "        <table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"bfbb4df934deef6f0c5289c58d6c6d18w640\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;max-width:640px;width:100%\"><tbody><tr><td align=\"center\" bgcolor=\"#ffffff\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important\">\n" +
                    "        \n" +
                    "        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"6e06ff1733c2621921caae9b66f88cb4w580\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;max-width:580px;width:100%\"><tbody><tr><td align=\"left\" style=\"border-collapse:collapse !important;color:#000000;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:22px;line-height:27px\"></td></tr><tr><td height=\"20\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:20px;line-height:20px\">&nbsp;</td></tr><tr><td height=\"10\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:10px;line-height:10px\">&nbsp;</td></tr></tbody></table>\n" +
                    "        \n" +
                    "        </td></tr></tbody></table>\n" +
                    "        \n" +
                    "        </td></tr></tbody></table>\n" +
                    "        </div>\n" +
                    "<div>\n" +
                    "        <table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"5a0f0e86582ab26d75d6373356b89ec5wrap\" width=\"100%\" style=\"border-collapse:collapse !important;display:table;font-family:'helvetica' , 'arial' , sans-serif !important;min-width:100%;table-layout:fixed !important\"><tbody><tr><td align=\"center\" bgcolor=\"#ffffff\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important\">\n" +
                    "        \n" +
                    "        <table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"bfbb4df934deef6f0c5289c58d6c6d18w640\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;max-width:640px;width:100%\"><tbody><tr><td align=\"center\" bgcolor=\"#ffffff\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important\">\n" +
                    "        \n" +
                    "        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"6e06ff1733c2621921caae9b66f88cb4w580\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;max-width:580px;width:100%\"><tbody><tr><td height=\"15\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:15px;line-height:15px\">&nbsp;</td></tr><tr><td align=\"left\" class=\"421a32b6ec2aa4175239ba037934447ambtext\" style=\"border-collapse:collapse !important;color:#000000;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:16px;line-height:21px\">\n" +
                    "            \n" +
                    "           \n" +
                    "            \n" +
                    "            You've recently stopped advertising with sponsored ads for MagicWater.\n" +
                    "            \n" +
                    "            \n" +
                    "              \n" +
                    "            \n" +
                    "            This means you’re no longer surfacing ads to customers, and may be missing out on an opportunity to expand your sales.<br><br>\n" +
                    "            Didn’t mean for this to happen? Please visit the Campaign Manager to restart your campaigns.\n" +
                    "        You can ensure your campaigns don’t stop running by adding a no-end-date to your ads.\n" +
                    "            </td></tr><tr><td height=\"20\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:20px;line-height:20px\">&nbsp;</td></tr><tr><td align=\"left\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important\">\n" +
                    "        \n" +
                    "        \n" +
                    "        \n" +
                    "        <table align=\"left\" bgcolor=\"#ff9900\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"43080807ee6c5f21a38f85be4e8da4fcwFull\" style=\"border-collapse:collapse !important;border-radius:6px;font-family:'helvetica' , 'arial' , sans-serif !important\"><tbody><tr><td height=\"15\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:15px;line-height:15px\">&nbsp;</td></tr><tr><td align=\"center\" class=\"421a32b6ec2aa4175239ba037934447ambtext\" style=\"border-collapse:collapse !important;color:#ffffff;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:16px;line-height:21px;padding:0px 20px 0px 20px;text-align:center\"><a href=\"https://www.amazon.com\" style=\"color:#ffffff;text-decoration:none\" data-orig-href=\"https://www.amazon.com\" class=\"daria-goto-anchor\" target=\"_blank\" rel=\"noopener noreferrer\"><b>I want to advertise</b></a></td></tr><tr><td height=\"15\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:15px;line-height:15px\">&nbsp;</td></tr></tbody></table>\n" +
                    "        \n" +
                    "        </td></tr><tr><td height=\"15\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:15px;line-height:15px\">&nbsp;</td></tr></tbody></table>\n" +
                    "        \n" +
                    "        </td></tr></tbody></table>\n" +
                    "        \n" +
                    "        </td></tr></tbody></table>\n" +
                    "        </div>\n" +
                    "<div>\n" +
                    "        <table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"5a0f0e86582ab26d75d6373356b89ec5wrap\" width=\"100%\" style=\"border-collapse:collapse !important;display:table;font-family:'helvetica' , 'arial' , sans-serif !important;min-width:100%;table-layout:fixed !important\"><tbody><tr><td align=\"center\" bgcolor=\"#ffffff\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important\">\n" +
                    "        \n" +
                    "        <table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"bfbb4df934deef6f0c5289c58d6c6d18w640\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;max-width:640px;width:100%\"><tbody><tr><td align=\"center\" bgcolor=\"#ffffff\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important\">\n" +
                    "        \n" +
                    "        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"6e06ff1733c2621921caae9b66f88cb4w580\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;max-width:580px;width:100%\"><tbody><tr><td height=\"15\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:15px;line-height:15px\">&nbsp;</td></tr><tr><td align=\"left\" class=\"421a32b6ec2aa4175239ba037934447ambtext\" style=\"border-collapse:collapse !important;color:#000000;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:16px;line-height:21px\">        \n" +
                    "                       If you do not want to advertise, please let us know why by providing feedback                \n" +
                    "              </td></tr><tr><td height=\"20\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:20px;line-height:20px\">&nbsp;</td></tr></tbody></table>        \n" +
                    "        </td></tr></tbody></table>        \n" +
                    "        </td></tr></tbody></table>\n" +
                    "        </div>\n" +
                    "        <div>\n" +
                    "        <table align=\"center\" bgcolor=\"#f2f2f3\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"5a0f0e86582ab26d75d6373356b89ec5wrap\" width=\"100%\" style=\"border-collapse:collapse !important;display:table;font-family:'helvetica' , 'arial' , sans-serif !important;min-width:100%;table-layout:fixed !important\"><tbody><tr><td align=\"center\" bgcolor=\"#f2f2f3\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important\">\n" +
                    "        \n" +
                    "        <table align=\"center\" bgcolor=\"#f2f2f3\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"bfbb4df934deef6f0c5289c58d6c6d18w640\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;max-width:640px;width:100%\"><tbody><tr><td align=\"center\" bgcolor=\"#f2f2f3\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important\">\n" +
                    "        \n" +
                    "        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"6e06ff1733c2621921caae9b66f88cb4w580\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;max-width:580px;width:100%\"><tbody><tr><td height=\"10\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:10px;line-height:10px\">&nbsp;</td></tr><tr><td align=\"left\" style=\"border-collapse:collapse !important;color:#000000;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:9px;line-height:18px\"> \n" +
                    "        \n" +
                    "        \n" +
                    "        </td></tr><tr><td align=\"left\" style=\"border-collapse:collapse !important;color:#000000;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:11px;line-height:18px\"> \n" +
                    "        \n" +
                    "        </td></tr><tr><td height=\"10\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:10px;line-height:10px\">&nbsp;</td></tr><tr><td align=\"left\" style=\"border-collapse:collapse !important;color:#000000;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:11px;line-height:18px\"> \n" +
                    "        \n" +
                    "        \n" +
                    "        \n" +
                    "        \n" +
                    "            <p style=\"margin-bottom:0 !important;margin-left:0 !important;margin-right:0 !important;margin-top:0 !important;padding-bottom:0 !important;padding-left:0 !important;padding-right:0 !important;padding-top:0 !important\">© 2006-\n" +
                    "            2019, Inc. or its affiliates. All rights reserved. Amazon, Amazon Advertising, Amazon.com, and the Amazon logo are registered trademarks of Amazon.com, Inc. or its affiliates. Amazon.com, 410 Terry Avenue, Seattle, WA <span class=\"wmi-callto\">98109-5210</span>.\n" +
                    "        <br>\n" +
                    "        We hope you found this message to be useful. However, if you'd rather not receive future e-mails of this sort from Amazon Services, please.\n" +
                    "        </p>\n" +
                    "\t\t</td></tr><tr><td height=\"20\" style=\"border-collapse:collapse !important;font-family:'helvetica' , 'arial' , sans-serif !important;font-size:20px;line-height:20px\">&nbsp;</td></tr></tbody></table>\n" +
                    "        \n" +
                    "        </td></tr></tbody></table>\n" +
                    "        \n" +
                    "        </td></tr></tbody></table>\n" +
                    "        </div>       ", true);
//            messageHelper.setText(token, true);
        };

        try {
            sender.send(messagePreparator);
        } catch (MailException ex) {

        }
    }
}