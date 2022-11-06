<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Fuel Tank</title>
<link rel = "stylesheet" href = "${pageContext.request.contextPath}/styles/styles.css">


<link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <!--Stylesheet-->
    
 <style media="screen">
      *,
*:before,
*:after{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body{
    background-color: #080710;
    background-size: cover;
 	background-repeat: no-repeat;
 	background-position: center;
    height: 100%;
   	width:100%;
 

}
.background{
    width: 430px;
    height: 6000px;
    position: absolute;
    transform: translate(-50%,-50%);
    left: 50%;
    top: 50%;
}
.background .shape{
    height: 200px;
    width: 200px;
    position: absolute;
    border-radius: 50%;
}

form{
    height: 950px;
    width: 900px;
    background-color: rgba(255,255,255,0.13);
    position: absolute;
    transform: translate(-50%, 10%);
    top: 50%;
    left: 50%;
    border-radius: 10px;
    backdrop-filter: blur(10px);
    border: 2px solid rgba(255,255,255,0.1);
    box-shadow: 0 0 40px rgba(8,7,16,0.6);
    padding: 50px 35px;
}
form *{
    font-family: 'Poppins',sans-serif;
    color: # #FFD700;
    letter-spacing: 0.5px;
    outline: none;
    border: none;
}
form h3{
    font-size: 32px;
    font-weight: 500;
    line-height: 42px;
    text-align: center;
}

label{
    display: block;
    margin-top: 30px;
    font-size: 16px;
    font-weight: 500;
}
input{
    display: block;
    height: 50px;
    width: 100%;
    background-color: rgba(255,255,255,0.07);
    border-radius: 3px;
    padding: 0 10px;
    margin-top: 8px;
    font-size: 14px;
    font-weight: 300;
}
::placeholder{
    color: #e5e5e5;
}
button{
    margin-top: 50px;
    width: 100%;
    background-color: #ffffff;
    color: #080710;
    padding: 15px 0;
    font-size: 18px;
    font-weight: 600;
    border-radius: 5px;
    cursor: pointer;
}
.social{
  margin-top: 30px;
  display: flex;
}
.social div{
  background: red;
  width: 150px;
  border-radius: 3px;
  padding: 5px 10px 10px 5px;
  background-color: rgba(255,255,255,0.27);
  color: #eaf0fb;
  text-align: center;
}
.social div:hover{
  background-color: rgba(255,255,255,0.47);
}
.social .fb{
  margin-left: 25px;
}
.social i{
  margin-right: 4px;
}
</style>




</head>
<body background ="${pageContext.request.contextPath}/images/img18.jpeg" >









<!--  HEADER -->
	<div class="headerDiv">
	
		<div style="float: right; width:75%;">
		<br>
		<br>
		<br>
		<br>
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

























<%

	String TankID = request.getParameter("TankID");
	String TankCapacity = request.getParameter("TankCapacity");
	String CurrentTankCapacity = request.getParameter("CurrentCapacity");
	String RefilledDate = request.getParameter("RefilledDate");
	String EstimatedrefillDate = request.getParameter("EstimatedRefilledDate");
	String FuelType = request.getParameter("FuelType");

%>



<form action="updateTank" method="post">
    <br><br>
        <h3>Update Fuel Tank</h3>

        <label for="Enter Tank ID:">Enter Tank ID:</label>
        <input type="text" placeholder="Enter Tank ID:" id="username"name="TankID" value="<%= TankID %>"readonly>

        <label for="Enter Tank Capacity:">Enter Tank Capacity:</label>
        <input type="text" placeholder="Enter Tank Capacity:" name="TankCapacity" value="<%= TankCapacity %>">
        
        <label for="Enter Current Capacity of Tank :">Enter Current Capacity of Tank :</label>
        <input type="text" placeholder="Enter Current Capacity of Tank :" name="CurrentTankCapacity" value="<%=CurrentTankCapacity %>">
        
        <label for="Refilled Date:">Refilled Date:</label>
        <input type="Date" placeholder="Refilled Date:" name="RefilledDate" value="<%= RefilledDate %>">
        
        <label for="Estimated refill Date:">Estimated refill Date:</label>
        <input type="Date" placeholder="Estimated refill Date:" name="EstimatedrefillDate" value="<%= EstimatedrefillDate %>">
        
        <label for="Fuel Type:">Fuel Type:</label>
        <input type="text" placeholder="Fuel Type:" name="FuelType" value="<%= FuelType %>">

        <button type="submit">Update Fuel Tank</button>
        
    </form>




















	
	
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