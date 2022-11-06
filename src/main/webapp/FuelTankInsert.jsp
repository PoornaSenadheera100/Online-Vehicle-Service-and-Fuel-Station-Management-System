<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>

<!--Remove the default margin -->
*{

margin:0;
padding:0;

}



<!--Form styles -->



.card {
  width: 70%;
  padding: 30px 90px 90px 90px;
  border: 6px solid rgba(0, 0, 0, 0.3);
  box-shadow: 20px 20px 0 rgba(0, 0, 0, 0.5);
  border-radius: 50px;
  position: relative;
}

.card h2 {
  color: rgba(1, 1, 1, 0.7);
  font-size: 60px;
  text-transform: uppercase;
}

.card .row {
  position: relative;
  width: 100%;
  display: grid;
  grid: auto / auto auto;
  grid-template-columns: repeat(auto-fit,minmax(40%, 1fr));
  grid-gap: 30px;
}

.card .row .col {
  position: relative;
  width: 100%;
  margin: 30px 20px 40px 0;
  transition: 0.5s;
}

.card .row .form-group {
  position: relative;
  width: 100%;
  height: 40px;
  color: #ffffff;
}

.card .row .form-group input,
.card .row .form-group textarea {
  position: absolute;
  width: 90%;
  height: 100%;
  background: #666666;
  outline: none;
  font-size: 24px;
  padding: 10px 0 10px 20px;
  border: 5px solid rgba(0, 0, 0, 0.3);
  box-shadow: 10px 10px 0 rgba(0, 0, 0, 0.3);
  color:#FFD700;
  border-radius: 50px;
}

.card .row .form-group label {
  line-height: 40px;
  color: #FFD700;
  font-size: 24px;
  margin: 0 0 0 30px;
  display: block;
  pointer-events: none;
}

.row .col:nth-child(6) {
  margin-top: 64px;
}

.card .row .form-group input:focus,
.card .row .form-group textarea:focus {
  border: 5px solid #ffffff;
  transition: all 0.5s;
}

.card .row input[type="submit"] {
  border: 5px solid rgba(0, 0, 0, 0.3);
  box-shadow: 10px 10px 0 rgba(0, 0, 0, 0.5);
  padding: 10px;
  height: 100%;
  width: 50%;
  cursor: pointer;
  outline: none;
  background: #666666;
  text-transform: uppercase;
  color: #FFD700;
  line-height: 40px;
  font-size: 24px;
  font-weight: 700;
  border-radius: 45px;
  transition: all 0.4s;
}

.card .row input[type="submit"]:hover {
  border: 5px solid rgba(255, 255, 255, 1);
  color: #ffffff;
  transition: all 0.4s;
}

@media screen and (max-width: 900px) {
  .card .row {
    grid-template-columns: repeat(auto-fit,minmax(70%, 1fr));
  }
  
  .card {
    padding: 20px;
  }
  
  .card h2 {
    font-size: 34px;
  }
  
  .card .row input[type="submit"] {
    width: 100%;
  }
}

<!-- End Form styles -->







</style>
<meta charset="ISO-8859-1">
<title>Add a New Tank</title>
<link rel = "stylesheet" href = "${pageContext.request.contextPath}/styles/styles.css">
</head>

<!-- Adding a background image -->
<body background ="${pageContext.request.contextPath}/images/img14.jpg" style="background-size: auto 1800px; background-repeat: no-repeat;">












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
	
	
	














<!--Creating a new fuel tank  -->

    <div class="card">
   
      <h2>Add new fuel tank</h2> 
      
      <form action ="insertTank" method="post">
		
		<div class="row">
    <div class="col">
      <div class="form-group">
        <label>Enter Tank Capacity:</label>
        <input type="number" name="TankCapacity">
      </div>
    </div>
    
 
    <div class="col">
      <div class="form-group">
        <label>Enter Current Capacity of Tank :</label>
        <input type="number" name="CurrentTankCapacity">
      </div>
    </div>

    <div class="col">
      <div class="form-group">
        <label>Refilled Date :</label>
        <input type="Date" name="RefilledDate">
      </div>
    </div>

    <div class="col">
      <div class="form-group">
        <label>Estimated refill Date :</label>
        <input type="Date" name="EstimatedrefillDate">
      </div>
    </div>
    
    <div class="col">
      <div class="form-group">
        <label>Fuel Type:</label>
        <input type="text" name="FuelType">
      </div>
    </div>

    <div class="col">
      <input type="submit" name ="AddTank" value="Add tank">
    </div>
  </div>
  </form>
		
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