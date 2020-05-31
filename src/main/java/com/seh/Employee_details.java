package com.seh;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Employee_details
 */
public class Employee_details extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Employee_details() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String firstname=request.getParameter("firstname");
		System.out.println(firstname);
		String lastname=request.getParameter("lastname");
		System.out.println(lastname);
		String emailid=request.getParameter("emailid");
		System.out.println(emailid);
		String salary=request.getParameter("salary");
		System.out.println(salary);
		String phoneno=request.getParameter("phonenumber");
		System.out.println(phoneno);
		Connection con;
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			String db_URL="jdbc:mysql://localhost/emp";
			String username="root";
			String password="root";
			con =	DriverManager.getConnection(db_URL,username,password);

			PreparedStatement ps=con.prepareStatement("insert into register_emp (empID,firstname,lastname,emailid,salary,phoneno) values(null,?,?,?,?,?)"); 
			ps.setString(1,firstname); ps.setString(2,lastname); ps.setString(3,emailid); ps.setInt(4,Integer.parseInt(salary));ps.setLong(5,Long.parseLong(phoneno));
			ps.executeUpdate();
     	}
		catch(Exception e)
		{
			
		}
		request.getRequestDispatcher("/displayEmployeeDetails.jsp").forward(request, response);
	}
		

}
