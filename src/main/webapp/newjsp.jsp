<%-- 
    Document   : newjsp
    Created on : 29 May, 2023, 8:03:18 PM
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
  <form id="myForm" onsubmit="return validateForm()" action="submit.php" method="POST">
  <input type="password" id="pass1" placeholder="Password" >
  <input type="password" id="pass2" placeholder="Confirm Password" >
  <input type="submit" value="Submit">
</form>

<script>
function validateForm() {
  var pass1 = document.getElementById("pass1").value;
  var pass2 = document.getElementById("pass2").value;

  if (pass1 === "" || pass2 === "") {
    alert("Please fill in all fields");
    return false;
  }

  if (pass1 !== pass2) {
    alert("Passwords do not match");
    return false;
  }

  // Additional validation logic
  // ...

  // If the form is valid, the form will be submitted to the specified action URL
  return true;
}
</script>

    </body>
</html>
