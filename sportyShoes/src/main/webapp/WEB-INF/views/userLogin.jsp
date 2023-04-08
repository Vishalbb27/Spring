<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="userlogin.css" rel="stylesheet" type="text/css">
</head>
<body>
<h1>Login</h1>
	<form action="login" method="post">
		<label>Name : </label> <input type="text" name="name" required/>
		<label>Email : </label> <input type="text" name="email" required/>
		<label>Phone : </label> <input type="text" name="phone" required/>
		<label>Address : </label> <input type="text" name="address" required/>
		<label>Password : </label> <input type="password" name="password" required/>
		<input type="submit" value="submit"/>
		<p><a href="signup">Back</a></p>
	</form>
</body>
</html>