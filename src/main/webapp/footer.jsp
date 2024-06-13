<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            
            body{
                margin-top:5px;
            }
            .footer{
                margin-top: 50px;
        display: flex;
        flex-direction: row;
        justify-content: space-around;
 
  padding: 3px;
  background-color: navy;
  color: white;
 
}

.author, .links{
    justify-content: center;
    text-align: center;
    
    
}
.author p{
    padding: 10px;
    margin-top: 10px;
    text-decoration: none;
}

.author a{
    padding: 10px;
    margin-top: 10px;
    text-decoration: none;
    color: white;
    display: block;
}

.links a{
    display: block;
    padding: 10px;
    margin-top: 10px;
    text-decoration: none;
    color: white
}
           
        </style>
    </head>
    <body>
       <footer class="footer">
        <div class="author">
            <p>Team LVYGMM</p>
  <a href="mailto:bugbytekl@gmail.com">Mail us</a>
        </div>
        
  
</footer>
    </body>
</html>
