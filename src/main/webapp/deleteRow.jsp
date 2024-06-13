<%-- 
    Document   : deleteRow
    Created on : 5 Jun, 2023, 7:33:15 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
       <%
  
     String empid = request.getParameter("empid");
    try{
       
            Class.forName("oracle.jdbc.driver.OracleDriver");
                String url = "jdbc:oracle:thin:@//localhost:1521/XE";
                  String user = "system";
              Connection con = DriverManager.getConnection(url, user, "root");
                                                                     
    // Perform the database delete operation
    PreparedStatement statement = con.prepareStatement("DELETE FROM employeeEGS WHERE empid = ?");
    statement.setString(1, empid);
    statement.executeUpdate();
response.sendRedirect("admin_logged_panel_ViewEmployee.jsp?message=deleted");
    }
catch(Exception e){
        out.println(e);
 }
%>
    </body>
</html>
