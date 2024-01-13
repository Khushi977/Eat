package com.tech.blog.entities;

import java.time.format.DateTimeFormatter;
import java.util.Properties;
import java.util.Random;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendEmail3 {

    public String getRandom() {
        Random rnd = new Random();
        

 long number = rnd.nextLong() % 1000000000000L; 

        // If the result is negative, make it positive
        if (number < 0) {
            number *= -1;
        }
        return String.format("%012d", number);
    }

    public boolean sendPaymentDetails(User user) {
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

            message.setSubject("PAYMENT CONFIRMATION");
            String paymentid = getRandom();


      
//doing date formating from yyyy-mm-dd to dd-mm-yyyy
       DateTimeFormatter outputFormatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
    String formattedBookingDate = user.getBOOKINGDATE().format(outputFormatter);      
            

String messageText = "DEAR "+ user.getUNAME().toUpperCase()+" THANK YOU FOR BOOKING APPOINTMENT WITH " + user.getDOCTORNAME().toUpperCase()+
        " FOR A "+user.getSERVICETYPE()+
                    " ON " +  formattedBookingDate + " AT "+ user.getTIMESLOT().toUpperCase()+"<br/><br/>" +
                    "Payment Successfull !!<br/><br/>" +
                    "YOUR PAYMENT ID IS: " + paymentid + "<br/><br/>" +
                    "YOUR "+user.getSERVICETYPE()+" INFORMATION WILL BE SEND TO YOU ONE DAY BEFORE YOUR APPOINTMENT DATE "+
                    "<br/><br/>" +" For any kind of problem, reach us by clicking the given link below:<br/>" +
                    "<a href='http://localhost:8080/EatEase/contactus.jsp'>http://localhost:8080/EatEase/contactus.jsp</a>"+"<br/><br/><br/>"+
                    "THANKS & REGARDS<br/>" +
                    "TEAM EATEASE~";

message.setContent(messageText, "text/html");

            

            // Send the email
            Transport.send(message);
            user.setOTP(paymentid); 
            success = true;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return success;
    }
}
