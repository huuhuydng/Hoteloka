/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.activation.DataHandler;
import javax.activation.DataSource;

/**
 *
 * @author Hung Bui
 */
public class Email {

    //Email: hungtestpj01@gmail.com
    //Pass: gewl rrvh qasg jqfp
    static final String from = "hungtestpj01@gmail.com";
    static final String pass = "gewl rrvh qasg jqfp";

    public static boolean senEmail(String to, String tieuDe, String noiDung) {

        //Properties : khai bao cac thuoc tinh
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com"); //smtp host
        props.put("mail.smtp.port", "587"); //tls: 587 | ssl: 465
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        // tao 1 authenticator
        Authenticator auth = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, pass);
            }
        };

        //phien lam viec
        Session session = Session.getInstance(props, auth);

        
        
        // tao 1 tin nhan
        MimeMessage msg = new MimeMessage(session);
        try {
            //noi dung type
            msg.addHeader("Content-type", "text/HTML; charset=UTF-8");

            // nguoi gui
            msg.setFrom(from);

            // nguoi nhan
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to, false));

            //tieu de email
            msg.setSubject(tieuDe);

            //quy dinh ngay gui
            msg.setSentDate(new Date());

            //quy dinh email nhan phan hoi
            //msg.setReplyTo(InternetAddress.parse(from, false));
            // Noi dung            
            msg.setContent(noiDung, "text/HTML; charset=UTF-8");

            // gui email
            Transport.send(msg);
            System.out.println("gui mail thanh cong");
            return true;
        } catch (Exception e) {
            System.out.println("loi trong qua trinh gui mail");
            e.printStackTrace();
            return false;
        }
        
    }

//    public static void main(String[] args) {
//        
//        Email.senEmail("hbui110604@gmail.com", "Tieu de" ,"Day la noi dung!");
//    }
}
