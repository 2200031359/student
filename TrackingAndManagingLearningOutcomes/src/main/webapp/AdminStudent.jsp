<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="css/styles.css" />
    <style>
        body {
            display: flex;
            flex-direction: column; /* Changed to column for top navbar */
            margin: 0; /* Remove default body margin */
            height: 100vh; /* Set body height to full viewport height */
        }
        .navbar {
            width: 100%; /* Full width for the navbar */
            background-color: #c62828; /* Red color for the navbar */
            color: white;
            padding: 15px; /* Increased padding for navbar */
            display: flex; /* Flexbox for alignment */
            justify-content: space-between; /* Space between brand and links */
            align-items: center; /* Center items vertically */
            box-shadow: 0 2px 5px rgba(0,0,0,0.5); /* Shadow for depth */
        }
        .navbar h3 {
            margin: 0; /* Remove margin for brand */
            font-size: 24px; /* Increased font size for title */
        }
        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px 15px; /* Increased padding for links */
            border-radius: 4px; /* Rounded corners for links */
            margin-left: 20px; /* Space between links */
            font-size: 18px; /* Increased font size for links */
        }
        .navbar a:hover {
            background-color: #b71c1c; /* Darker red on hover */
        }
        .content {
            padding: 20px; /* Padding for content area */
            flex-grow: 1; /* Allow content to expand */
            overflow-y: auto; /* Allow scrolling if content exceeds the viewport */
            text-align: center; /* Center-align content */
        }
        .registrationWindow {
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
            margin-bottom: 20px; /* Space between registration form and image */
        }
        .footer {
            background-color: #b71c1c; /* Footer color */
            color: white;
            text-align: center;
            padding: 15px; /* Increased padding for footer */
            position: relative;
            bottom: 0;
            width: 100%;
        }
        .middle-image {
            margin: 20px 0; /* Margin above and below the image */
            max-width: 100%; /* Responsive image */
            height: auto; /* Maintain aspect ratio */
        }
        /* New styles for input fields */
        input[type="text"], input[type="email"], input[type="password"] {
            width: 200px; /* Set a specific width */
            height: 30px; /* Set a specific height */
            padding: 5px; /* Add some padding inside the boxes */
            margin-top: 5px; /* Space above the input */
            border-radius: 4px; /* Rounded corners */
            border: 1px solid #ccc; /* Border color */
        }
    </style>
</head>
<body>
    <div class="navbar">
        <h3>Admin Dashboard</h3>
        <div>
            <a href="#" onclick="displayStudentRegistration()">Register Student</a>
            <a href="#" onclick="AdminHome()">Return to Admin Home</a>
        </div>
    </div>
    
    <div class="content">
        <div id="registrationForm" class="registrationWindow" style="display:none;">
            <div class="registrationHeader">Register Student</div>
            <div class="registrationContent">
                <div style="display:block;padding-top:20px">Username*</div>
                <input type="text" id="username" />
                
                <div style="display:block;padding-top:20px">First Name*</div>
                <input type="text" id="firstName" />
                
                <div style="display:block;padding-top:20px">Last Name*</div>
                <input type="text" id="lastName" />
                
                <div style="display:block;padding-top:20px">Email*</div>
                <input type="email" id="email" />
                
                <div style="display:block;padding-top:20px">Password*</div>
                <input type="password" id="password" />
                
                <button class="registerButton" onclick="registerStudent()">Register</button>
                <div style="display:block;height:80px;line-height:80px">
                    <label id="ack"></label>
                </div>
            </div>
        </div>

        <!-- Add an image in the middle of the content -->
        <img src="path/to/your/image.jpg" alt="Admin Dashboard Image" class="middle-image" />

    </div>

    <div class="footer">
        <p>&copy; 2024 Admin Dashboard. All Rights Reserved.</p>
    </div>

    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript">
        function displayStudentRegistration() {
            document.getElementById('registrationForm').style.display = 'block';
            // Hide other content if necessary
        }

        function registerStudent() {
            var data = JSON.stringify({
                username: document.getElementById('username').value,
                firstname: document.getElementById('firstName').value,
                lastname: document.getElementById('lastName').value,
                email: document.getElementById('email').value,
                password: document.getElementById('password').value
            });

            var url = "http://localhost:8080/student/save"; // Adjust URL as needed
            callApi("POST", url, data, getResponse);
        }

        function getResponse(res) {
            if (res === "200") {
                document.getElementById('ack').style.color = "green";
                document.getElementById('ack').innerHTML = "Registration successful!";
            } else {
                document.getElementById('ack').style.color = "red";
                document.getElementById('ack').innerHTML = "Registration failed!";
            }
        }
        
        function AdminHome() {
            location.replace("/AdminHome.jsp");
        }
    </script>
</body>
</html>
