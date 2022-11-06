<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spare Part Details</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/styles.css">
</head>
<body background="${pageContext.request.contextPath}/images/s1.png"> <!-- bgcolor=#8aa5bd -->






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
	























	<h1 style="text-align: center; color: #143d59; background-color:#f4b41a; font-family: 'Verdana', Sans-serif;">Spare Part Database Records</h1>

	<!-- Button -->
	<a href="adminHome.jsp">
		<button style="float: left;" class="simp2button">Admin Home</button>
	</a>
	<a href="InsertSparePart.jsp">
		<button style="margin-right: 0px; float: right" class="simp2button">Insert Spare Part</button>
	</a><br><br><br><br>

	<!-- Loop -->
	<table class="sTable">
		<tr class="sTr">
			<th class="sTh">Part ID</th>
			<th class="sTh">Category</th>
			<th class="sTh">Part name</th>
			<th class="sTh">Quantity</th>
			<th class="sTh">Price</th>
			<th class="sTh"></th>
			<th class="sTh"></th>
		</tr>
		<c:forEach var="spare" items="${sparePart}">
			<!-- Returns the data from the servlet -->

			<c:set var="partId" value="${spare.partId}" />
			<c:set var="category" value="${spare.type}" />
			<c:set var="partName" value="${spare.partName}" />
			<c:set var="qty" value="${spare.quantity}" />
			<c:set var="price" value="${spare.price}" />

			<tr class="sTr">
				<td class="sTd">${spare.partId}</td>
				<td class="sTd">${spare.type}</td>
				<td class="sTd">${spare.partName}</td>
				<td class="sTd">${spare.quantity}</td>
				<td class="sTd">${spare.price}</td>

				<td class="sTd"><c:url value="updateSpareParts.jsp"
						var="sparePartUpdate">
						<!-- value is the page you want to go -->
						<c:param name="id" value="${partId}" />
						<!-- Variable name goes inside curly brackets -->
						<c:param name="category" value="${category}" />
						<c:param name="partName" value="${partName}" />
						<c:param name="qty" value="${qty}" />
						<c:param name="price" value="${price}" />
					</c:url> <!--Update Button--> <a href="${sparePartUpdate}"> 
					<input type="button" name="update" value="Update Spare Part Details" class="sUpdatebttn">
				</a></td>
				<td class="sTd"><c:url value="deleteSpareParts.jsp" var="sparePartDelete"> <!-- value is the page you want to go -->
						<c:param name="id" value="${partId}" /> <!-- Variable name goes inside curly brackets -->
						<c:param name="category" value="${category}" />
						<c:param name="partName" value="${partName}" />
						<c:param name="qty" value="${qty}" />
						<c:param name="price" value="${price}" />
					</c:url> 
					
					<!--Delete Button--> 
				<a href="${sparePartDelete}"> 
					<input type="button" name="delete" value="Delete record" class="sDeletebttn">
				</a></td>
			</tr>

		</c:forEach>
	</table>
	
	
	
	
	
	
	
	
	
	
	
	

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