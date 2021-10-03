<%@page import="com.Algorithm.svmdata"%>
<%@page import="com.model.arfffile"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
  background-image: url('images/result.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>
<%

int sectionA = (Integer)session.getAttribute("SectionA");
/* int sectionB = (Integer)session.getAttribute("SectionB");
int sectionC = (Integer)session.getAttribute("SectionC"); */
int sectionD = (Integer)session.getAttribute("SectionD"); 

  arfffile a = new arfffile();
  
  a.setSectionA(sectionA);
/*   a.setSectionB(sectionB);
  a.setSectionC(sectionC); */
  a.setSectionD(sectionD); 

         String finalstatus = svmdata.svm(a); 

%>
<% 
//String Name =session.getAttribute(Name);
String Name=(String)session.getAttribute("Name"); 
out.println(Name);
//session.setAttribute("Name",Name); 
%> 
 <center><h2>
  SectionA Result <%=sectionA %><br>
  
  <%-- SectionB Result <%=sectionB %><br>
   SectionC Result <%=sectionC %><br>
   --%>SectionB Result <%=sectionD %><br> 
 </h2></center>  
 
<center> <h1>Final Result: <%=finalstatus %></h1> </center> 
<%-- <%
response.setContentType("text/html");  
PrintWriter o = response.getWriter();  
String str=finalstatus.toString();
if(str.startsWith("f"))
	{
	out.print("<h3><center>");
	out.print("<a href=Suggestions.jsp>Suggestions</a>"); 
	
	}
 %>  --%>
<%--  <%session.setAttribute("Status",str); %> --%>
 <a href="index.jsp">Logout</a>
</body>
</html>