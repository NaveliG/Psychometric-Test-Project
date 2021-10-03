package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class testsectionA
 */
@WebServlet("/testsectionA")
public class testsectionA extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public testsectionA() {
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
		
	     int q12 =Integer.parseInt(request.getParameter("question-12-answers"));
	     
	     int q13 =Integer.parseInt(request.getParameter("question-13-answers"));
	     
	     int q14 =Integer.parseInt(request.getParameter("question-14-answers"));
	     
	     int q15 =Integer.parseInt(request.getParameter("question-15-answers"));
	     
	     
	     int truecount =0;
	     int falsecount = 0;
	     
	     if(q1==2){truecount++;}
	     if(q2==1){truecount++;}
	     if(q3==2){truecount++;}
	     if(q4==1){truecount++;}
	     if(q5==2){truecount++;}
	     if(q6==2){truecount++;}
	     if(q7==1){truecount++;}
	     if(q8==1){truecount++;}
	     if(q9==2){truecount++;}
	     if(q10==2){truecount++;}
	     if(q11==1){truecount++;}
	     if(q12==1){truecount++;}
	     if(q13==1){truecount++;}
	     if(q14==1){truecount++;}
	     if(q15==1){truecount++;}
	     
	      System.out.println("SectionA-->"+truecount);
	     
	    HttpSession session = request.getSession();
	    session.setAttribute("SectionA", truecount);
	     
	     response.sendRedirect("QuestionSectionD.jsp");
	
	}

}
