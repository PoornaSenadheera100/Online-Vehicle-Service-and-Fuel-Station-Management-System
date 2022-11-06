<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Welcome to SPSH</title>
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
	
	
	
	
	<!-- MAIN CONTENT -->
	<div>

		<div style="width: 75%; float: left;">
			<center>
			<h1>My Details</h1>
	
			<table style="font-size: 25px;">
			<c:forEach var="cus" items="${cusDetails}">
			
			<c:set var="username" value="${cus.username}"/>
			<c:set var="name" value="${cus.name}"/>
			<c:set var="address" value="${cus.address}"/>
			<c:set var="nic" value="${cus.nic}"/>
			<c:set var="phone" value="${cus.phone}"/>
			<c:set var="password" value="${cus.password}"/>
			
			
			<tr>
				<td><b>Full Name</b></td>
				<td>&nbsp &nbsp &nbsp &nbsp ${cus.name}</td>
			</tr>
			<tr>
				<td><b>Address</b></td>
				<td>&nbsp &nbsp &nbsp &nbsp ${cus.address}</td>
			</tr>
			<tr>
				<td><b>NIC</b></td>
				<td>&nbsp &nbsp &nbsp &nbsp ${cus.nic}</td>
			</tr>
			<tr>
				<td><b>Phone</b></td>
				<td>&nbsp &nbsp &nbsp &nbsp ${cus.phone}</td>
			</tr>
			<tr>
				<td><b>E-mail</b></td>
				<td>&nbsp &nbsp &nbsp &nbsp ${cus.username}</td>
			</tr>
		
			</c:forEach>
			</table>
			</center>
		</div>

		
		<div style="width: 25%; float: right;">
			<center>
			<br>
			<c:url value="updateCusDetails.jsp" var="cusupdate">
			<c:param name="username" value="${username}"/>
			<c:param name="name" value="${name}"/>
			<c:param name="address" value="${address}"/>
			<c:param name="nic" value="${nic}"/>
			<c:param name="phone" value="${phone}"/>
			<c:param name="password" value="${password}"/>
			</c:url>
			
			<a href="${cusupdate}">
			<input class="loginFormLoginBtn" type="button" name="update" value="Update My Data">
			</a>
			
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			
			<c:url value="DeleteCusAccount.jsp" var="cusdelete">
				<c:param name="username" value="${username}" />
				<c:param name="name" value="${name}" />
				<c:param name="address" value="${address}" />
				<c:param name="nic" value="${nic}" />
				<c:param name="phone" value="${phone}" />
				<c:param name="password" value="${password}" />
			</c:url>
			<a href="${cusdelete}">
			<input class="loginFormResetBtn" style="padding: 16px 25px;" type="button" name="delete" value="Delete My Account">
			</a>
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
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
	
		
		
		<div style="float: left; width: 25%;">
			<img src="${pageContext.request.contextPath}/images/nobackblank.png" width= 100%/>
		</div>
		
		<div style="float: left; width: 25%;">
			<img src="${pageContext.request.contextPath}/images/makerequest.png" width= 100%/>
			
			<center>
				<c:url value="submitservice.jsp" var="makeRequest">
					<c:param name="username" value="${username}" />
				</c:url>
				<a href="${makeRequest}">
					<input class="homeButton" style="vertical-align:middle; width: 300px; font-size: 20px;" type="button" name="makeServiceRequest" value="Make Service Request">
				</a>
			</center>
			
		</div>
		
		<div style="float: left; width: 25%;">
			<center>
			<img src="${pageContext.request.contextPath}/images/viewrequests.png" width= 87%/>
			</center>
			
			<center>
				
				<form action="myRequest" method="post">
					<input type="hidden" name="username" value="${username}">
					<input class="homeButton" style="vertical-align:middle; width: 300px; font-size: 20px;" type="submit" name="submit" value="View My Requests">
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