<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Customer Signup</title>
	<link rel = "stylesheet" href = "${pageContext.request.contextPath}/styles/styles.css">
</head>
<body bgcolor=#42d1f5>

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
	
		
		<div class="loginForm" style="width: 50%; background-color: #069cc2; margin: 0 auto;">
			
			<br>
			<br>
			<center>
			<h1 style="color: white;">Customer Signup</h1>
			<form action="signup" method="post">
			
			<table style="width:100%">
					<tr>
						<th>Username (E-mail)</th>
						<td><input type="email" name="username" placeholder="Enter a valid email address" required></td>
					</tr>
					<tr>
						<th>Full Name</th>
						<td><input type="text" name="name" placeholder="Full Name" required></td>
					</tr>
					<tr>
						<th>Address</th>
						<td><input type="text" name="address" placeholder="Address" required></td>
					</tr>
					<tr>
						<th>NIC</th>
						<td><input type="text" name="nic" pattern="[0-9]{9}[V-v]" placeholder="Enter a valid email address" required></td>
					</tr>
					<tr>
						<th>Phone</th>
						<td><input type="text" name="phone" pattern="0[0-9]{9}" placeholder="Enter a valid contact number" required></td>
					</tr>
					<tr>
						<th>Password</th>
						<td><input type="password" name="password" minlength="8" placeholder="Use 8 or more characters" required></td>
					</tr>
				</table>
				
			
			
				 <br>
				 <br>
				<input class="loginFormLoginBtn" type="submit" name="submit" value="Create Account">
				<input class="loginFormResetBtn" type="reset" name="reset" value="Reset">
			</form>
			</center>
			<br>
			<br>
		
		</div>
		
	
	
		
	
	
	
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