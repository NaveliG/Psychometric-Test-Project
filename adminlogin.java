package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adminlogin
 */

@WebServlet("/adminlogin")

 public class adminlogin extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
   public adminlogin() {
        super();
        
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
     response.getWriter().append("Served at: ").append(request.getContextPath());
	 
    }

	
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);

	
		String username =request.getParameter("username");
		
		String password =  request.getParameter("password");
		
		if(username.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")){
			
		   	response.sendRedirect("adminhome.jsp");
			
		}
		
		else
		
		{
			response.sendRedirect("index.jsp");
		
		}
		
		}

}
