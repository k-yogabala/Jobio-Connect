<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    // Get the parameters from the request
    String userIdG = request.getParameter("userid");
    String pass2G = request.getParameter("pass2");

    // Establish database connection
    String url = "jdbc:mysql://localhost:3306/servlet";
    String dbun = "root";
    String dbpw = "Sadvi@109";

    try {
        Connection con = DriverManager.getConnection(url, dbun, dbpw);
        PreparedStatement pst = con.prepareStatement("select count(*) from login where username = ? AND password = ?");
        pst.setString(1, userIdG);
        pst.setString(2, pass2G);
        ResultSet rs = pst.executeQuery();

        if (rs.next() && rs.getInt(1) == 1) {
            // Login is valid, redirect to employee_logged_panel.jsp
            response.sendRedirect("employee_logged_panel.jsp");
        } else {
            // Login failed, redirect back to the login page with a message
            response.sendRedirect("emp-login.jsp?message=failed");
        }

        // Close the database connection
        rs.close();
        pst.close();
        con.close();
    } catch (SQLException e) {
        e.printStackTrace();
        // Redirect back to the login page with a message if there's an error
        response.sendRedirect("emp-login.jsp?message=failed");
    }
%>
