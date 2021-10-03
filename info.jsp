<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="colorlib">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>Exam-Tech</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="help/css/linearicons.css">
			<link rel="stylesheet" href="help/css/font-awesome.min.css">
			<link rel="stylesheet" href="help/css/bootstrap.css">
			<link rel="stylesheet" href="help/css/magnific-popup.css">
			<link rel="stylesheet" href="help/css/jquery-ui.css">				
			<link rel="stylesheet" href="help/css/nice-select.css">							
			<link rel="stylesheet" href="help/css/animate.min.css">
			<link rel="stylesheet" href="help/css/owl.carousel.css">				
			<link rel="stylesheet" href="help/css/main4.css">
			



<%
String mins = request.getParameter("mins");
if( mins == null ) mins = "1";
  
String secs = request.getParameter("secs");
if( secs == null ) secs = "1";
%>
<script>

var mins = <%=mins%>; // write mins to javascript
var secs = <%=secs%>; // write secs to javascript
function timer()
{
// tic tac
if( --secs == -1 )
{
secs = 59;
--mins;
	
}
 
// leading zero? formatting
if( secs < 10 ) secs = "0" + secs;             
if( mins < 10 ) mins = "0" + parseInt( mins, 10 );
 
// display
document.forma.mins.value = mins; 
document.forma.secs.value = secs;
 
// continue?
if( secs == 0 && mins == 0 ) // time over
{	
window.location.replace("SectionA.jsp");	
document.forma.ok.disabled = true;
document.formb.results.style.display = "block";

}
else // call timer() recursively every 1000 ms == 1 sec
{
window.setTimeout( "timer()", 1000 );

}
}

</script>

</head>
<body>
<style>
body {
  background-image: url('images/111.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>
<header id="header">
				<div class="header-top">
					<div class="container">
			  		<div class="row align-items-center">
			  			<div class="col-lg-6 col-sm-6 col-6 header-top-left">
			  				<ul>
			  					
			  				</ul>			
			  			</div>
			  			<div class="col-lg-6 col-sm-6 col-6 header-top-right">
							<div class="header-social">
								<a href="#"><i class="fa fa-facebook"></i></a>
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-dribbble"></i></a>
								<a href="#"><i class="fa fa-behance"></i></a>
							</div>
			  			</div>
			  		</div>			  					
					</div>
				</div>
				<div class="container main-menu">
					<div class="row align-items-center justify-content-between d-flex">
				      <div id="logo">
				        <a href="index.html"><img src="img/logo.png" alt="" title="" /></a>
				        <form action="userlogin.jsp" name="forma"><br>
<center><p style="color: #efe8e8; margin-left: 259px; font-size: 30px; margin-top: -48px;" ></center> Time Remaining : 
<input type="text" name="mins" size="1" style="font-size:15px; width:45px; height: 25px; border-radius:3px; background-color: black; color: white;">:<input type="text" name="secs" size="1"	style="font-size:15px;  width:45px; height: 25px;border-radius:3px; background-color: black; color: white;">
</p>
</form>
				      </div>
				      <nav id="nav-menu-container">
				        <ul class="nav-menu">
				          <li><a href="login">BACK</a></li>
				         <!--  <li><a href="#">LOGOUT</a></li> -->
				         
				        </ul>
				      </nav> 					      		  
					</div>
				</div>
			</header> 
	<script>
<!--
timer(); // call timer() after page is loaded
//-->
 </script>
<!-- <div  style="width: 1363px;background-color:#B3B6B7; margin-left:-7px; height: 800px;" > -->
 
 <br><br><br><br><br><br><br><br>
<div style="width: 800px;background-color:white; margin-left:-7px; height: 600px; margin-left: 260px; "><br><br><br>
<input type="submit" value="Test Direction" style=" margin-left: 310px; width: 160px; height: 45px; margin-top: -106px; background-color: #00ffc1b0; border-radius:20px; font-size:15px;">
<p style="margin-top:-50px; margin-left: 10px; color: black; font-size:18px;"> Your test will be start in few minute . Please go through the instructions carefully will also be accessible using the 'HELP' button the whole duration of the Exam.
 Your Exam ID for this exam is 12345 Please note it down at a secure place for future reference.</p>

<div style=" height:2px; width: 780px; background-color: black; margin-left:10px;"></div>
<p style="font-size:18px; margin-left: 12px; font-style:bold; color: black; font-size:18px;"><b>Instructions:</b> </br></br>

1.Each module has a fixed number of questions and an alloted time. the time remaining for the module is shown on the right cover of the screen throughout the exam.</br></br>
2.You may tack an emergency break at any other time.however time will not stop in such cases.</br></br>
3.Be at your seat until the completion of the exam.Don't talk and do not indulge any cheating. your condiature may be canceled for any infractions.</br></br>
4.In case of any problem with the question please. note down it for share it with us with email after you finish your test.</br>

</p>

<p style="font-size:18px; margin-left: 12px; font-style:bold; color: black; font-size:18px;"><b>How To Answer The Question:</b></br></br>
1.Each question has direction on how to answer the question.</br></br>
2.You can chose the appropriate answer by clicking the check-box on it.</br></br>
3.Once you have completed the exam. press the submit button. </br></br>



</p>

</div>
<form action="SectionA.jsp" method="Post">

<br><br><input type="submit" value="Proceed" style="margin-left: 550px; width: 160px; height: 45px; margin-top: -20px; background-color: #0069ff9c; border-radius:20px; color: black; font-size:15px;">
 </form>
 </div>
 
 

</body>
</html>