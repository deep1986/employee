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
 * Servlet implementation class EmpDelete
 */
public class EmpDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpDelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		// TODO Auto-generated method stub
				
				int empID=Integer.parseInt(request.getParameter("empID"));
				System.out.println(empID);
				Connection con;
				try 
				{
					Class.forName("com.mysql.cj.jdbc.Driver");
					String db_URL="jdbc:mysql://localhost/emp";
					String username="root";
					String password="root";
					con =	DriverManager.getConnection(db_URL,username,password);

					PreparedStatement ps=con.prepareStatement("delete from register_emp where empID=?"); 
					//ps.setString(1,firstname); ps.setString(2,lastname); ps.setString(3,emailid); ps.setInt(4,Integer.parseInt(salary));ps.setLong(5,Long.parseLong(phoneno));
				ps.setInt(1, empID);
					
					ps.executeUpdate();
					

		     	}
				catch(Exception e)
				{
					e.printStackTrace();
				}
				request.getRequestDispatcher("/displayEmployeeDetails.jsp").forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
