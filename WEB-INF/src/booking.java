package examples;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class booking extends HttpServlet {
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

		String email = request.getParameter("email");
		String route = request.getParameter("route");
		String date = request.getParameter("date");
		String time = request.getParameter("time");

		String url = "jdbc:mysql://localhost:3306/transport";
		String dbname = "root";
		String dbpass = "447525442826";

		try {

			Connection con = DriverManager.getConnection(url, dbname, dbpass);

			if (con != null) {
			} else {
				out.println("<p>Not Connected</p>");
			}

			String ck = "SELECT * FROM bookings WHERE Route ='" + route + "' AND Date ='" + date + "' AND Time ='"
					+ time + "'";

			Statement s = con.createStatement();
			ResultSet row1 = s.executeQuery(ck);

			int i = 0;

			while (row1.next()) {
				i++;
			}

			if (i == 64) {
				RequestDispatcher dis = request.getRequestDispatcher("booking.jsp");
				dis.forward(request, response);
			} else {
				int x = i;
				String selekt = "SELECT * FROM fare WHERE Route ='" + route + "'";

				Statement stmt = con.createStatement();
				ResultSet row2 = stmt.executeQuery(selekt);

				if (row2.next()) {
					String cost = row2.getString("Cost");

					HttpSession session = request.getSession();
					session.setAttribute("price", cost);
					session.setAttribute("route", route);
					session.setAttribute("date", date);
					session.setAttribute("time", time);
					session.setAttribute("count", x);

					String check = "INSERT INTO pending VALUES(?, ?, ?, ?, ?, ?, ?)";

					PreparedStatement st = con.prepareStatement(check);
					st.setString(1, route);
					st.setString(2, date);
					st.setString(3, time);
					st.setInt(4, 0);
					st.setString(5, "email");
					st.setString(6, "Opio");
					st.setString(7, "marvin");

					int a = st.executeUpdate();

					if (a > 0) {
						RequestDispatcher dis = request.getRequestDispatcher("payment.jsp");
						dis.forward(request, response);
					}
					st.close();
				}

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
