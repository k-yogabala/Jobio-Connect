<%-- 
    Document   : changePasswordAdmin
    Created on : 2 Jun, 2023, 8:24:56 PM
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
       <% try{
           String passG= request.getParameter("newPass");
          
           Class.forName("oracle.jdbc.driver.OracleDriver");
              String url = "jdbc:oracle:thin:@//localhost:1521/XE";
              String user = "system";
               Connection con = DriverManager.getConnection(url, user, "root");
                String data="";
                 PreparedStatement pst=con.prepareStatement("update adminRegEgs set pass1=?, pass2=? where userid=?" );
               pst.setString(1,passG );
               pst.setString(2, passG);
               pst.setString(3, "bikash");
              pst.executeUpdate();
              response.sendRedirect("admin_logged_panel.jsp?message=changePassSuccess");
                }catch(Exception e){
                    response.sendRedirect("admin_logged_panel.jsp?message=failure");
                       out.print(e);
                       
                   }
                 %>
    </body>
</html>
