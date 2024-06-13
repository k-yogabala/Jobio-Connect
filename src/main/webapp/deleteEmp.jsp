<%-- 
    Document   : deleteEmp
    Created on : 3 Jun, 2023, 11:39:16 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Employee</title>
    </head>
    <body>
         <%
                                                   String userin=request.getParameter("inputUserID");
                                                   String empin=request.getParameter("inputEmpID");
                                                   try{
                                                          Class.forName("oracle.jdbc.driver.OracleDriver");
                                                                     String url = "jdbc:oracle:thin:@//localhost:1521/XE";
                                                                    String user = "system";
                                                                     Connection con = DriverManager.getConnection(url, user, "root");
                                                                    
                                                                        PreparedStatement pst=con.prepareStatement("delete employeeEGS where userid=? and empid=?" );
                                                                        pst.setString(1,userin );
                                                                        pst.setString(2,empin );
                                                                        pst.executeUpdate();
                                                                       response.sendRedirect("admin_logged_panel_RemoveEmployee.jsp?message=deleted");
                                                   }
                                                   catch(Exception e){
                                                       out.print(e);
                                                   }
                                                   
                                                   %>
    </body>
</html>
