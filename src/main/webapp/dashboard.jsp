<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.List"%>
<%@ page import="com.sat.tmf.tkt.Movie"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Homepage</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: Arial, sans-serif;
	background-color: #f9fafb;
	color: #333;
}

#main-header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 20px;
	background-color: #1f2937;
	color: white;
	border-bottom: 2px solid #ef4444;
}

#main-header img {
	width: 50px;
	height: 50px;
	border-radius: 50%;
	border: 2px solid #ef4444;
}

#main-header input[type="text"] {
	padding: 8px;
	margin: 0 5px;
	border: 2px solid #ef4444;
	border-radius: 5px;
	font-size: 14px;
	transition: border-color 0.3s;
}

#main-header input[type="text"]:focus {
	border-color: #dc2626;
	outline: none;
}

#main-header button {
	padding: 8px 16px;
	border: 2px solid #ef4444;
	background-color: #ef4444;
	color: white;
	font-size: 16px;
	font-weight: bold;
	cursor: pointer;
	border-radius: 10px;
	transition: background-color 0.3s;
}

#main-header button:hover {
	background-color: #dc2626;
}

#main-body {
	padding: 20px;
}

#main-showcase {
	text-align: center;
}

#main-showcase h1 {
	font-size: 28px;
	margin-bottom: 20px;
	color: #1f2937;
}

.card-container {
	display: grid;
	grid-template-columns: repeat(4, 1fr);
	gap: 20px;
	padding: 10px;
}

.box {
	background-color: white;
	border-radius: 10px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
	padding: 20px;
	text-align: center;
	transition: transform 0.3s ease, box-shadow 0.3s ease;
	height: 350px;
}

.box:hover {
	transform: translateY(-5px);
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
}

.box img {
	width: 100%;
	height: 200px;
	object-fit: cover;
	border-radius: 8px;
	margin-bottom: 15px;
}

.box h4 {
	font-size: 18px;
	color: #4b5563;
	margin: 5px 0;
}

.box .rating {
	font-size: 16px;
	color: #ef4444;
}

#main-footer {
	text-align: center;
	padding: 10px;
	background-color: #1f2937;
	color: white;
	font-size: 14px;
}

#main-footer p {
	margin-top: 5px;
}
</style>
</head>

<body>
	<header id="main-header">
		<img src="" alt="Logo"> <input type="text"
			placeholder="Search movies"> <input type="text"
			placeholder="Search theatres">
		<button>Profile</button>
	</header>
	<main id="main-body">
		<section id="main-showcase">
			<h1>Movies</h1>
			<form action="/tkt_booking_web/MovieServlet" id="seelectedMovieForm">
			<div class="card-container">
			
			<input id="selectedMovieId" type="hidden" name="selectedMovieId"/>
				<%
            List<Movie> movieList = ((List<Movie>)(request.getServletContext().getAttribute("movieList")));
            System.out.println("Total No Of Movies:"+movieList.size());
            for(Movie m:movieList){
            	%>

				<div id="<%=m.getMovieId() %>" class="box" onclick="showMovieInfoPage(this.id)">
					<img src="" alt="Movie 1 image">
					
					<h4>Movie Name: <%out.write(m.getMovieName()); %></h4>
					<h4>Movie Rating: <%out.write(m.getAvgRating()); %></h4>
				</div>
				
				<%
            }
        	
            %>
            
			</div>
			</form>
		</section>
	</main>
	<footer id="main-footer">
		<p>&copy; movieTicketSystem</p>
	</footer>
</body>

<script>
function showMovieInfoPage(selectedMovieId){
	console.log(this.id);
	document.getElementById("selectedMovieId").value=selectedMovieId;
	document.getElementById("seelectedMovieForm").submit();
	
}
</script>
