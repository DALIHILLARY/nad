package examples;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class payment extends HttpServlet {
    public void init() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
    public void doPost(HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException
    {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
		
	    String price = request.getParameter("price");
	    String route = request.getParameter("route");

		String url = "jdbc:mysql://localhost:3306/ticketing";
		String dbname = "root";
		String dbpass = "";

		try{
           Connection con = DriverManager.getConnection(url, dbname, dbpass);
           Statement st = con.createStatement();
		
		   String check = "INSERT INTO Trips VALUES(" + route +"," + price + '"';
		   ResultSet alright = st.executeQuery(check);
		   request.setAttribute("email", "opioandrew581@gmail.com");
		   if(alright.next()){
			  RequestDispatcher dis = request.getRequestDispatcher("/tickets.jsp");
			  dis.forward(request, response);
			}else {
			  RequestDispatcher dis = request.getRequestDispatcher("/payment.jsp");
			  dis.forward(request, response);
			}
		}catch(SQLException e){
		    System.out.println(e.toString());
		}catch(Exception e){
			System.out.println(e.toString());
		}
    }
        
    
}



