<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Login</title>      
        
                  <script>
    // Function to retrieve query parameter from URL
    function getQueryParam(param) {
      var urlParams = new URLSearchParams(window.location.search);
      return urlParams.get(param);
    }

    // Function to display alert message
    function showAlert() {
      var message = getQueryParam('message');
      if (message === 'failed') {
        alert('Login Failed');
      } 
  }

    // Call the showAlert function on page load
    window.onload = showAlert;
  </script>
        
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
    }

    .container {
      max-width: 400px;
      margin: 50px auto;
      background-color: #fff;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    .container h2 {
      text-align: center;
      margin-bottom: 20px;
    }

    .form-group {
      margin-bottom: 20px;
    }

    .form-group label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
    }

    .form-group input[type="text"],
    .form-group input[type="password"] {
      width: 100%;
      padding: 10px;
      border-radius: 3px;
      border: 1px solid #ccc;
    }

    .form-group input[type="submit"] {
      width: 100%;
      padding: 10px;
      border-radius: 3px;
      border: none;
      background-color: #4CAF50;
      color: #fff;
      cursor: pointer;
    }

    .form-group input[type="submit"]:hover {
      background-color: #45a049;
    }

    .form-group input[type="submit"]:focus {
      outline: none;
    }

    .form-group .forgot-password {
      text-align: right;
      font-size: 13px;
      color: #999;
    }

    .form-group .forgot-password a {
      color: #999;
      text-decoration: none;
    }
  </style>
</head>
<body>
      
        <jsp:include page="header.jsp"/>
  <div class="container">
    <h2>Employee Login</h2>
    <form method="post" action="validateEMPLogin.jsp">
      <div class="form-group">
        <label for="username">Username:</label>
        <input type="text" id="username" name="userid" required>
      </div>

      <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" id="password" name="pass2" required>
      </div>

      <div class="form-group">
        <input type="submit" value="Login">
      </div>

     
       <div style="display: inline;">
  <p style="display: inline;">Not Registered?</p>
  <a href="emp-reg.jsp" style="display: inline; width: 20px; background-color: navy;color: white;text-decoration: none;padding: 5px;">Register here</a>
</div>
        
     
    </form>
  </div>


        
        <jsp:include page="footer.jsp"/>
    </body>
</html>
