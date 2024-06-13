<%-- 
    Document   : validateAdminReg
    Created on : 23 May, 2023, 4:49:32 PM
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
        String empidG= request.getParameter("empid");
        String nameG= request.getParameter("name");
        String emailG= request.getParameter("email");
        String contactG= request.getParameter("contact");
        String genderG= request.getParameter("gender");
        String stateG= request.getParameter("state");
        String userIdG= request.getParameter("userid");
        String pass1G= request.getParameter("pass1");
        String pass2G= request.getParameter("pass2");
        
        out.println(empidG + " " + nameG + " " + emailG + " " + contactG+ " " + genderG+ "" + stateG + " " + userIdG+" " + pass1G + " "+ pass2G);
        
        try{
  Class.forName("oracle.jdbc.driver.OracleDriver");
  String url = "jdbc:oracle:thin:@//localhost:1521/XE";
  String user = "system";
  Connection con = DriverManager.getConnection(url, user, "root");
    
  PreparedStatement pst=con.prepareStatement("insert into employeeEGS values(?,?,?,?,?,?,?,?,?)");
  pst.setString(1, empidG);
  pst.setString(2, nameG);
  pst.setString(3, emailG);
  pst.setString(4, contactG);
  pst.setString(5, genderG);
  pst.setString(6, stateG);
  pst.setString(7, userIdG);
  pst.setString(8, pass1G);
  pst.setString(9, pass2G);
  pst.executeUpdate();
    
 response.sendRedirect("emp-login.jsp?message=success");

    }catch(Exception e){
     e.printStackTrace();
    }
        
        
        %>
    </body>
</html>
