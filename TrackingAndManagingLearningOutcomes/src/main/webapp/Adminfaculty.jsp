<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Faculty</title>
    <link rel="stylesheet" type="text/css" href="css/faculty.css">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            height: 100vh;
            background-color: #f0f8ff; /* Light background color */
        }
        /* Top navbar */
        .topnav {
            background-color: #ff4500; /* OrangeRed */
            color: white;
            padding: 14px 16px;
            text-align: center;
            font-size: 24px;
            height: 50px;
            line-height: 50px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.5);
        }
        /* Container for sidebar and content */
        .container {
            display: flex;
            flex-grow: 1;
            margin-top: 10px;
        }
        /* Sidebar */
        .navbar {
            width: 220px;
            background-color: #ff6347; /* Tomato */
            color: white;
            padding: 10px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.5);
        }
        .navbar ul {
            list-style-type: none;
            padding: 0;
        }
        .navbar ul li {
            padding: 12px;
            margin-bottom: 5px;
            border-radius: 8px;
            transition: background-color 0.3s;
        }
        .navbar ul li a {
            color: white;
            text-decoration: none;
            font-size: 16px;
            display: block;
        }
        .navbar ul li a:hover {
            background-color: #ffa07a; /* LightSalmon */
        }
        /* Content area */
        .content {
            flex-grow: 1;
            padding: 20px;
            background-color: #fffaf0; /* FloralWhite */
        }
        /* Faculty registration form */
        #facultyForm {
            display: none;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 8px;
            background-color: #fafad2; /* LightGoldenRodYellow */
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        /* Buttons */
        button {
            background-color: #32cd32; /* LimeGreen */
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
        }
        button:hover {
            background-color: #228b22; /* ForestGreen */
        }
        /* Input fields */
        input[type="text"], input[type="email"], input[type="password"], select {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        /* Footer */
        .footer {
            background-color: #ff4500;
            color: white;
            text-align: center;
            padding: 10px;
            width: 100%;
            position: absolute;
            bottom: 0;
        }
        /* Acknowledgment messages */
        #ack {
            font-size: 18px;
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <!-- Top Navbar -->
    <div class="topnav">
        Admin Faculty Dashboard
    </div>

    <!-- Main container -->
    <div class="container">
        <!-- Sidebar -->
        <div class="navbar">
            <ul>
                <li><a href="#dashboard">Dashboard</a></li>
                <li><a href="#" onclick="displayFacultyForm()">Register Faculty</a></li>
                <li><a href="#" onclick="Back_To_AdminHome()">Back to Admin Home</a></li>
            </ul>
        </div>

        <!-- Main content -->
        <div class="content">
            <!-- Faculty Registration Form -->
            <form id="facultyForm">
                <label for="facultyid">Faculty ID:</label>
                <input type="text" id="facultyid" name="facultyid" required>

                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="department">Department:</label>
                <select id="department" name="department" required>
                    <option value="">Select Department</option>
                    <option value="BT">Biotechnology (BT)</option>
                    <option value="CSE">Computer Science and Engineering (CSE)</option>
                    <option value="ECE">Electronics and Communication Engineering (ECE)</option>
                    <!-- More options -->
                </select>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>

                <button type="button" onclick="submitFaculty()">Register</button>
            </form>

            <!-- Acknowledgment message -->
            <p id="ack"></p>
        </div>
    </div>

    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript">
        function displayFacultyForm() {
            document.getElementById('facultyForm').style.display = 'block';
        }

        function submitFaculty() {
            var data = JSON.stringify({
                facultyid: parseInt(document.getElementById('facultyid').value, 10),
                name: document.getElementById('name').value,
                department: document.getElementById('department').value,
                email: document.getElementById('email').value,
                password: document.getElementById('password').value
            });

            var url = "http://localhost:8080/faculty/save";
            callApi("POST", url, data, getResponse);
        }

        function getResponse(res) {
            var ack = document.getElementById("ack");
            if (res == 401) {
                ack.style.color = "red";
                ack.innerHTML = "Faculty ID already exists!";
            } else if (res == 200) {
                ack.style.color = "green";
                ack.innerHTML = "Faculty registered successfully!";
            } else {
                ack.style.color = "red";
                ack.innerHTML = "Error: " + res;
            }
        }

        function Back_To_AdminHome() {
            location.replace("/AdminHome.jsp");
        }
    </script>

    <!-- Footer -->
    <div class="footer">
        © 2024 Admin Dashboard. All rights reserved.
    </div>

</body>
</html>
