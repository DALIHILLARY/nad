package examples;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class payment extends HttpServlet {
	public void init() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();

		String url = "jdbc:mysql://localhost:3306/transport";
		String dbname = "root";
		String dbpass = "447525442826";

		try {
			HttpSession session = request.getSession();

			String email = (String) session.getAttribute("email");

			String date = request.getParameter("date");
			String time = request.getParameter("time");
			String route = request.getParameter("route");
			String seat = request.getParameter("seat");

			Connection con = DriverManager.getConnection(url, dbname, dbpass);
			String add = "INSERT INTO bookings VALUES(?, ?, ?, ?, ?, ?)";

			PreparedStatement st = con.prepareStatement(add);
			st.setString(1, route);
			st.setString(2, date);
			st.setString(3, email);
			st.setString(4, time);
			st.setString(5, "123");
			st.setString(6, seat);

			int a = st.executeUpdate();

			if (a > 0) {
				RequestDispatcher dis = request.getRequestDispatcher("tickets.jsp");
				dis.forward(request, response);
			}
		} catch (SQLException e) {
			System.out.println(e.toString());
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}

}
