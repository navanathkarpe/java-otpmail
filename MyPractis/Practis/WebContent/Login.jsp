<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/style.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<div class="main">
		<form action="Login" method="post">
		<center>
			<table border="2" cellpadding="5" width="30%">
				<thead>
					<tr>Login Form</tr>
				</thead>
				<tbody>
					<tr>
						<td>Email Id:</td>
						<td><input type=text name=loname></td>
					</tr>
					<tr>
						<td>Password:</td>

						<td><input type="text" name="pass"></td>
					</tr>
					<tr>
						<td><input type="submit" value="Login" id="btn"></td>
						<td><input type="submit" value="Clear" id="btn1"></td>
					</tr>
					
				</tbody>



			</table>



		</center>
		</form>
	</div>
</body>
</html>