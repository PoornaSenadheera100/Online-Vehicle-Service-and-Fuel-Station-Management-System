<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Welcome SPSH Admin</title>
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
		<li><a href="login.jsp">Login</a></li>
		<li style="float:right;"><a class="logout" href="adminLogin.jsp">Logout</a></li>
	</ul>
	
	
	
	
	
	
	
	
	
	
	<!-- MAIN CONTENT -->
	<div>
	
		<div style="color: white;">
			<center><h1>Welcome to SPSH Admin Portal</h1></center>
		</div>
		<br>
		<br>
		<br>
	
		
		
		
		
		
		<div style="float: left; width: 25%;">
			<center>
			<img src="${pageContext.request.contextPath}/images/nobackblank.png" width= 100%/>
			</center>
		</div>
		
	
		
		<div style="float: left; width: 25%;">
			<img src="${pageContext.request.contextPath}/images/fuelManagementAdmin.png" width= 102%/>
			
			<center>
				<form action="fuelManagement" method="post">
					<input class="homeButton" style="vertical-align:middle; width: 300px; font-size: 20px;" type="submit" name="submit" value="Fuel Management">
				</form>
			</center>
			
		</div>
		
		
		
		<div style="float: left; width: 25%;">
			<img src="${pageContext.request.contextPath}/images/spareParts.png" width= 94%/>
			
			<center>
				<form action="spareParts" method="post">
					<input class="homeButton" style="vertical-align:middle; width: 300px; font-size: 20px;" type="submit" name="submit" value="Spare Parts Management">
				</form>
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