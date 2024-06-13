<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>
<style> 
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style>
<body>

<div class="about-section">
  <h1>Contact Page</h1>
   
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="yola.jpeg"height="300" alt="Jane" style="width:70%" >
      <div class="container">
        <h2>K.Yogabala</h2>
        <p class="title">Team member 1</p>
        <p>I am a fullstack Developer</p>
        <p>yogabala@gmail.com</p>
        <p><a href="yolacontact.html" class="button">Contact</a> </p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="pichi.jpeg"height="300" alt="Mike" size="cover" style="width:70%">
      <div class="container">
        <h2>K.Sreeja</h2>
        <p class="title">Team member 2</p>
        <p>I am a fullstack Developer</p>
        <p>sreeja@gmail.com</p>
         <p><a href="sreejacontact.html" class="button">Contact</a> </p>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="sadvika.jpeg"height="300" alt="John" style="width:70%">
      <div class="container">
        <h2>K.Sadvika</h2>
        <p class="title">Team member 3</p>
        <p>I am a fullstack Developer</p>
        <p>sadvika@gmail.com</p>
        <p><a href="sadvikacontact.html" class="button">Contact</a> </p>
      </div>
    </div>
  </div>
</div>

</body>