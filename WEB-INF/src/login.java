package examples;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class login extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            out.println(e);
        }

        String email = request.getParameter("email");
        String password = request.getParameter("pass");

        String url = "jdbc:mysql://localhost:3306/transport";

        String dbUsername = "root";
        String dbPassword = "447525442826";
        String query = "SELECT * FROM customer WHERE Email ='" + email + "' AND Password = '" + password + "'";

        try {

            Connection con = DriverManager.getConnection(url, dbUsername, dbPassword);
            out.println("connected");
            HttpSession session = request.getSession();

            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(query);

            if (rs.next()) {
                session.setAttribute("email", email);
                // session.removeAttribute("granted", "true");

                RequestDispatcher dis = request.getRequestDispatcher("booking.jsp");
                dis.forward(request, response);
            } else {
                session.setAttribute("failed", "true");
                RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
                dis.forward(request, response);
            }
        } catch (Exception e) {
            out.println(e);
        }

    }
}
