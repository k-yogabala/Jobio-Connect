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
        boolean flagempid=false,flagUserid=false;
       //checking employee Id duplicancy   
        try{
  Class.forName("oracle.jdbc.driver.OracleDriver");
  String url = "jdbc:oracle:thin:@//localhost:1521/XE";
  String user = "system";
  Connection con = DriverManager.getConnection(url, user, "root");
    
  PreparedStatement pst=con.prepareStatement("select empid from adminRegEgs where empid");
    pst.setString(1, empidG);
  ResultSet rs= pst.executeQuery();
  if(rs.next()){
      flagempid=true;
    }
  
  } catch(Exception e){
         System.err.println("Error occurred: " + e.getMessage());
   }
        
    
   
      //checking username duplicancy 
    try{
  Class.forName("oracle.jdbc.driver.OracleDriver");
  String url = "jdbc:oracle:thin:@//localhost:1521/XE";
  String user = "system";
  Connection con = DriverManager.getConnection(url, user, "root");
    
  PreparedStatement pst=con.prepareStatement("select userid from adminRegEgs where userid");
  pst.setString(1, userIdG);
  ResultSet rs= pst.executeQuery();
   if(rs.next()){
      flagUserid=true;
    }
  
  
   
  } catch(Exception e){
         System.err.println("Error occurred: " + e.getMessage());
   }
    
    if(!flagempid){
        request.getSession().setAttribute("empid", empidG);
request.getSession().setAttribute("name", nameG);
request.getSession().setAttribute("email", emailG);
request.getSession().setAttribute("contact", contactG);
request.getSession().setAttribute("gender", genderG);
request.getSession().setAttribute("state", stateG);
request.getSession().setAttribute("userid", userIdG);
       response.sendRedirect("admin-reg.jsp?message=duplicateEmp");
    }
    else if(!flagUserid){
        response.sendRedirect("admin-reg.jsp?message=duplicateUser");
  }else if(!flagempid &&  !flagUserid){
     response.sendRedirect("admin-reg.jsp?message=duplicateEmpUser");
  }else {
    
      try{
  Class.forName("oracle.jdbc.driver.OracleDriver");
  String url = "jdbc:oracle:thin:@//localhost:1521/XE";
  String user = "system";
  Connection con = DriverManager.getConnection(url, user, "root");
    
  PreparedStatement pst=con.prepareStatement("insert into adminRegEgs values(?,?,?,?,?,?,?,?,?)");
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
    
 response.sendRedirect("admin-reg.jsp?message=success");

    }catch(Exception e){
     e.printStackTrace();
    }
  }
      
        
        %>
    </body>
</html>
