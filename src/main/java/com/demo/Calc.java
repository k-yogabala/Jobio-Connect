package com.demo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
//servlet login validation
public class Calc extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Calc() 
    {
        super();  
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String un,pw;
		un=request.getParameter("Atxt");
		pw=request.getParameter("Btxt");
		response.setContentType("text/html");
		PrintWriter pr = response.getWriter();
		try
		{
			 String url,dbun,dbpw;
		      url = "jdbc:mysql://localhost:3306/servlet";
		      dbun ="root";
		      dbpw ="Sadvi@109";
		      Connection con = DriverManager.getConnection(url,dbun,dbpw);
		      PreparedStatement pst = con.prepareStatement("select count(*) from login where username = ? AND password = ?");
		      pst.setString(1,un);
		      pst.setString(2,pw);
		      ResultSet rs = pst.executeQuery();
		      if(rs.next())
		      {
		        if((rs.getInt(1))== 0)
		        {
		          pr.write("<h1> Login is InValid! </h1>");
		          pr.write("<a href = ''> Click Here to Go Back </a>");
		        }
		        else
		        {
		          pr.write("<h1> Login is Valid! </h1>");
		          pr.write("<a href = 'index.jsp'> Click Here to Go Back </a>");
		        }
		      }
		 }
	    catch (Exception e)
	    {
	      pr.print(e);
	      
	    }    
	  }
		
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
	}

}
