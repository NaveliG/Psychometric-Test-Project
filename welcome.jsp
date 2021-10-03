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
		<title>Test</title>

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
		

</head>
<body>
<style>
body {
  background-image: url('images/first.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>
<header id="header" >
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
				        <h2>Welcome To Home</h2>
				      </div>
				      
				        <nav id="nav-menu-container">
				        <ul class="nav-menu">
				         
				         <%String Name=(String) session.getAttribute("Name");  %>
				          <li><a href="info.jsp">Start Test</a></li>
				          
				          <li><a href="index.jsp">LOGOUT</a></li>
				        
				         
				        </ul>
				      </nav> 					      		  
					</div>
				</div>
			</header> 
</body>
</html>