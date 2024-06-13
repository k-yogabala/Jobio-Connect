<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
#navbar {
  background-color: navy;
  padding: 10px 0;
  position: sticky;
  top: 0;
  z-index: 100;
  border-radius: 2px;
}    
    
    
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
 }

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #111;
  text-decoration: none;
}
</style>
</head>
<body>

    
<div id="navbar"> 
<ul>
  <li><a class="active" href="index.jsp">Home</a></li>
  <li><a href="contact.jsp">Contact</a></li> 
  <li><a href="analysis.jsp">Recession Analysis</a></li>
  <li><a href="job.jsp">Explore</a></li>
  <li><a href="material.jsp">Prepare</a></li>
</ul>
</div>  
    
<script> 
   window.addEventListener('scroll', function() {
  var navbar = document.getElementById('navbar');
  var content = document.getElementById('content');
  var rect = content.getBoundingClientRect();

  if (rect.top < 0) {
    navbar.classList.add('sticky');
  } else {
    navbar.classList.remove('sticky');
  }
}); </script>
</body>
</html>


