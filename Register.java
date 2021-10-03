package com.controller;

import java.io.IOException;
import java.util.Random;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.utility.SendMailBySite;
import com.dataacesslayer.dao;
import com.model.registration;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String fname = request.getParameter("fname");
        String Lname = request.getParameter("lname"); 		
		String contact = request.getParameter("contact");
		String email = request.getParameter("email");
		String college = request.getParameter("college");
		String city = request.getParameter("city");
		String dateofbirth = request.getParameter("date");
		String password = request.getParameter("password");
		
		
		registration r = new registration();
		
		r.setName(fname);
		r.setLname(Lname);
		r.setContact(contact);
		r.setEmail(email);
		r.setCollege(college);
		r.setCity(city);
		r.setDate(dateofbirth);
		r.setPassword(password);
		
		int id = dao.registerUser(r);
		Random r1 = new Random();
		int max = 999999, min = 100000;
		int code = r1.nextInt((max - min) + max);
		

		try {
			
			HttpSession ses=request.getSession();
			ses.setAttribute("code", code);
			System.out.println("Code: "+code);
			
			SendMailBySite.sendEmail("smtp.gmail.com", "587", "project.varification@gmail.com", "Email@123", email, code);
			
			System.out.println("Seted code:  "+code);
			
			response.sendRedirect("verify.jsp");
		
			
		} catch (MessagingException e) 
		{
			e.printStackTrace();
		}
		
		//response.sendRedirect("index.jsp");
		
		doGet(request, response);
	
	}

}
