package com.niit.camerafront.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;
@Component
public class MailSending {
	@Autowired
	JavaMailSender javamail;

	
	void sendMyMail(String toEmail,String subject,String Message) throws Exception
	{
		SimpleMailMessage mailMessage=new SimpleMailMessage();
		mailMessage.setTo(toEmail);
		mailMessage.setSubject(subject);
		mailMessage.setText(Message);
		javamail.send(mailMessage);
	}

}
