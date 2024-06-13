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
                            
                              try {
       Class.forName("oracle.jdbc.driver.OracleDriver");
          String url = "jdbc:oracle:thin:@//localhost:1521/XE";
       String user = "system";
     Connection conn = DriverManager.getConnection(url, user, "root");
                                                                   
        
        // Execute the SQL query
        String query = "SELECT * FROM employeeEGS";
        PreparedStatement stmt = conn.prepareStatement("query");
        ResultSet rs = stmt.executeQuery(query);
        
       // Display the data
        out.println("<table border='1'>");
      /**  out.println("<tr>");
        out.println("<th>Column 1</th>");
        out.println("<th>Column 2</th>");
        // Add more column headers as needed
        
        out.println("</tr>");
        **/
        while (rs.next()) {
            out.println("<tr>");
            out.println("<td>" + rs.getString(1) + "</td>");
            out.println("<td>" + rs.getString(2) + "</td>");
            out.println("<td>" + rs.getString(3) + "</td>");
            out.println("<td>" + rs.getString(4) + "</td>");
            out.println("<td>" + rs.getString(5) + "</td>");
            out.println("<td>" + rs.getString(6) + "</td>");
            // Add more columns based on your table structure
            
            out.println("</tr>");
                     }
        
        out.println("</table>");
    } catch (Exception e) {
        e.printStackTrace();
    } 
      
    
    %>
                            
    </body>
</html>
