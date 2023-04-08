<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Admin Login</h1>
	
	<form action = "homeUser" method="post">
		Enter Email : &nbsp; &nbsp;<input type="text" name = "email" required/>
		Enter Password : <input type = "password" name = "password" required/>
		<input type="submit" value="submit"/>
		<p><a href="index">Back</a></p>
	</form>
</body>
</html>