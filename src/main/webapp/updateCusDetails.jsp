<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Update My Profile</title>
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
		<li><a href="login.jsp">Login</a></li>
		<li style="float:right;"><a class="logout" href="CustomerLogin.jsp">Logout</a></li>
	</ul>
	<br/>
	<br>
	<br>
	<br>
	
	
	
	
	
	
	<!-- MAIN CONTENT -->
	<div>

		<%
			String username = request.getParameter("username");
			String name = request.getParameter("name");
			String address = request.getParameter("address");
			String nic = request.getParameter("nic");
			String phone = request.getParameter("phone");
			String password = request.getParameter("password");
		%>
		
		
		
		
		<div class="loginForm" style="width: 50%; background-color: #069cc2; margin: 0 auto;">
			
			<br>
			<br>
			<center>
			<h1 style="color: white;">Update Your Profile</h1>
		
		
			<form action="update" method="post">
			<table style="width:100%">
				<tr>
					<th>Username (E-mail)</th>
					<td><input type="text" name="username" value="<%= username %>" readonly></td>
				</tr>
				<tr>
					<th>Full Name</th>
					<td><input type="text" name="name" value="<%= name %>" required></td>
				</tr>
				<tr>
				<th>Address</th>
				<td><input type="text" name="address" value="<%= address %>" required></td>
			</tr>
			<tr>
				<th>NIC</th>
				<td><input type="text" name="nic" pattern="[0-9]{9}[V-v]" value="<%= nic %>" required></td>
			</tr>
			<tr>
				<th>Phone Number</th>
				<td><input type="text" name="phone" pattern="0[0-9]{9}" value="<%= phone %>" required></td>
			</tr>
			<tr>
				<th>Password</th>
				<td><input type="password" name="password" minlength="8" value="<%= password %>" required></td>
			</tr>		
			</table>
			
			
			
			<br>
			<input class="loginFormLoginBtn" type="submit" name="submit" value="Update My Data">
			<input class="loginFormResetBtn" type="button" name="back" value="Back" onClick="history.back()">
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