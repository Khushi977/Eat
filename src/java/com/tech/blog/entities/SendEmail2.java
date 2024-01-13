package com.tech.blog.entities;

import java.util.Properties;
import java.util.Random;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendEmail2 {

    public String getRandom() {
        Random rnd = new Random();
        int number = rnd.nextInt(999999);
        return String.format("%06d", number);
    }

    public boolean sendOTP(User user) {
        boolean success = false;
        String toEmail = user.getUEMAIL().toLowerCase();
        System.out.println("Debug: toEmail = " + toEmail); 
        final String fromEmail = "eatease87@gmail.com"; 
        final String password = "ybbh wpuo klsw tevh"; 

        try {
            Properties properties = new Properties();
            properties.put("mail.smtp.auth", "true");
            properties.put("mail.smtp.starttls.enable", "true");
            properties.put("mail.smtp.host", "smtp.gmail.com"); 
            properties.put("mail.smtp.port", "587");

            // Get the email session
            Session session = Session.getInstance(properties, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(fromEmail, password);
                }
            });

            // Create the email message
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(fromEmail));
//            message.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
            message.setRecipient(javax.mail.internet.MimeMessage.RecipientType.TO, new InternetAddress(toEmail));

            message.setSubject("One-Time Password (OTP)");
            String otp = getRandom();

         
            
            
            
            
             String messageText = "Your OTP: " + otp + "<br/><br/>"+" For any kind of problem, reach us by clicking the given link below:<br/>" +
                    "<a href='http://localhost:8080/EatEase/contactus.jsp'>http://localhost:8080/EatEase/contactus.jsp</a>"+"<br/><br/><br/>"+
                    "THANKS & REGARDS<br/>" +
                    "TEAM EATEASE~";;
            message.setContent(messageText, "text/html");

            // Send the email
            Transport.send(message);
            user.setOTP(otp); 
            success = true;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return success;
    }
}
