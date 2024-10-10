<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In</title>
    <style>
        /* Basic reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            min-height: 100vh; /* Minimum height for full screen */
            display: flex;
            flex-direction: column;
        }

        /* Navigation Bar */
        .navbar {
            display: flex; /* Flexbox for navbar */
            justify-content: space-between; /* Space between title and button */
            align-items: center; /* Center items vertically */
            background-color: rgba(255, 0, 0, 0.8); /* Red background with some transparency */
            color: #ffffff; /* White text for contrast */
            padding: 15px;
            font-size: 1.5em;
            font-weight: bold;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width: 100%; /* Make navbar full width */
            position: fixed; /* Fix navbar at the top */
            top: 0; /* Position at the top */
            z-index: 10; /* Make sure it is above other elements */
        }

        .navbar-title {
            flex: 1; /* Take up remaining space */
            text-align: center; /* Center the title */
        }

        /* Button styling */
        .navButton {
            background-color: #c0392b; /* Darker red button background color */
            color: white; /* Text color */
            border: none; /* No border */
            border-radius: 8px; /* Rounded corners */
            padding: 10px 20px; /* Button padding */
            cursor: pointer; /* Pointer cursor on hover */
            font-size: 1em; /* Text size */
            transition: background-color 0.3s; /* Animation on hover */
            margin-left: 20px; /* Space from the title */
        }

        .navButton:hover {
            background-color: #e74c3c; /* Lighter red on hover */
        }

        /* Fixed background image container */
        .image-container {
            flex: 1; /* Allow this section to take the remaining space */
            display: flex;
            justify-content: center; /* Center content horizontally */
            align-items: center; /* Center content vertically */
            background-image: url('images/Login.jpeg'); /* Full background image */
            background-size: cover; /* Cover the entire area */
            background-position: center; /* Center the image */
            margin-top: 80px; /* Space below navbar */
            z-index: 1; /* Ensure it is above the background */
        }

        /* Content within the image container */
        .page-title {
            background-color: rgba(255, 255, 255, 0.7); /* Light background for readability */
            padding: 20px;
            border-radius: 10px;
            z-index: 2; /* Ensure it is above the background */
            text-align: center; /* Center text */
        }

        /* Footer styling */
        footer {
            background-color: rgba(255, 0, 0, 0.8); /* Red background */
            color: #ffffff; /* White text */
            text-align: center; /* Center text */
            padding: 20px; /* Padding around text */
            z-index: 1; /* Ensure it is above the background */
        }

        /* Adjust navbar for responsiveness */
        @media (max-width: 768px) {
            .navbar {
                font-size: 1.2em; /* Smaller font size on mobile */
                padding: 10px;
            }

            .navButton {
                font-size: 0.9em; /* Smaller text size on mobile */
            }

            .content {
                font-size: 1.5em; /* Smaller text size for content on mobile */
            }
        }
    </style>
</head>
<body>
    <!-- Top Navigation Bar -->
    <div class="navbar">
        <div class="navbar-title">Tracking & Managing Student Learning Outcomes.</div>
        <button class="navButton" onclick="location.replace('/index.jsp')">Sign In</button>
    </div>

    <!-- Fixed Background Image Container -->
    <div class="image-container">
        <!-- You can add content here if needed -->
    </div>

    <!-- Footer -->
    <footer>
        &copy; 2024 Your Company. All rights reserved. | <a href="#" style="color: #ffffff; text-decoration: underline;">Privacy Policy</a>
    </footer>

    <script>
        // Optional: Any additional JavaScript functionality can be added here
    </script>
</body>
</html>
