<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Home</title>
    <link rel="stylesheet" type="text/css" href="css/student.css">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }
        /* Top navbar */
        .topnav {
            background-color: #c00; /* Changed to red */
            color: white;
            padding: 14px 16px;
            text-align: center;
            font-size: 24px;
            position: relative;
            height: 50px;
            line-height: 50px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.5);
        }
        /* Main container */
        .container {
            padding: 20px;
        }
        /* Section styles */
        .section {
            background-color: #f4f4f4;
            margin: 20px 0;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }
        h2 {
            color: #333;
        }
        /* Footer */
        .footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            position: relative;
            bottom: 0;
            width: 100%;
        }
        .logout-button {
            background-color: #c00; /* Red background */
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            font-weight: bold;
        }
        .logout-button:hover {
            background-color: #900; /* Darker red on hover */
        }
    </style>
</head>
<body>

    <!-- Top Navbar -->
    <div class="topnav">
        Student Dashboard
    </div>

    <!-- Main Container -->
    <div class="container">
        <!-- Quizzes Section -->
        <div class="section">
            <h2>Quizzes</h2>
            <ul>
                <li><a href="#">Quiz 1: Introduction to Java</a></li>
                <li><a href="#">Quiz 2: Data Structures</a></li>
                <li><a href="#">Quiz 3: Web Development</a></li>
            </ul>
        </div>

        <!-- Assignments Section -->
        <div class="section">
            <h2>Assignments</h2>
            <ul>
                <li><a href="#">Assignment 1: Java Basics</a></li>
                <li><a href="#">Assignment 2: HTML & CSS</a></li>
                <li><a href="#">Assignment 3: Database Management</a></li>
            </ul>
        </div>

        <!-- Courses Section -->
        <div class="section">
            <h2>Courses</h2>
            <ul>
                <li><a href="#">Course 1: Java Programming</a></li>
                <li><a href="#">Course 2: Web Technologies</a></li>
                <li><a href="#">Course 3: Software Engineering</a></li>
            </ul>
        </div>
    </div>

    <!-- Logout Button -->
    <div style="text-align: center; margin: 20px 0;">
        <a class="nav-link" onClick="Logout()">Logout</a>
    </div>

    <!-- Footer Section -->
    <div class="footer">
        © 2024 Student Dashboard. All rights reserved.
    </div>
    <script >
    function Logout() {
        location.replace("/index.jsp");
    }</script>

</body>
</html>
