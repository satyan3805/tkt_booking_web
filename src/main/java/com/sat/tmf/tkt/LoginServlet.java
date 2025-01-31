package com.sat.tmf.tkt;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private List<User> registeredUserList = new ArrayList<User>();
	private List<Movie> moviesList = new ArrayList<Movie>();

	@Override
	public void init() throws ServletException {
		User ram = new User("1234", "ram");
		User lee = new User("3456", "lee");

		registeredUserList.add(lee);
		registeredUserList.add(ram);

		Movie kgf = new Movie(1, "KGF", "4.4", 2019, 2.30);
		Movie rrr = new Movie(2, "RRR", "4.9", 2020, 3.30);
		Movie leo = new Movie(3, "LEO", "4.5", 2021, 2.10);
		Movie pushpa = new Movie(4, "PUSHPA", "4.1", 2017, 2.50);
		Movie f3 = new Movie(5, "F3", "4.8", 2016, 2.40);
		Movie vikram = new Movie(6, "VIKRAM", "4.0", 2020, 2.70);
		Movie arya = new Movie(7, "ARYA", "4.3", 2019, 1.30);
		Movie khaidi = new Movie(8, "KHAIDI", "4.9", 2019, 2.00);
		Movie raj = new Movie(9, "RAJ", "4.9", 2019, 2.00);

		moviesList.add(rrr);
		moviesList.add(kgf);
		moviesList.add(leo);
		moviesList.add(pushpa);
		moviesList.add(f3);
		moviesList.add(vikram);
		moviesList.add(arya);
		moviesList.add(khaidi);
		moviesList.add(raj);
		moviesList.add(raj);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("user_name");
		String password = request.getParameter("password");

//		Class.forName("");
//		Connection con = DriverManager.getConnection(url,username,password);
//		Statement stmt = con.createStatement();
//		String query = "select * from users where username='"+username+"'";
//		ResultSet rs = stmt.execute(query);
//		while(rs.next()) {
//			
//		}
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test_tktbooking", "root", "root");
			// here sonoo is database name, root is username and password
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from test_user where userName ='"+username+"'");
			String loggedInUser = null;
			while (rs.next()) {
				System.out.println(rs.getInt(1) + "  " + rs.getString(2) + "  " + rs.getString(3)+" "+rs.getString("userName") + " "+rs.getString("password"));
				if(rs.getString("userName").equals(username)) {
					if(rs.getString("password").equals(password)) {
						loggedInUser = username;
						response.sendRedirect("http://localhost:8081/tkt_booking_web/dashboard.jsp");
					}else {
						response.sendRedirect("http://localhost:8081/tkt_booking_web/index.html");
					}
				}
			}
			if(loggedInUser == null) {
				response.sendRedirect("http://localhost:8081/tkt_booking_web/index.html");
			}
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		for (User user : registeredUserList) {
			if (username.equalsIgnoreCase(user.getUsername())) {
				if (password.equals(user.getPassword())) {
					ServletContext context = request.getServletContext();
					context.setAttribute("movieList", moviesList);

					HttpSession session = request.getSession();
					session.setAttribute("username", user);
					System.out.println(username + " is a Valid User");

					response.sendRedirect("http://localhost:8081/tkt_booking_web/dashboard.jsp");
				} else {
					System.out.println("Incorrect credentials");
					response.getWriter().print("Sorry UserName or Password Error!");
//					RequestDispatcher rd=request.getRequestDispatcher("/index.html"); 
//					rd.forward(request, response);
					response.sendRedirect("http://localhost:8081/tkt_booking_web/index.html");
				}
			}
		}
	}

	private String getMovieListHtml() {
		StringBuffer sb = new StringBuffer();
		sb.append("<form id=\"movieform\" action =\"/tkt_booking_web/MovieServlet\">");
		sb.append("<input id=\"selectedMovieId\" type=\"hidden\" name=\"selectedMovieId\"/>");

		for (Movie movie : moviesList) {
			sb.append("<img id=\"" + movie.getMovieId()
					+ "\" src=\"default_movie_icon.png\" height=\"150\" width=\"150\" onclick=\"submitMovieForm(this.id)\"/>");
			sb.append("\n");
		}
		sb.append("</form>");
		return sb.toString();
	}
}
