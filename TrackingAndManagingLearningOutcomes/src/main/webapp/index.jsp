<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In</title>
    <link rel="stylesheet" href="css/styles.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Navbar at the top */
        .navbar {
            background-color: #c00; /* Dark Red */
            color: white;
            text-align: center;
            padding: 15px;
            font-size: 24px;
            width: 100%;
            position: absolute;
            top: 0;
            left: 0;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.5);
        }

        /* Main content container */
        .mainContent {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin-top: 50px; /* Space below navbar */
        }

        /* Login container */
        .loginContainer {
            background-color: white;
            border: 1px solid #ccc;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
            width: 400px;
        }

        /* Login header */
        .loginHeader {
            font-size: 24px;
            text-align: center;
            margin-bottom: 20px;
            color: #c00; /* Dark Red */
        }

        /* Input labels */
        div {
            margin-bottom: 8px;
            font-weight: bold;
        }

        /* Input fields */
        input[type="text"], input[type="password"], select {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        /* Sign In button */
        .signinButton {
            background-color: #c00; /* Dark Red */
            color: white;
            padding: 12px;
            width: 100%;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .signinButton:hover {
            background-color: #a00; /* Darker red on hover */
        }

        /* Acknowledgment message */
        #ack {
            text-align: center;
            margin-top: 15px;
            font-weight: bold;
        }

    </style>
</head>
<body>
    <!-- Top Navigation Bar -->
    <div class="navbar">Tracking & Managing Student Learning Outcomes</div>

    <!-- Main content: Login form in center -->
    <div class="mainContent">
        <div class="loginContainer">
            <div class="loginHeader">Sign In</div>
            <div class="loginContent">
                <div>Select Role*</div>
                <select id="roleSelect">
                    <option value="admin">Admin</option>
                    <option value="student">Student</option>
                    <option value="faculty">Faculty</option>
                </select>

                <div>Username*</div>
                <input type="text" id="T1" placeholder="Enter your username" />

                <div>Password*</div>
                <input type="password" id="T2" placeholder="Enter your password" />

                <button class="signinButton" onclick="login()">Sign In</button>

                <div id="ack"></div>
            </div>
        </div>
    </div>

    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript">
    function login() {
        var username = document.getElementById('T1').value.trim();
        var password = document.getElementById('T2').value.trim();
        var role = document.getElementById('roleSelect').value;
        var ack = document.getElementById('ack');
        ack.style.color = "red";

        // Validate username and password
        if (username === "") {
            ack.innerHTML = "Username cannot be empty!";
            return;
        }
        
        if (password === "") {
            ack.innerHTML = "Password cannot be empty!";
            return;
        }

        if (!/^[a-zA-Z0-9]+$/.test(username)) { // Check if username is alphanumeric (adjust as needed)
            ack.innerHTML = "Enter a valid username!";
            return;
        }

        var data = JSON.stringify({
            username: username,
            password: password
        });

        var url;
        if (role === "admin") {
            url = "http://localhost:8080/admin/adminlogin";
        } else if (role === "student") {
            url = "http://localhost:8080/student/studentlogin";
        } else if (role === "faculty") {
            url = "http://localhost:8080/faculty/facultylogin";
        }

        callApi("POST", url, data, getResponse);
    }

    function getResponse(res) {
        var ack = document.getElementById('ack');
        ack.style.color = "red";
        
        if (res == 401) {
            // Invalid credentials (wrong password or username)
            ack.innerHTML = "Invalid Credentials!";
        } else if (res == 404) {
            // Invalid username
            ack.innerHTML = "Enter a valid username!";
        } else {
            // Clear the error message
            ack.innerHTML = "";
            
            var role = document.getElementById('roleSelect').value;
            if (role === "admin") {
                location.replace("/AdminHome.jsp");
            } else if (role === "student") {
                location.replace("/StudentHome.jsp");
            } else if (role === "faculty") {
                location.replace("/FacultyHome.jsp");
            }
        }
    }

    </script>
</body>
</html>
