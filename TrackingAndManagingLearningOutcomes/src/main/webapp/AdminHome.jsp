<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        /* General reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body styling */
        body {
            font-family: 'Arial', sans-serif; /* Changed font */
            background-color: #f5f5f5; /* Lighter background */
            color: #444; /* Darker text color */
            display: flex;
            flex-direction: column; /* Changed layout to column */
            height: 100vh; /* Full height */
        }

        /* Navigation bar styling */
        .navbar {
            width: 100%;
            background-color: #d32f2f; /* Red color */
            padding: 15px 40px; /* Adjusted padding */
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Added shadow */
        }

        /* Navbar brand */
        .navbar-brand {
            font-size: 1.8em; /* Increased font size */
            color: #ffffff; /* White color for brand */
            text-transform: uppercase;
            letter-spacing: 1px; /* Added letter spacing */
        }

        /* Navigation links */
        .nav-links {
            display: flex;
            gap: 20px; /* Space between links */
        }

        .nav-link {
            color: #ffffff; /* White text */
            padding: 10px 15px; /* Padding for links */
            background-color: #b71c1c; /* Darker red for link background */
            border-radius: 5px; /* Smaller radius */
            text-decoration: none; /* Remove underline */
            transition: background-color 0.3s;
        }

        .nav-link:hover {
            background-color: #ff5252; /* Lighter red hover effect */
            color: #ffffff; /* Maintain white text on hover */
        }

        /* Main content styling */
        .main-content {
            flex-grow: 1; /* Allow main content to expand */
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative; /* Position relative for image */
        }

        /* Background image */
        .background-image {
            position: absolute; /* Absolute position */
            top: 0; /* Align to top */
            left: 0; /* Align to left */
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            background-image: url('your-background-image-url.jpg'); /* Add your background image */
            background-size: cover; /* Cover entire area */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* No repeat */
            z-index: -1; /* Behind other content */
        }

        /* Dashboard content box */
        .dashboard-box {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white */
            padding: 60px; /* Increased padding */
            border-radius: 10px; /* Adjusted border radius */
            box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.1); /* Increased shadow */
            width: 80%; /* Increased width */
            max-width: 900px;
            text-align: left; /* Align text to the left */
            display: flex; /* Flexbox for layout */
            flex-direction: column; /* Column layout */
            justify-content: center; /* Center vertically */
        }

        .dashboard-box h2 {
            font-size: 2.8em; /* Increased heading size */
            color: #1976d2; /* Bright blue color */
            margin-bottom: 10px; /* Spacing between title and paragraph */
        }

        .dashboard-box p {
            font-size: 1.4em; /* Increased paragraph size */
            color: #546e7a; /* Darker gray */
        }

        /* Footer styling */
        .footer {
            background-color: #d32f2f; /* Same red color */
            color: #ffffff; /* White text color */
            text-align: center;
            padding: 20px;
            position: relative;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .navbar {
                flex-direction: column; /* Stack items in navbar */
                align-items: flex-start; /* Align to the left */
            }

            .nav-links {
                flex-direction: column; /* Stack links */
                width: 100%; /* Full width */
            }

            .nav-link {
                width: 100%; /* Full width links */
                text-align: center; /* Centered text */
            }
        }
    </style>
</head>
<body>

    <!-- Navigation bar -->
    <div class="navbar">
        <div class="navbar-brand">
            Admin Panel
        </div>
        <div class="nav-links">
            <a class="nav-link" onClick="Student()">Manage Students</a>
            <a class="nav-link" onClick="faculty()">Manage Faculty</a>
            <a class="nav-link" onClick="Logout()">Logout</a>
        </div>
    </div>

    <!-- Main content area -->
    <div class="main-content">
        <div class="background-image"></div> <!-- Background image -->
        <div class="dashboard-box">
            <h2>Admin Dashboard</h2> <!-- Title aligned to the left -->
            <p>Select an option from the navigation bar to manage data for Students or Faculty.</p>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Your Company Name. All rights reserved.</p>
    </div>

    <!-- JavaScript for navigation actions -->
    <script>
        function faculty() {
            location.replace("/Adminfaculty.jsp");
        }

        function Student() {
            location.replace("/AdminStudent.jsp");
        }

        function Logout() {
            location.replace("/Main.jsp");
        }
    </script>
</body>
</html>
