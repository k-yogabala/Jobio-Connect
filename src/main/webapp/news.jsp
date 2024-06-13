<%-- 
    Document   : news
    Created on : 22 May, 2023, 7:15:32 PM
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
        <jsp:include page="header.jsp"/>
        <h1>News Panel</h1>
        <div class="updates">
        <marquee behavior="scroll" direction="left" loop="infinte"> <h4>New feature added now you can access to do list in ur dashboard !!!</h4></marquee>

    </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
