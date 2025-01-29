<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div id="header">
	<img src="" />
	<button>Sign Up</button>
	<button>Sign In</button>
</div>
<div id="body_container">
	<form action="/tkt_booking_web/LoginServlet" id="login_form" method="post">

		<table>
			<tr>
				<td> Login</td>
			</tr>
			<tr>
				<td>Phone No:</td>
				<td><input type="text" name="user_name"/></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password"/></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit"/></td>
			</tr>
		</table>
	</form>
</div>

</body>
</html>