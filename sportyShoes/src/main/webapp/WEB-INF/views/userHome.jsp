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
<title>Shoe Shopping Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" type="text/css" href="style.css" />
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

body {
	font-family: Arial, sans-serif;
}

header {
	background-color: #333;
	color: #fff;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px;
}

.user-details {
	text-align: right;
}

main {
	max-width: 800px;
	margin: 20px auto;
	padding: 0 10px;
}

.filters {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 20px;
}

.filters label {
	margin-right: 10px;
}

.filters select {
	padding: 5px;
	border-radius: 5px;
	border: none;
	outline: none;
}

.filters button {
	padding: 5px 10px;
	border-radius: 5px;
	border:1px solid #fff;
	background-color: #333;
	color: #fff;
	cursor: pointer;
}

.filters button:hover{
	background-color:#fff;
	color:#333;
	border:1px solid #333;
}

.shoes {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
	gap: 20px;
}

.shoe {
	border: 1px solid #ccc;
	padding: 10px;
	text-align: center;
}

.shoe h2 {
	font-size: 24px;
	margin-bottom: 10px;
}

.shoe p {
	margin-bottom: 5px;
}

.select-btn {
	padding: 5px 10px;
	border-radius: 5px;
	border: none;
	background-color: #333;
	color: #fff;
	cursor: pointer;
}
</style>
</head>
<body>
	<header>
		<h1>Shoe Shopping Page</h1>
		<div class="user-details">
			<p>User: ${user.name }</p>
			<p>Email: ${user.email }</p>
		</div>
	</header>
	<main>
	<form action="filters" method="get">
		<div class="filters">
			
				<label for="price">Price:</label> <select id="price" name="price"
					required>
					<option value="all">All</option>
					<option value="1">ASC</option>
					<option value="2">DSC</option>

				</select> <label for="category">Category:</label> <select id="category"
					name="category" required>
					<option value="all">All</option>
					<c:forEach var="category" items="${category}">
						<option>${category.name }</option>
					</c:forEach>
				</select>

				<button type="button" id="filter-btn">Apply Filters</button>
		</div>	</form>
		
		<div class="shoes">
			<c:forEach var="shoe" items="${shoes}">
				<div class="shoe">
					<h2>${shoe.name }</h2>
					<p>${shoe.price }</p>
					<p>${shoe.category.name }</p>
					<a class="select-btn" href="addShoes?shoesid=${shoe.id }">ADD</a>
				</div>
			</c:forEach>
		</div>
	</main>
</body>
</html>