package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class testsectionD
 */
@WebServlet("/testsectionD")
public class testsectionD extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public testsectionD() {
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
		// TODO Auto-generated method stub
		doGet(request, response);
	
		int q1 = Integer.parseInt(request.getParameter("question-1-answers"));
		  
	    int q2 = Integer.parseInt(request.getParameter("question-2-answers"));
			 
	    int  q3 = Integer.parseInt(request.getParameter("question-3-answers"));
	   
	    int q4 = Integer.parseInt(request.getParameter("question-4-answers"));
							  
	    int q5 = Integer.parseInt(request.getParameter("question-5-answers"));
									  
	    int q6 =Integer.parseInt(request.getParameter("question-6-answers"));
											 
	    int q7 =Integer.parseInt(request.getParameter("question-7-answers"));
													 
	    int q8 =Integer.parseInt(request.getParameter("question-8-answers"));
															
	    int q9 =Integer.parseInt(request.getParameter("question-9-answers"));
																	 
	    int q10 =Integer.parseInt(request.getParameter("question-10-answers"));
			
	    int q11 =Integer.parseInt(request.getParameter("question-11-answers"));
		
		int truecount =0;
		
		if(q1==1){truecount++;}
		if(q2==1){truecount++;}
		if(q3==2){truecount++;}
		if(q4==1){truecount++;}
		if(q5==1){truecount++;}
		if(q6==2){truecount++;}
		if(q7==2){truecount++;}
		if(q8==2){truecount++;}
		if(q9==1){truecount++;}
		if(q10==2){truecount++;}
		if(q11==1){truecount++;}
		
		System.out.println("sectionD-->"+truecount);
		
		
		
		HttpSession session = request.getSession();
		   session.setAttribute("SectionD", truecount);
		
		
	   response.sendRedirect("result.jsp");
	
	
	}

}
