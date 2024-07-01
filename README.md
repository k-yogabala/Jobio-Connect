<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body, html {
  
   font-family: "Lucida Console", "Courier New", monospace;
   background-color: whitesmoke;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("image.jpg");

  min-height: 400px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
  
}

/* Add styles to the form container */
.container-1 {
  position: absolute;
  right: 150px;
  margin: 20px;
  max-width: 200px;
  padding: 30px;
  background-color: #33BBC5;
  margin-top:80px;
  opacity: 100%;
  border-radius: 10px;
  height: 70px;
  
}

.container-2 {
  position: absolute;
  right: 350px;
  margin: 20px;
  max-width: 200px;
  padding: 30px;
  background-color: #33BBC5;
  margin-top:80px;
  opacity: 100%;
  border-radius: 10px;
  height: 70px;
}

 .dropdown-button-1 {
       background-color: #33BBC5;
      color: white;
      padding: 0;
      border: none;
      cursor: pointer;
      width:100px;
      font-size: 20px;
      border-radius: 10px;
    }

    
 .dropdown-button-2 {
      background-color: #33BBC5;
      color: white;
      padding: 0;
      border: none;
      cursor: pointer;
      width:100px;
      font-size: 20px;
      border-radius: 10px;
    }
    
    /* Styling for the dropdown content */
    .dropdown-content-1 {
      display: none;
      position: absolute;
      background-color: #f9f9f9;
      min-width: 160px;
      box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
      z-index: 1;
    }
    
     .dropdown-content-2 {
      display: none;
      position: absolute;
      background-color: #f9f9f9;
      min-width: 160px;
      box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
      z-index: 2;
    }

    /* Styling for the dropdown content items */
    .dropdown-content-1 a {
      color: black;
      padding: 12px 16px;
      text-decoration: none;
      display: block;
    }
    
     .dropdown-content-2 a {
      color: black;
      padding: 12px 16px;
      text-decoration: none;
      display: block;
    }

    /* Styling for the dropdown content items on hover */
    .dropdown-content-1 a:hover {
      background-color: #f1f1f1;
    }
      .dropdown-content-2 a:hover {
      background-color: #f1f1f1;
    }


    /* Show the dropdown content when the button is hovered */
    .container-1:hover .dropdown-content-1 {
      display: block;
    }
    
    .container-2:hover .dropdown-content-2 {
      display: block;
    }
    
    .main-content{
        display: flex;
        flex-direction: row;
        justify-content: space-between;
    }
    .notice{
        width: 70%;
       font-size: 15px;
        font-family: Arial, Helvetica, sans-serif;
        text-align: justify;
        margin-right: 10px;
       
    }
    .notice h4{
        color: orangered;
    }
    .new-event{
        width: 30%;
      margin-top: 30px;
       border: solid 2px;
        border-radius: 5px;
        text-align: center;
    }
    
    .title-news{
        background-color: #33BBC5;
        margin: 2px;
        padding: 2px;
        color: white;
    }
    .updates{
        display: block;
        background-color: #33BBC5;
        margin-top: 2px;
        margin-bottom: 0;
        text-align: center;
        
       
        
    }
    .updates h4{
        color: white;
        padding: 0;
        margin: 0;
      
    }
    .new-event-list{
        display: block;
        width: 100%;
        
    }
    
    .news-1{
        width: 100%;
        margin: 5px;
        transition: 0.2s ease;
    }
    
    .news-1:hover{
       transform: scale(0.9);
       width: 100%;
    }
     .news-2{
        width: 100%;
        margin: 5px;
        transition: 0.2s ease;
    }
     .news-2:hover{
       transform: scale(0.9);
       width: 100%;
    }
     .news-3{
        width: 100%;
        margin: 5px;
        transition: 0.4s ease;
    }
      .news-3:hover{
       transform: scale(0.9);
       width: 100%;
    }
    .head-title{
        display:flex;
        flex-direction: row;
        width: 100%;
        height:100px;
        align-items: center;
        justify-content: space-between;
            padding: 10px 0;      
    }
    
   imgSpace{
        width: 25%;
        padding:30px;
    }
    title-space{
        width: 50%;
        padding:30px;
        margin-left: 20px;
        margin-right: 20px;
    }
    .logo{
        height: 80px;
        width: 50px;
    }
   
    .new-event-list a{
        text-decoration: none;
        color: white;
        padding: 5px;
        margin: 5px;
    }
    
    .h2title{
        font-size: 2.5rem;
        color: orangered;
        transition: cubic-bezier;
        transition-duration: infinite;
    }
    
    
</style>
</head>
<body>

    <div class="head-title">
        <div class="imgSpace">
            <img class="logo" src="logo.jpg">
        </div>
        <div class="title-space">
            <h2 class="h2title">Jobio Connect - Your Safe Harbor for Jobs </h2>
        </div>
    
        <div class="imgSpace">
            <img class="logo" src="logo.jpg">
        </div>
        
        
    </div>
    
    
    
    <jsp:include page="header.jsp"/>

<div class="bg-img">
     <div class="container-1">
    <button class="dropdown-button-1">Login</button>
    <div class="dropdown-content-1">
      <a href="admin-login.jsp">Admin</a>
      <a href="emp-login.jsp">User</a>
    </div>
    </div>
  
     <div class="container-2">
    <button class="dropdown-button-2">Register</button>
    <div class="dropdown-content-2">
      
      <a href="emp-reg.jsp">User</a>
    </div>
    </div>
   
 
</div>
    <div class="updates">
        <marquee behavior="scroll" direction="left" loop="infinte"> <h4>For any inquiries, assistance, or clarifications, please don't hesitate to reach out. We're here to provide you with the information you need. </h4></marquee>

    </div>
    
    <section class="main-content">
        <div class="notice">
            <h2>Welcome to Our Website!</h2>
        <p>
            Our website is dedicated to helping you find exciting job opportunities in various fields. Whether you're just starting your career or looking for a new challenge, we have a wide range of job listings to explore.
        </p>
        <p>
            Our platform allows job seekers to browse through different job openings, view detailed job descriptions, and apply online. We strive to make the job search process as smooth as possible for you.
        </p>
        <h3>Administrator Module</h3>
        <p>
            In addition to providing job seekers with access to job listings, our website also features an admin module. The admin module is designed for companies and organizations to post their job openings directly on our platform.
        </p>
        <p>
            With the admin module, companies can easily create, edit, and manage their job listings. This ensures that the most up-to-date and accurate job information is available to our users.
        </p>
        <p>
            We believe in connecting job seekers with the right opportunities while offering employers a user-friendly platform to showcase their job openings.
        </p></div>
        <div class="new-event">
            <div class="title-news">Updates</div>
            
            <marquee behaviour="scroll" direction="up" loop="infinite" id="myMarquee">
            <div class="new-event-list">
                <div class="news-1">
                     
                    <div style="background-color:red;display: inline-block;width: 95%;height: 30px;">
                          <a href="#">You can find the jobs available on Explore page </a>
                    </div>
                </div>
                <div class="news-2">
                     
                    <div style="background-color:blueviolet;display: inline-block;width: 95%;height: 30px;">
                         <a href="#">You can find the resources you need to prepare for interviews in prepare page</a>
                    </div>
                </div>
                
                
            </div>
                </marquee>
        </div>
        
    </section> 
    
    <jsp:include page="footer.jsp"/>
   
    <script>
        var marquee = document.getElementById("myMarquee");

marquee.addEventListener("mouseover", function() {
  marquee.stop();
});

marquee.addEventListener("mouseout", function() {
  marquee.start();
});

        </script>
  </body>
</html>
