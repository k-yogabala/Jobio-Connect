<!DOCTYPE html>
<html>
<head>
<style>
html {
  box-sizing: border-box;
}

*,
*::before,
*::after {
  box-sizing: inherit;
  padding: 0;
  margin: 0;
}

body {
  font-size: 16px;
  line-height: 1.5;
  font-family: Roboto, sans-serif;
}

.slider {
  position: relative;
  width: 960px;
  height: 300px;
  margin: 50px auto;
  box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 1px 5px 0 rgba(0, 0, 0, 0.12),
    0 3px 1px -2px rgba(0, 0, 0, 0.2);
  overflow: hidden;
}

.slider-controls {
  position: absolute;
  bottom: 0px;
  left: 50%;
  width: 200px;
  text-align: center;
  transform: translatex(-50%);
  z-index: 1000;

  list-style: none;
  text-align: center;
}

.slider input[type="radio"] {
  position: absolute;
  top: 0;
  left: 0;
  opacity: 0;
  width: 0;
  height: 0;
}

.slider-controls label {
  display: inline-block;
  border: none;
  height: 20px;
  width: 20px;
  border-radius: 50%;
  cursor: pointer;
  background-color: #212121;
  transition: background-color 0.2s linear;
}

#btn-1:checked ~ .slider-controls label[for="btn-1"] {
  background-color: #ff4081;
}

#btn-2:checked ~ .slider-controls label[for="btn-2"] {
  background-color: #ff4081;
}

#btn-3:checked ~ .slider-controls label[for="btn-3"] {
  background-color: #ff4081;
}

#btn-4:checked ~ .slider-controls label[for="btn-4"] {
  background-color: #ff4081;
}

/* SLIDES */

.slides {
  list-style: none;
  padding: 0;
  margin: 0;
  height: 100%;
}

.slide {
  position: absolute;
  top: 0;
  left: 0;

  display: flex;
  justify-content: space-between;
  padding: 50px;
  width: 100%;
  height: 100%;

  opacity: inherit;
  transform: translatex(-100%);
  transition: transform 250ms linear;
}

.slide-content {
  width: 400px;
}

.slide-title {
  margin-bottom: 20px;
  font-size: 36px;
}

.slide-text {
  margin-bottom: 20px;
}

.slide-link {
  display: inline-block;
  padding: 10px 20px;
  color: #fff;
  border-radius: 3px;
  text-decoration: none;
  background-color: #ff4081;
}

.slide-image img {
  max-width: 100%;
}

/* Slide animations */
#btn-1:checked ~ .slides .slide:nth-child(1) {
  transform: translatex(0);
  opacity: 1;
}

#btn-2:checked ~ .slides .slide:nth-child(2) {
  transform: translatex(0);
  opacity: 1;
}

#btn-3:checked ~ .slides .slide:nth-child(3) {
  transform: translatex(0);
  opacity: 1;
}
#btn-4:checked ~ .slides .slide:nth-child(4) {
  transform: translatex(0);
  opacity: 1;
}


#btn-1:not(:checked) ~ .slides .slide:nth-child(1) {
  animation-name: swap-out;
  animation-duration: 300ms;
  animation-timing-function: linear;
}

#btn-2:not(:checked) ~ .slides .slide:nth-child(2) {
  animation-name: swap-out;
  animation-duration: 300ms;
  animation-timing-function: linear;
}

#btn-3:not(:checked) ~ .slides .slide:nth-child(3) {
  animation-name: swap-out;
  animation-duration: 300ms;
  animation-timing-function: linear;
}
#btn-4:not(:checked) ~ .slides .slide:nth-child(4) {
  animation-name: swap-out;
  animation-duration: 300ms;
  animation-timing-function: linear;
}

@keyframes swap-out {
  0% {
    transform: translatex(0);
    opacity: 1;
  }

  50% {
    transform: translatex(50%);
    opacity: 0;
  }

  100% {
    transform: translatex(100%);
  }
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: white">
 

<div class="slider"  style="background-color: white;">
  <input type="radio" name="toggle" id="btn-1" checked>
  <input type="radio" name="toggle" id="btn-2">
  <input type="radio" name="toggle" id="btn-3">
  <input type="radio" name="toggle" id="btn-4">
  

  <div class="slider-controls">
    <label for="btn-1"></label>
    <label for="btn-2"></label>
    <label for="btn-3"></label>
    <label for="btn-4"></label>
    
  </div>

  <ul class="slides">
    <li class="slide">
      <div class="slide-content">
        <h2 class="slide-title">Front end</h2>
        <p class="slide-text">Front-end development focuses on creating user interfaces and experiences for websites and applications. It involves using HTML, CSS, and JavaScript to design and implement the visual and interactive aspects.</p>
               <a href="Frontenddeveloper1.jsp" class="slide-link">Get started</a>
       
      </div>
      <p class="slide-image">
        <img src="data:image/png;base64,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" width="320" height="240">
      </p>
    </li>
      
   
    <li class="slide">
      <div class="slide-content">
        <h2 class="slide-title">Data Analyst</h2>
        <p class="slide-text">A data analyst processes and interprets data using statistical methods and software tools. They uncover trends, aiding informed decision-making for businesses by transforming complex data into actionable insights.</p>
        
        <a href="DataAnalyst1.jsp" class="slide-link">Get started</a>
      </div>
      <p class="slide-image">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7XN2zAFw1_LVqT4nurFMTHGTqusevdn4XNw&usqp=CAU"  width="320" height="240">
      </p>
    </li>
    
    <li class="slide">
      <div class="slide-content">
        <h2 class="slide-title">Marketing</h2>
        <p class="slide-text">Marketing involves creating, communicating, and delivering value to customers through strategies like advertising, promotion, and market research, with the goal of achieving business objectives and customer satisfaction.</p>
        <a href="marketing1.jsp" class="slide-link">Get started</a>
      </div>
      <p class="slide-image">
        <img src="data:image/jpeg;base64,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"  width="320" height="240">
      </p>
    </li>
    
    <li class="slide">
      <div class="slide-content">
        <h2 class="slide-title">Software Testing</h2>
        <p class="slide-text">Software testing is a critical process in software development that involves evaluating applications for functionality, performance, and reliability. It aims to uncover defects, ensure compliance with requirements, and enhance software quality before release.
</p>
        
        <a href="softwareTesting1.jsp" class="slide-link">Get started</a>
      </div>
      <p class="slide-image">
        <img src="https://frontlinesmedia.in/wp-content/uploads/2023/06/software-testing.jpg"  width="320" height="240">
      </p>
    </li>
  </ul>
</div>
<br>
<br>
</div>
 
</body>

</html>