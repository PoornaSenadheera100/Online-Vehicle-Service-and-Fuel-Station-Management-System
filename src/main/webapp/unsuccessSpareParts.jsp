<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Unsuccessful</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/styles.css">
</head>
<body background="${pageContext.request.contextPath}/images/s3.png">
	<h1 style="text-align: center; color: black; font-family: 'Verdana', Sans-serif;">Sorry, your attempt was unsuccessful :(</h1>
	
	<!-- Button -->
	<form action = "details" method="post">		
		<input style="margin-left: 50px;" type="submit" name="submit" value="Go back to database records" class = "unsuccessbttn">
	</form>
	
</body>
</html>