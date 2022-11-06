<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Our Services</title>
<link rel = "stylesheet" href = "${pageContext.request.contextPath}/styles/styles.css">



<style>

 



.container ul {
  list-style-type: square;
}

.container li {
	float: none;
}
























 
div {
  font-family: Arial, Helvetica, sans-serif;

}


<! -- CSS tags of the two flip boxes -->	

.flip-box {
  background-color: transparent;
  width: 750px;
  height: 100px;
  border: 1px solid #f1f1f1;
  perspective: 1000px;
}

.flip-box-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
}

.flip-box:hover .flip-box-inner {
  transform: rotateY(180deg);
}

.flip-box-front, .flip-box-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-box-front {
  background-color: dodgerblue;
  color: black;
}

.flip-box-back {
  background-color: #FF0000;
  color: white;
  transform: rotateY(180deg);
}

    .box{
        position: relative;
        display: inline-block; 
    }
    .box .text{
        position: absolute;
        z-index: 999;
        margin: 0 auto;
        left: 0;
        right: 0;        
        text-align:center;
        top: 60%; 
        background: rgba(0, 0, 0, 0.8);
        font-family: Arial,sans-serif;
		font-size:50;
        color: #fff;
        width: 60%; 
    }
		
	.zoom {
	padding: 50px;
	background-color: white;
	transition: transform .2s;
	width: 200px;
	height: 200px;
	margin: 0 auto;
	}
 <! -- seperating the content in a box like structure-->	
	html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 31%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.columnF {
  float: left;
  width: 40%;
  margin-bottom: 16px;
  padding: 0 8px;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.fuel{
	
	
	font-family:Helvetica;
	font-size:22;



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
		<li><a class="active" href="Services.jsp">Services</a></li>
		<li><a href="login.jsp">Login</a></li>
	</ul>

	






























	<div>
    <div class="box">
    	<img src="${pageContext.request.contextPath}\images\Img1.jpeg"  width="1500" height="1000">
        <div class="text">
            <h1>Our Services</h1>
        </div>
    </div>
	
	<table>
	<tr>
	<td>	
	<div class="flip-box">
	  <div class="flip-box-inner">
	    <div class="flip-box-front">
	      <h2>Service Station</h2>
	    </div>
	    <div class="flip-box-back">
	      <h2>Service Station</h2>
	    </div>
	  </div>
	</div>
	</td>
	
	
	<td>
	<div class="flip-box" >
	  <div class="flip-box-inner">
	    <div class="flip-box-front">
	      <h2>Fuel Management System</h2>
	    </div>
	    <div class="flip-box-back">
	      <h2>Fuel Management System</h2>
	    </div>
	  </div>
	</div>
	</td>
	</tr>
	<tr>
	<td>
	<img src="${pageContext.request.contextPath}\images\img2.jpg" width=750></td>
	<td><img src="${pageContext.request.contextPath}\images\img3.jpg" width=750 height=500> </td>
	</table>
	
	<br>
	
	<!-- Services description begins from here -->
	
	<h1 style="background-color:powderblue"> Service Station </h1>
	
	
	
	
	<div class="row">
	  <div class="column">
	    <div class="card">
	      <img src="${pageContext.request.contextPath}\images\img4.jpg" alt="Vehicle Repair" width="466" height="300">
	      <div class="container">
	        <h2>Vehicle Repair</h2>
	        <p class="title">All our mechanics are skilled and is very well experinced to handle any time of repair.
			They are equipped with modern tools which will help them more in providing best service to all your need.</p>
	        <p>Few of the repairs we provide are,
			<ul type= square>
			<li>Periodical Maintenance</li>
			<li>Mechanical Repair</li>
			<li>High Voltage System</li>
			<li>Electrical & Electronic</li>
			<li>AC Repair and Maintaince </li>
			</ul>
			And many more...
			</p>
	      </div>
		</div>
	  </div>
	  
	 <div class="column">
	    <div class="card">
	      <img src="${pageContext.request.contextPath}\images\img5.jpg" alt="Vehicle Service" width="466" height="300">
	      <div class="container">
	        <h2>Vehicle Service</h2>
	        <p class="title">All our skilled workers are ever ready to provide the best service required to your auto mobile
			with greatest dedication and intrest.</p>
	        <p>Few main services we provide are , </p>
	        <p><ul type= square>
			<li>Periodical Maintenance</li>
			<li>Lubricant Service</li>
			<li>Wash</li>
			<li>Doorstep Services</li>
			<li>Exterior Waxing </li>
			</ul>And many more...</p>
			<br>
	      </div>
	    </div>
	  </div>
	
	<div class="column">
	    <div class="card">
	      <img src="${pageContext.request.contextPath}\images\img6.jpeg" alt="Collision Repair" width="466" height="300">
	      <div class="container">
	        <h2>Collition Repair</h2>
	        <p class="title">Our well skilled and equipped team is cable of handling any damaged motor vehicle and bring it back to the 
			state as if it a brand new vehicle</p>
	        <p>Few main services we provide are , </p>
	        <p><ul type= square>
			<li>General Collision Repair</li>
			<li>Fast Collision Repair</li>
			<li>Complete Paint</li>
			</ul>And many more...</p>
			<br>
			<br>
			
	      </div>
	    </div>
	  </div>
	</div>
	
	
	<div class="row">
	  <div class="column">
	    <div class="card">
	      <img src="${pageContext.request.contextPath}\images\img7.jpeg" alt="Spare Parts" width="466" height="300">
	      <div class="container">
	        <h2>Spare Parts</h2>
	        <p class="title">All our mechanics are skilled and is very well experinced to handle any time of repair.
			They are equipped with modern tools which will help them more in providing best service to all your need.</p>
	        <p>Few of the repairs we provide are,
			<ul type= square>
			<li>Periodical Maintenance</li>
			<li>Mechanical Repair</li>
			<li>High Voltage System</li>
			<li>Electrical & Electronic</li>
			<li>AC Repair and Maintaince </li>
			</ul>
			And many more...
			</p>
	      </div>
		</div>
	  </div>
	  
	 
	
	<div class="column">
	    <div class="card">
	      <img src="${pageContext.request.contextPath}\images\img8.jpg" alt="Mobile Service" width="466" height="300">
	      <div class="container">
	        <h2>Mobile Service</h2>
	        <p class="title"> Our well skilled and equipped team is cable of handling any damaged motor vehicle and bring it back to the 
			state as if it a brand new vehicle</p>
	        <p>Few main services we provide are , </p>
	        <p><ul type= "square">
			<li>General Collision Repair</li>
			<li>Fast Collision Repair</li>
			<li>Complete Paint</li>
			</ul>And many more...</p>
			<br>
			<br>
			
	      </div>
	    </div>
	  </div>
	</div>
	
	
	
	
	
	
	
	<h1 style="background-color:powderblue"> Fuel Station Management System </h1>
	<p style="font-size:30"> We the SPSH has a modern fuel station with modern fuel pumps which <br>allows the customers to pumptheir fuel without waiting.Our staff has 
	<br>well experince and is capableof performing the tasks quickly without causing a <br>delay to you.
	<img src="${pageContext.request.contextPath}\images\img13.jpeg" alt="Mobile Service" width="466" height="300" align=right>

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
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