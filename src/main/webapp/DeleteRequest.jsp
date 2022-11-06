<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Delete Request</title>
	<link rel = "stylesheet" href = "${pageContext.request.contextPath}/styles/styles.css">
</head>
<body id = grad1>
	
	
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
	
	
	
	
	
	
	
	
	
	
	

	<%
		//can pass all the parameters fetched from the request form and is assigned to specific varaiables.
		String serviceID = request.getParameter("serviceID");
		String serviceName = request.getParameter("serviceName");
		String vehicleNum = request.getParameter("vehicleNum");
		String model = request.getParameter("model");
		String date = request.getParameter("date");
		String email = request.getParameter("email");
	%>

	<center>
	<h1 class = "cancel">Cancellation of Service Request</h1>
	</center>

	<form class = "deleteReqForm" action="deleteCusReq" method="post">
	<!-- insert a form to delete the request -->
	<!-- make everything read only, since customer is not allowed to change his request details if he is to delete his request. -->
	<table>
		<tr>
			<td>Service Request ID:</td>
			<td><input type="number" name="serviceID" value="<%= serviceID %>" readonly></td>
			<!-- the value holds the fetched data. -->
		</tr>
		<tr>
			<td>Select Appointment Date:</td>
			<td><input type="date" name="expDate" value="<%= date %>" readonly></td>
			<!-- the value holds the fetched data. -->
		</tr>
		<tr>
			<td>Vehicle Number:</td>
			<td><input type="text" name="vehNum" value="<%= vehicleNum %>" readonly></td>
			<!-- the value holds the fetched data. -->
		</tr>
		<tr>
		<td>Model:</td>
		<td><input type="text" name="model" value="<%= model %>" readonly></td>
		<!-- the value holds the fetched data. -->
	</tr>
	<tr>
		<td>Service Type:</td>
		<td><input name="service" value="<%= serviceName %>" readonly></td>
		<!-- the value holds the fetched data. -->
	</tr>
	<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>" readonly></td>
		<!-- the value holds the fetched data. -->
	</tr>		
	</table>
	<br>
	<input type="submit" name="submit" value="Delete My Request" class = deleteServiceBtn>
	</form>
		
	
	
	
	<center><h2 class = "cursive">FOR OUR VALUABLE CUSTOMERS:</h2><br></center>
	<table border="1" , align= "center">
	<th>
	<img src="${pageContext.request.contextPath}/images/map.jpg" alt= "pack1 picture" height="250",width="250">
	<h2 class = "cursive">Tracking Is Made Easier</h1>
	</p>
	<th>
	
	<th>
	<img src="${pageContext.request.contextPath}/images/wifi.jpg" alt= "pack1 picture" height="250",width="250">
	<h2 class = "cursive">Enjoy Free Wifi</h1>
	</h2>
	</th>
	
	<th>
	<img src="${pageContext.request.contextPath}/images/cafe.jpg" alt= "pack1 picture" height="250",width="250">
	<h2 class = "cursive">Aromatic Cafeteria</h2>
	</th>
	
	</table>
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	
	<!-- slogan of the company -->
	   <center>
		<h1 class = "cursive"> "Get your car screwed properly and have a race with the road" </h1>
		<img src="${pageContext.request.contextPath}/images/quality.jpg" height = "200" width= "200" class = quality>
		</center>
	
	
	
	
	
	
	
	
	
	
	
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