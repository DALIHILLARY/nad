package examples;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import javax.sql.*;

public class signup extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            out.println(e);
        }

        String Fname = request.getParameter("fname");
        String Lname = request.getParameter("lname");
        String Email = request.getParameter("email");
        String Contact = request.getParameter("contact");
        String Password = request.getParameter("password");

        String url = "jdbc:mysql://localhost:3306/transport";
        String dbUsername = "root";
        String dbPassword = "447525442826";

        try {
            Connection con = DriverManager.getConnection(url, dbUsername, dbPassword);

            String selekt = "SELECT * FROM customer WHERE Email ='" + Email + "'";

            Statement stmt = con.createStatement();
            ResultSet row = stmt.executeQuery(selekt);

            if (row.next()) {
                HttpSession session = request.getSession();

                session.setAttribute("failed1", "true");
                RequestDispatcher dis = request.getRequestDispatcher("signup.jsp");
                dis.forward(request, response);
            } else {
                PreparedStatement ps = con.prepareStatement("INSERT INTO customer VALUES (?,?,?,?,?)");
                ps.setString(1, Fname);
                ps.setString(2, Lname);
                ps.setString(3, Contact);
                ps.setString(4, Email);
                ps.setString(5, Password);

                int i = ps.executeUpdate();
                if (i > 0) {
                    HttpSession session = request.getSession();

                    session.setAttribute("done", "true");
                    RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
                    dis.forward(request, response);
                }

            }

        } catch (Exception e2) {
            out.print(e2);
        }

        out.close();

    }

}
