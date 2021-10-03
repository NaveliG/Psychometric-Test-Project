package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dataacesslayer.dao;
import com.model.registration;

/**
 * Servlet implementation class verification
 */
@WebServlet("/Verification")
public class Verification extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String vcode = request.getParameter("otp");
		int vrcode = Integer.parseInt(vcode);
		
		HttpSession ses=request.getSession();
		int value=(int) ses.getAttribute("code");
		
		System.out.println("value by form: "+vrcode+" value by setter "+value);
		if (vrcode == value ) 
		{
			
			response.sendRedirect("index.jsp");

		} else {
			
			response.sendRedirect("verify.jsp");
		}

	}

}
