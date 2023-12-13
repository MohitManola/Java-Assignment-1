

import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;
import java.sql.SQLException;

public class Add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Add() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out =response.getWriter();
		
		try{
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mohit1","Mohit","Mohit@123");
	        String query ="INSERT INTO customerTable (firstName,lastName,Street,Address,city,State,Email,phone) VALUES (firstName,lastName,Street,Address,city,State,Email,phone)";
	        PreparedStatement pst =con.prepareStatement(query);
	        pst.execute();
	}catch(ClassNotFoundException | SQLException ex){
        		out.print(ex);
    }
		out.print("Incert Data Scucess");
}
}
