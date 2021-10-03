package com.utility;

import java.util.Properties;
import java.util.Random;

import javax.mail.*;
import javax.mail.internet.*;

public class SendMailBySite {

	public static void sendEmail(String host, String port, final String userName, final String password,
			String toAddress, int code1) throws AddressException, MessagingException 
	{

		// sets SMTP server properties
		Properties properties = new Properties();
		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port", port);
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");

		// creates a new session with an authenticator
		Authenticator auth = new Authenticator()
		{
			public PasswordAuthentication getPasswordAuthentication() 
			{
				return new PasswordAuthentication(userName, password);
			}
		};

		System.out.println("Properties:  "+properties+" AUTHENTICATOR: "+auth);
		System.out.println("User Name: "+userName+" Pass: "+password);
		Session session = Session.getInstance(properties, auth);
		
		// creates a new e-mail message
		Message msg = new MimeMessage(session);

		msg.setFrom(new InternetAddress(userName));
		InternetAddress[] toAddresses = { new InternetAddress(toAddress) };
		msg.setRecipients(Message.RecipientType.TO, toAddresses);
		msg.setSubject("Verification Code");

		msg.setText("You have been registered successfully. \n Your Verification Code is :: " + code1);

		// sends the e-mail
		Transport.send(msg);

	}

}