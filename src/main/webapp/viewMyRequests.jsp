<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>My Requests</title>
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
	
	
		<table width=100%>
			<tr>
				<th>Request ID</th>
				<th>Service Type</th>
				<th>Vehicle Number</th>
				<th>Vehicle Model</th>
				<th>Appointment Date</th>
			</tr>
				
			
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- goes through all the fields of the request form one by one using a for each loop -->
			<c:forEach var="req" items="${serviceRequest}">
				
				<c:set var="serviceID" value="${req.serviceID}"/>
				<c:set var="serviceName" value="${req.serviceName}"/>
				<c:set var="vehicleNum" value="${req.vehicleNum}"/>
				<c:set var="model" value="${req.model}"/>
				<c:set var="date" value="${req.date}"/>
				<c:set var="email" value="${req.email}"/>
			
			
			<tr>
			<!-- prints all those values -->
				<td><center>${req.serviceID}</center></td>
				<td><center>${req.serviceName}</center></td>
				<td><center>${req.vehicleNum}</center></td>
				<td><center>${req.model}</center></td>
				<td><center>${req.date}</center></td>
			
			
			
			
			
				
				
				
				<td>
				<center>
				<!-- url shows which page to navigate to -->
					<c:url value="updateReqDetails.jsp" var="requpdate">
					<!-- shows all parameters that are required to be passed to the updateReqDetails.jsp page -->
						<c:param name="serviceID" value="${serviceID}"/>
						<c:param name="serviceName" value="${serviceName}"/>
						<c:param name="vehicleNum" value="${vehicleNum}"/>
						<c:param name="model" value="${model}"/>
						<c:param name="date" value="${date}"/>
						<c:param name="email" value="${email}"/>
					</c:url>
						
					<a href="${requpdate}">
					<input class="loginFormLoginBtn" type="button" name="update" value="Edit">
					</a>
				</center>
				</td>
				
				
				
				<td>
				<center>
				<!-- url shows where to navigate to -->
					<c:url value="DeleteRequest.jsp" var="reqdelete">
						<c:param name="serviceID" value="${serviceID}"/>
						<c:param name="serviceName" value="${serviceName}"/>
						<c:param name="vehicleNum" value="${vehicleNum}"/>
						<c:param name="model" value="${model}"/>
						<c:param name="date" value="${date}"/>
						<c:param name="email" value="${email}"/>
					</c:url>
					<!-- shows what parameters are passed to the deleterequest.jsp page using the param function -->
					<a href="${reqdelete}">
					<!-- delete button -->
					<input class="loginFormResetBtn" type="button" name="delete" value="Delete">
					</a>
				</center>
				</td>
			</tr>
				
				</c:forEach>
			
			</table>
			
			
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