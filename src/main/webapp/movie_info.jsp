<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@ page import="com.sat.tmf.tkt.Movie"%>
<!DOCTYPE html>
<html lang="en">
<%
System.out.println(((Movie)request.getAttribute("selectedMovieObj")).getMovieName());
%>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Movie info</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: Arial, sans-serif;
	background-color: #f9fafb;
}

#main-header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 15px 30px;
	background-color: #1f2937;
	color: white;
	border-bottom: 2px solid #ef4444;
}

#main-header img {
	width: 50px;
	height: 50px;
	border-radius: 50%;
}

#main-header input[type="text"] {
	padding: 8px;
	margin: 0 10px;
	border: 2px solid #ef4444;
	border-radius: 5px;
	font-size: 14px;
}

#main-header button {
	padding: 8px 16px;
	border: 2px solid #ef4444;
	background-color: white;
	color: #ef4444;
	font-size: 16px;
	font-weight: bold;
	cursor: pointer;
	border-radius: 10px;
	transition: background-color 0.3s, color 0.3s;
}

#main-header button:hover {
	background-color: #ef4444;
	color: white;
}

#main-body {
	display: flex;
	justify-content: space-between;
	align-items: flex-start;
	padding: 30px;
	gap: 30px;
}

.card-container {
	flex: 2;
	display: flex;
	flex-direction: column;
	gap: 30px;
}

.box {
	display: flex;
	flex-direction: column;
	align-items: center;
	padding: 20px;
	border: 2px solid #ef4444;
	border-radius: 10px;
	text-align: center;
	background-color: white;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

.box img {
	width: 200px;
	height: 300px;
	object-fit: cover;
	margin-bottom: 15px;
	border-radius: 5px;
}

.box h4 {
	margin: 10px 0;
	font-size: 18px;
}

.info {
	padding: 15px;
	border: 2px solid #ddd;
	border-radius: 10px;
	font-size: 16px;
	background-color: white;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

#theatre-selection {
	flex: 1;
	display: flex;
	flex-direction: column;
	gap: 20px;
	align-items: center;
}

#theatre-selection h1 {
	font-size: 24px;
	color: #333;
	margin-bottom: 20px;
}

#theatre-selection button {
	padding: 15px 20px;
	border: 2px solid #ef4444;
	background-color: white;
	font-size: 18px;
	font-weight: bold;
	cursor: pointer;
	border-radius: 10px;
	width: 100%;
	height: 50px;
	transition: background-color 0.3s, color 0.3s;
}

#theatre-selection button:hover {
	background-color: #ef4444;
	color: white;
}

#main-footer {
	text-align: center;
	padding: 15px;
	background-color: #1f2937;
	color: white;
	border-top: 2px solid #ef4444;
}

#main-footer p {
	font-size: 14px;
}
</style>
</head>

<body>
	<header id="main-header">
		<img src="" alt="logo"> <input type="text"
			placeholder="Search Movie"> <input type="text"
			placeholder="Search Theatre">
		<button>Profile</button>
	</header>

	<main id="main-body">
		<div class="card-container">
			<div class="box">
				<img src="" alt="Movie 1 image">
				<h4>Movie name:</h4>
				<h4>Movie rating:</h4>
			</div>
			<div class="info">
				<h4>Movie Info:</h4>
				<h4>Movie Cast:</h4>
			</div>
		</div>

		<div id="theatre-selection">
			<h1>Select Theatres</h1>
			<button>Theatre 1</button>
			<button>Theatre 2</button>
			<button>Theatre 3</button>
		</div>
	</main>

	<footer id="main-footer">
		<p>&copy; My Movie Booker</p>
	</footer>
</body>

</html>
