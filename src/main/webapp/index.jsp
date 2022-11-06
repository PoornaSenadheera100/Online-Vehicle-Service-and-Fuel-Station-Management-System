<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Home Page</title>
	<link rel = "stylesheet" href = "${pageContext.request.contextPath}/styles/styles.css">
</head>
<body bgcolor=#008CBA>




	<!--  HEADER -->
	<div class="headerDiv">
	
		<div style="float: right; width:75%;">
			<center style="color:yellow; font-size: 25px;"><h1>Online Vehicle Service</h1>
				<h1>&</h1>
				<h1>Fuel Station Management</h1></center>
		</div>
	
		<div>
			<img src="${pageContext.request.contextPath}/images/logoNoBack.png" width=25%/>
		</div>
		
	</div>






	<!-- Navigation Bar -->
	<ul>
		<li><a class="active" href="index.jsp">Home</a></li>
		<li><a href="Services.jsp">Services</a></li>
		<li><a href="login.jsp">Login</a></li>
	</ul>
	<br/>
	<br>
	<br>
	<br>
	




















	<!-- MAIN CONTENT -->
	<div>
	
		<div style="float: right; width: 50%;">
			<img src="${pageContext.request.contextPath}/images/excellentServices.png"/>
		</div>
	
		<div style="font-size: 100px; color: white; width: 50%;"
		><b>"Explore our<br> 
		&nbsp excellent vehicle<br> 
		&nbsp services"</b>
		<br>
		<center>
		<a href="Services.jsp"><button class="homeButton" style="vertical-align:middle"><span>Explore</span></button></a>
		</center>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		
		
		
		
		
		
		
		
		
		
		
	
		<div style="font-size: 100px; color: white; width: 50%; float: right;">
		<b>"Sign in to your<br>
		&nbsp account and<br>
		&nbsp make it easy to<br>
		&nbsp manage your<br>
		&nbsp services"</b>
		<br>
		<center>
		<a href="CustomerLogin.jsp"><button class="homeButton" style="vertical-align:middle"><span>Sign-in</span></button></a>
		</center>
		</div>
		
		<div style=" width: 50%;">
			<img src="${pageContext.request.contextPath}/images/login.png"/>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		
		
		
		
		
		
		
		
		
		
		
		
		
		<div style="float: right; width: 50%;">
			<img src="${pageContext.request.contextPath}/images/sign.png"/>
		</div>
	
		<div style="font-size: 100px; color: white; width: 50%;"
		><b>"Don't have an<br>
		&nbsp account yet?<br>
		&nbsp Make a new one<br>
		&nbsp and start over"</b>
		<br>
		<center>
		<a href="CustomerSignup.jsp"><button class="homeButton" style="vertical-align:middle"><span>Create an Account</span></button></a>
		</center>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		<div style="font-size: 100px; color: white; width: 50%; float: right;"
		><b>"Experience the<br>
		&nbsp best fuel<br>
		&nbsp management"</b>
		<br>
		<center>
		<a href="Services.jsp"><button class="homeButton" style="vertical-align:middle"><span>Learn More</span></button></a>
		</center>
		</div>
		
		<div style="width: 50%;">
			<img src="${pageContext.request.contextPath}/images/fuelManagement.png"/>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		
		
		
		
		
		
		
		
		
		
		
		
		
		<div style="float: right; width: 50%;">
			<img src="${pageContext.request.contextPath}/images/spareParts.png" width= 75%/>
		</div>
	
		<div style="font-size: 100px; color: white; width: 50%;"
		><b>"Buy genuine<br>
		&nbsp vehicle parts<br>
		&nbsp and keep your<br>
		&nbsp vehicle<br>
		&nbsp up to date"</b>
		<br>
		<center>
		<a href="Services.jsp"><button class="homeButton" style="vertical-align:middle"><span>Learn More</span></button></a>
		</center>
		</div>
		
		
		
	
		
	
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- FOOTER -->
	<footer class="footer">
		<div class="footer-left">
		<div style ='text-align:left;margin: 30px 30px 30px 60px ;'>
		<img src="${pageContext.request.contextPath}/images/logoNoBackFooter.png" style="width:20%"><br><br>
		<table border="0">
				<tr><td>
					<b>SPSH Services (Pvt) Ltd </b><br>
					45/1,<br>
					35 Staple Street,<br>
					Colombo,<br>
					Sri Lanka.</td>
					
				</tr>
				</table>
		</div>
		</div>
		<div class="footer-right">
		<br>
		<br>
		<br>
		<br>
		<ul style="background: #d6d6c2;" class="menu simple">
		<li>Tel: +94112785609</li><br>
		<li>&nbsp &nbsp &nbsp &nbsp +94778435689</li>
		
		</ul>
		</div>
	</footer>







</body>
</html>