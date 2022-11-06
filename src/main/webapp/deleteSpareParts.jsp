<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Confirmation Page</title>
<link rel = "stylesheet" href = "${pageContext.request.contextPath}/styles/styles.css">
</head>
<body background="${pageContext.request.contextPath}/images/s1.png"> <!--bgcolor = #97b5cf -->






	
	
	
	
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
	
	
	
	
	
	










	<%//can use this tag to enter java code inside jsp file
		String id = request.getParameter("id"); //<c:param name> from SparePartDetail file(line 46) goes inside the brackets
		String category = request.getParameter("category");
		String pName = request.getParameter("partName");
		String qty = request.getParameter("qty"); 
		String cost = request.getParameter("price");
		
		//parsing
		int tQty = Integer.parseInt(qty);
		double tCost = Double.parseDouble(cost);
	%>
	
	<h1 style="text-align:center; color:black; font-family:'Copperplate', Fantasy;">Are you sure you want to delete this record?</h1>
	
	<br><form action = "deletePart" method = "post" class = "sForm">	
		Part ID &nbsp&nbsp&nbsp&nbsp&nbsp : <input type = "text" name = "partId" value = "<%=id%>" readonly><br><br>
		Category &nbsp&nbsp&nbsp: <input type = "text" name = "category" value = "<%=category%>" readonly><br> <br>
		Part Name : <input type = "text" name = "partName" value = "<%=pName%>" readonly><br><br>
		Quantity &nbsp&nbsp&nbsp: <input type = "number" name = "qty" value = "<%=tQty%>" readonly><br><br>
		Price &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: <input type = "number" name = "price" value = "<%=tCost%>" readonly><br><br>
		
		<input type = "submit" name = "submit" value = "Delete record" class = "sDeletebttn2">
	</form>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
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