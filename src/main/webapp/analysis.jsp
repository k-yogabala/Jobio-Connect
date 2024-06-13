<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>GDP and Unemployment Data</title>
    <style>
        body {
            background-image: url("2.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        
        .cards-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .card {
            width: calc(40% - 5px);
            padding: 10px;
            margin: 10px;
            cursor: pointer;
            text-align: center;
        }

        .card img {
            max-width: 100%;
            height: auto;
        }

        .card-content {
            display: none;
        }
    </style>
</head>
<body background="1.jpg">
    <h1 align="center">GDP Decline and Unemployment Rate Over Years</h1>

    <div class="cards-container">
        <div class="card" onclick="toggleCard(this)">
            <h2>GDP Decline</h2>
            <img src="gdp.jpg" alt="GDP Decline Graph">
            <div class="card-content">
                <p>This graph shows the percentage of GDP decline over the years.</p>
            </div>
        </div>

        <div class="card" onclick="toggleCard(this)">
            <h2>Unemployment Rate</h2>
            <img src="unemployed.jpg" alt="Unemployment Rate Graph">
            <div class="card-content">
                <p>This graph shows the unemployment rate percentage over the years.</p>
            </div>
        </div>

        <div class="card" onclick="toggleCard(this)">
            <h2>GDP Decline and Recession Over Years</h2>
            <img src="4.jpg" alt="GDP Decline and Recession Graph">
            <div class="card-content">
                <p>This graph shows the GDP decline and recession over time.</p>
            </div>
        </div>

        <div class="card" onclick="toggleCard(this)">
            <h2>Duration and Severity of Recession</h2>
            <img src="3.jpg" alt="Duration and Severity of Recession Graph">
            <div class="card-content">
                <p>This graph shows the duration and severity of recession.</p>
            </div>
        </div>
    </div>

    <script>
        function toggleCard(card) {
            var content = card.querySelector('.card-content');
            content.style.display = content.style.display === 'none' ? 'block' : 'none';
        }
    </script>
</body>
</html>