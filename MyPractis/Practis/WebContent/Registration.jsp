<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/style.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>

	<form method="post" action="Registration">

		<center>
			<div class="main">
				<table border="1" width="30%" cellpadding="5">
					<thead>
						<tr colspn="2">Please Enter User Details
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>First Name:</td>
							<td><input type="text" name="fname" /></td>
						</tr>
						<tr>
							<td>Last Name</td>
							<td><input type="text" name="lname"></td>
						</tr>

						<tr>
							<td>User Name</td>
							<td><input type="text" name="uname"></td>
						</tr>

						<tr>
							<td>Password</td>
							<td><input type="password" name="password"></td>
						</tr>

						<tr>
							<td>Roll No</td>
							<td><input type="text" name="roll"></td>
						</tr>
						<tr>
							<td>Department</td>
							<td><select name="department">
									<option>Select</option>
									<option>Computer</option>
									<option>E&TC</option>
									<option>Mechanical</option>
									<option>Civil</option>
									<option>IT</option>
							</select></td>

						</tr>

						<tr>
							<td>Class</td>
							<td><select name="class">
									<option>select</option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>

							</select></td>
						</tr>
						<tr>
							<td>Gender</td>
							<td><input type="radio" name="gender" value="male">male<br>
								<input type="radio" name="gender" value="female">female



							</td>

						</tr>

						<tr>
							<td>Birth Date</td>
							<td><input type="datetime" name="bd"></td>

						</tr>
						<tr>
							<td>Contact No:</td>
							<td><input type="text" name="contact">
						</tr>
						<tr>
							<td>Email ID:</td>
							<td><input type="text" name="email"></td>
						</tr>
						<tr>
							<td><input type="submit" value="Register" id=btn></td>
							<td><input type="reset" value="Clear" id=btn1></td>
						</tr>
					</tbody>
				</table>
			</div>
		</center>
	</form>
</body>
</html>