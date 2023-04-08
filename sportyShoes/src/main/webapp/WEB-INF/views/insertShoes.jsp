<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page
	import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@page import="java.awt.print.Book"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="form.css" rel="stylesheet" type="text/css">
</head>
<body>
	<h1>Insert New Shoes</h1>
	<form method="post" action="shoesInsert">
		<label>Name : </label><input type="text" name="name" required/>
		<label>Category :</label> <select name="category" required>
			<c:forEach var="category" items="${category}">
				<option>${category.name }</option>
				
			</c:forEach>
		</select> 
		<label>Price :</label><input type="text" name="price" required/>
		<input type="submit" value="submit" required/>
	</form>
</body>
</html>