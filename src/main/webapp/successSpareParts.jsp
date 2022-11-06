<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Successfully Page</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/styles.css">
</head>
<body background="${pageContext.request.contextPath}/images/s6.jpg" class = "imgFit">
	<h1 style="text-align: center; color: #143d59; background-color:#f4b41a; font-family: 'Verdana', Sans-serif;">Success!</h1>

	<!-- Button -->
	<form action = "details" method="post">
		<input style="margin-left: 1250px;" class="successbttn" type="submit" name="submit" value="Go back to database records">
	</form>
</body>
</html>