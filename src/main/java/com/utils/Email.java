package com.utils;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

/**
 * Created by dell on 2019/3/6.
 */
public class Email {

    public static void main(String[] args) throws Exception {
        SendEmailChangePassword("956840224@qq.com", "ange");
    }

    public static void SendEmailChangePassword(String receiver, String username) throws MessagingException, Exception{
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        String date = df.format(new Date());

        String url = "localhost:8080/user/toChangePassword?username=" + username + "&hashCode=" + JavaSHA.bouncyCastleSHA256(date + " " + username);

        String messageContent = "<div style=\"background-color:#DEF7F7;color:#000;font-size:17px;line-height:20px;height:20px;min-height:410px;width:70%;min-width:630px;margin:20px auto;text-align:left;text-indent:50px;padding:5px;border-radius:6px;\">\n" +
                "<div style=\"margin-top:20px;text-align:center;\"><img src=\"javascript:;\"></div>\n" +
                "<p style=\"margin-bottom:20px;\"><b>" + username + "</b>，您好：</p>\n" +
                "<p style=\"text-indent:90px;\">感谢您注册（FlyingDutchman航班大数据平台），请点击以下链接修改您的密码（该链接有效期为24小时）：</p>\n" +
                "<p><a href=\"" + url + "\" style=\"color:#0C9DD2;\" rel=\"noopener\" target=\"_blank\">" + url + "</a></p>\n" +
                "<p style=\"text-indent:90px;\">如果以上链接无法访问，请将该链接复制并粘贴至浏览器地址栏中直接访问。</p>\n" +
                "<p style=\"text-indent:90px;\">如果此操作非您本人发起，请忽略此邮件。</p>\n" +
                "<p style=\"text-indent:90px;\">如有其他疑问，请联系 <a href=\"mailto:ange_lalala@163.com\" rel=\"noopener\" target=\"_blank\">ange_lalala@<wbr>163.com</a> 或 <span style=\"border-bottom:1px dashed #ccc;z-index:1\" t=\"7\" onclick=\"return false;\" data=\"400-820-8820\">400-820-8820</span></p>\n" +
                "</div>";

        // 属性对象
        Properties properties = new  Properties();
        // 开启debug调试  ，打印信息
        properties.setProperty("mail.debug", "true");
        // 发送服务器需要身份验证
        properties.setProperty("mail.smtp.auth", "true");
        // 发送服务器端口，可以不设置，默认是25
        properties.setProperty("mail.smtp.port", "25");
        // 发送邮件协议名称
        properties.setProperty("mail.transport.protocol", "smtp");
        // 设置邮件服务器主机名
        properties.setProperty("mail.host", "smtp.163.com");
        // 环境信息
        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                // 在session中设置账户信息，Transport发送邮件时会使用
                return new PasswordAuthentication( "ange_lalala@163.com", "ange233");
            }
        });

        // 创建邮件对象
        Message message = new MimeMessage(session);
        //设置主题
        message.setSubject("中文主题");
        // 发件人
        message.setFrom(new InternetAddress("ange_lalala@163.com"));
        // 多个收件人
        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(receiver));
        // 抄送人
        message.setRecipient(Message.RecipientType.CC, new InternetAddress("3487670982@qq.com"));
        // 暗送人
        message.setRecipient(Message.RecipientType.BCC, new InternetAddress("3487670982@qq.com"));
        // HTML内容
//        message.setContent("<span style='color:red'>中文呵呵</span>","text/html;charset=utf-8");
        message.setContent(messageContent,"text/html;charset=utf-8");

        // 连接邮件服务器、发送邮件、关闭连接，全做了
        Transport.send(message);
    }
}
