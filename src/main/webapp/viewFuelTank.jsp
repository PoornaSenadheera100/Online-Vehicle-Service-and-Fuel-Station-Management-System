<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Fuel Tanks</title>
<link rel = "stylesheet" href = "${pageContext.request.contextPath}/styles/styles.css">

<style>


html,
body {
	height: 100%;
}

.h1 {
  color: rgba(0, 0, 0, 0.3);
  font-size: 60px;
  text-transform: uppercase;
  text-align:center;
}

body {
	margin: 0;
	background: linear-gradient(45deg, #49a09d, #5f2c82);
	font-family: sans-serif;
	font-weight: 100;
}

.container {
	position: absolute;
	top: 50%;
	left: 50%;
	right: 50%;
	width:100%;
	transform: translate(-50%, 10%);
}

.table {
	width: 1550px;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0,0,0,0.1);
}

.th,
.td {
	padding: 15px;
	background-color: rgba(255,255,255,0.2);
	color: #fff;
}

.th {
	text-align: left;
}

thead {
	th {
		background-color: #55608f;
	}
}

tbody {
	tr {
		&:hover {
			background-color: rgba(255,255,255,0.3);
		}
	}
	td {
		position: relative;
		&:hover {
			&:before {
				content: "";
				position: absolute;
				left: 0;
				right: 0;
				top: -9999px;
				bottom: -9999px;
				background-color: rgba(255,255,255,0.2);
				z-index: -1;
			}
		}
	}
}





}

.noselect {
  -webkit-touch-callout: none;
    -webkit-user-select: none;
     -khtml-user-select: none;
       -moz-user-select: none;
        -ms-user-select: none;
            user-select: none;
		-webkit-tap-highlight-color: transparent;
}

button {
	width: 150px;
	height: 50px;
	cursor: pointer;
	border: none;
	
	align-items: center;
	justify-content: center;
	background-color: #7f5a83;
	background-image: linear-gradient(315deg, #7f5a83 0%, #0d324d 74%);
	background-size: 200% 100%;

	background-repeat: no-repeat;
	transition: 500ms;
}

button:before {
	
	color: rgba(255,255,255,0.5);
	font-size: 16px;
	
	display: flex;
	align-items: center;
	justify-content: center;
	width: 140px;
	height: 40px;
	background-color: #1b2845;
	background-image: linear-gradient(315deg, #1b2845 0%, #274060 74%);
	transition: 500ms;
}

button:hover {
	background-position: right;
}

button:hover:before {
	color: rgba(255,255,255,0.8);
}

button:focus {
	outline: none;
}
</style>

</head>


<body>












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
	<br/>
	



















<h1 class="h1"> Fuel Tank Details </h1>
<br> <br>

<br> <br>
<div>
<div class="container">

<br> <br>
<br> <br>
<table class="table">
<thead>
<tr>
	<th class="th">Tank ID</th>
	<th class="th">Tank Capacity (Gallons)</th>
	<th class="th">Current Tank Capacity (Gallons)</th>
	<th class="th">Refilled Date</th>
	<th class="th">Estimated Refill Date</th>
	<th class="th">Fuel Type</th>
	<th class="th"></th>
	<th class="th"></th>
</tr>
</thead>
			<tbody>
<c:forEach var="tank" items="${fuelTanks}">

<c:set var="tankID" value="${tank.tankID}"/>
<c:set var="tankCapacity" value="${tank.tankCapacity}"/>
<c:set var="currentCapacity" value="${tank.currentCapacity}"/>
<c:set var="refilledDate" value="${tank.refilledDate}"/>
<c:set var="estimatedRefillDate" value="${tank.estimatedRefillDate}"/>
<c:set var="fuelType" value="${tank.fuelType}"/>



<tr>
	<td class="td">${tank.tankID}</td>
	<td class="td">${tank.tankCapacity}</td>
	<td class="td">${tank.currentCapacity}</td>
	<td class="td">${tank.refilledDate}</td>
	<td class="td">${tank.estimatedRefillDate}</td>
	<td class="td">${tank.fuelType}</td>
	
	<td class="td">
		<c:url value="UpdateFuelTank.jsp" var="FuelUpdate">

			<c:param name="TankID" value="${tankID}"/>
			<c:param name="TankCapacity" value="${tankCapacity}"/>
			<c:param name="CurrentCapacity" value="${currentCapacity}"/>
			<c:param name="RefilledDate" value="${refilledDate}"/>
			<c:param name="EstimatedRefilledDate" value="${estimatedRefillDate}"/>
			<c:param name="FuelType" value="${fuelType}"/>
		
		</c:url>
		<a href="${FuelUpdate}">
		<button class="noselect" style="color : #fff">Update Fuel Tank</button>
		</a>
	</td>
	
	<td class="td">
		<c:url value ="RemoveFuelTank.jsp" var ="TankDelete">
			<c:param name="TankID" value="${tankID}"/>
			<c:param name="TankCapacity" value="${tankCapacity}"/>
			<c:param name="CurrentCapacity" value="${currentCapacity}"/>
			<c:param name="RefilledDate" value="${refilledDate}"/>
			<c:param name="EstimatedRefilledDate" value="${estimatedRefillDate}"/>
			<c:param name="FuelType" value="${fuelType}"/>
		
		</c:url>
		
		<a href="${TankDelete}">
		<button class="noselect" style="color : #fff">Remove Fuel Tank</button>
		</a>
	</td>
	
</tr>

</c:forEach>
</tbody>
</table>

<br>
<br>
<a href="FuelTankInsert.jsp"><button class="noselect" style="color : #fff">Add a Tank</button></a>  &nbsp<a href="adminHome.jsp"><button class="noselect" style="color : #fff">Admin Home</button></a>
<br> <br><br> <br>
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