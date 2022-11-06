<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Registration unsuccessful</title>
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
		<li><a href="index.jsp">Home</a></li>
		<li><a href="Services.jsp">Services</a></li>
		<li><a class="active" href="login.jsp">Login</a></li>
	</ul>
	<br/>
	<br>
	<br>
	<br>
	
	
	
	<!-- MAIN CONTENT -->
	<div>
	
		<div style="font-size: 50px; color: red;">
			<center><b>Something went wrong!</b></center>
		</div>
		
		<div style="font-size: 30px; color: white;">
			<center><b>Please check whether the details you entered are correct.</b></center>
		</div>
		<br>
		<br>
		<br>
		<br>
	
		<center>
		<a href="index.jsp"><button class="homeButton" style="vertical-align:middle; width: 350px;"><span>Go Back Home</span></button></a>
		<a href="CustomerSignup.jsp"><button class="homeButton" style="vertical-align:middle; width: 350px; background: green;"><span>Try Again</span></button></a>
		</center>
		
		
	
	
	</div>


	
	
	
	
	
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