<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String emp= request.getParameter("empid");
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                String url = "jdbc:oracle:thin:@//localhost:1521/XE";
                String user = "system";
                Connection conn = DriverManager.getConnection(url, user, "root");

                // Execute the SQL query
                String query = "SELECT * FROM empValidateEGS WHERE empid=?";

                PreparedStatement stmt = conn.prepareStatement(query);
                stmt.setString(1, emp);
                ResultSet rs = stmt.executeQuery();

                // Display the data
                out.println("<table border='1'>");
                out.println("<tr>");
                out.println("<th></th>");
                out.println("<th>Emp Id</th>");
                out.println("<th>Name</th>");
                out.println("<th>Email Id</th>");
                // Add more column headers as needed
                out.println("</tr>");

                while (rs.next()) {
                    out.println("<tr>");
                    out.println("<td>" + rs.getString(1) + "</td>");
                    out.println("<td>" + rs.getString(2) + "</td>");
                    out.println("<td>" + rs.getString(3) + "</td>");
                    // Add more columns based on your table structure
                    out.println("<td><a style=\"text-decoration:none; padding:5px;background-color:blue;color:white; margin-left:15px;border-radius:5px;cursor:pointer;\" href=\"deleteRow.jsp?empid=" + rs.getString(1) + "\">Delete</a></td>");
                    out.println("</tr>");
                }
                
                
                
                
                

                out.println("</table>");

            } catch (Exception e) {
                out.println(e);
            }
        %>
    </body>
</html>
