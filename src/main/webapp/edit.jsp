<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit Employee</title>
</head>
<body>
    <%@page import="java.sql.*" %>
    
    <% 
    // Get the employee ID from the request parameter
    String empid = request.getParameter("id");
    
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        String url = "jdbc:oracle:thin:@//localhost:1521/XE";
        String user = "system";
        Connection con = DriverManager.getConnection(url, user, "root");
        PreparedStatement pst = con.prepareStatement("SELECT * FROM hrEGS WHERE empid = ?");
        pst.setString(1, empid);
        ResultSet rs = pst.executeQuery();

        if (rs.next()) {
            String fullname = rs.getString("fullname");
            String email = rs.getString("email");
            String contact = rs.getString("contact");
            String gender = rs.getString("gender");
            String state = rs.getString("state");
    %>
    
    <h1>Edit Employee</h1>
    
    <form action="update.jsp" method="post">
        <input type="hidden" name="empid" value="<%= empid %>">
        Full Name: <input type="text" name="fullname" value="<%= fullname %>"><br>
        Email: <input type="text" name="email" value="<%= email %>"><br>
        Contact: <input type="text" name="contact" value="<%= contact %>"><br>
        Gender: <input type="text" name="gender" value="<%= gender %>"><br>
        State: <input type="text" name="state" value="<%= state %>"><br>
        <input type="submit" value="Update">
    </form>
    
    <% 
        }
        rs.close();
        pst.close();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    %>
    
    <br>
    <a href="javascript:history.back()">Go Back</a>
    
</body>
</html>
