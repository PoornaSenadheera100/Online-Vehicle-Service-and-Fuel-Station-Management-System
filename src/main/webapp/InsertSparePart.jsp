<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Spare Part</title>
<link rel = "stylesheet" href = "${pageContext.request.contextPath}/styles/styles.css">
</head>
<body background ="${pageContext.request.contextPath}/images/s2.png">







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












	<h1 style="text-align: center; color: #58d1d1; background-color:#210070; font-family: 'Verdana', Sans-serif; padding-top: 5px; padding-bottom: 5px;">Insert Spare Part Details</h1>
	<!-- Form to add a new spare part -->
	<div class = "sInsert">
	<br><form action="insertPart" method="post" class = "sForm" >
		Part ID &nbsp&nbsp&nbsp&nbsp&nbsp : <input type="text" name="partId"><br> <br>
		Category  &nbsp&nbsp&nbsp:  &nbsp&nbsp&nbsp&nbsp&nbsp<select id="category" name="category">
			<option value="Engine">Engine</option>
			<option value="Filters">Filters</option>
			<option value="Brake System">Brake System</option>
			<option value="Cooling System">Cooling System</option>
			<option value="Lighting">Lighting</option>
			<option value="Exhaust System">Exhaust System</option>
			<option value="Body">Body</option>
			<option value="Suspension">Suspension</option>
			<option value="Fuel System">Fuel System</option>
			<option value="Transmission">Transmission</option>
		</select><br> <br>
		Part Name : <input type="text" name="partName"><br><br>
		Quantity &nbsp&nbsp&nbsp: <input type="number" name="qty"><br> <br>
		Price &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: <input type="number" name="price"><br><br>

		<!-- Button -->
		<input type="submit" name="submit" value="Insert New Record" class = "simpbutton">
	</form>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
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