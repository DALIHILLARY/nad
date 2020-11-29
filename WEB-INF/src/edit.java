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

	public void doPost(HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException
    {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
		
		String url = "jdbc:mysql://localhost:3306/transport";
		String dbname = "root";
		String dbpass = "";

		try{
		   String type = request.getParameter("type");
		   
           Connection con = DriverManager.getConnection(url, dbname, dbpass);
           Statement st = con.createStatement();
		
		  if(type == "email"){
		    String email = request.getParameter("email");
		    String update = "UPDATE Customer SET Email ='" + email + "' WHERE Email ='andrew@gmail.com'";
			ResultSet send = st.executeQuery(update);
		    if(send.next()){
			  RequestDispatcher dis = request.getRequestDispatcher("tickets.jsp");
			  dis.forward(request, response);
			}
		  }else if(type == "contact"){
			String contact = request.getParameter("contact");
			String page = request.getParameter("page");
			
		    String update1 = "UPDATE Customer SET Contact ='" + contact + "' WHERE Email ='andrew@gmail.com'";
			ResultSet send1 = st.executeQuery(update
			
		    if(send1.next()){
			  if(page == "booking"){
			     RequestDispatcher dis1 = request.getRequestDispatcher("booking.jsp");
			  }else if(page == "payment"){
				 RequestDispatcher dis1 = request.getRequestDispatcher("booking.jsp");
		   	  }
			  dis1.forward(request, response);
			}
		  }
		   
		}catch(SQLException e){
		    System.out.println(e.toString());
		}catch(Exception e){
			System.out.println(e.toString());
		}
	}

}
