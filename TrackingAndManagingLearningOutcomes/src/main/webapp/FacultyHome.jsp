<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Faculty Dashboard</title>
    <link rel="stylesheet" type="text/css" href="css/faculty.css">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }
        /* Top navbar */
        .topnav {
            background-color: #c00; /* Red */
            color: white;
            padding: 14px 16px;
            text-align: center;
            font-size: 24px;
            height: 50px;
            line-height: 50px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.5);
        }
        /* Main container as flexbox */
        .container {
            display: flex;
            flex-wrap: wrap; /* Allows wrapping if the container gets too small */
            gap: 20px; /* Adds spacing between items */
            padding: 20px;
        }
        /* Section styles */
        .section {
            flex: 1 1 calc(33.33% - 20px); /* 3 equal-width sections, subtract gap */
            min-width: 250px; /* Ensures minimum width when resizing */
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            background-color: white;
        }
        /* Colors for different sections */
        .quizzes-section {
            background-color: #f9fbe7; /* Light green for Quizzes section */
        }
        .assignments-section {
            background-color: #ffe0b2; /* Light yellow for Assignments section */
        }
        .labs-section {
            background-color: #e3f2fd; /* Light blue for Lab Experiments section */
        }
        h2 {
            color: #333;
        }
        a {
            color: #c00;
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
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
        /* Hidden content styles */
        .hidden-content {
            display: none;
            margin-top: 20px;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>

    <!-- Top Navbar -->
    <div class="topnav">
        Faculty Dashboard
    </div>

    <!-- Main Container with Horizontal Layout -->
    <div class="container">
        <!-- Quizzes Section -->
        <div class="section quizzes-section">
            <h2>Manage Quizzes</h2>
            <ul>
                <li><a href="#" onclick="showContent('createQuiz')">Create New Quiz</a></li>
                <li><a href="#">View Quiz Results</a></li>
                <li><a href="#">Update Quiz Details</a></li>
            </ul>
        </div>

        <!-- Assignments Section -->
        <div class="section assignments-section">
            <h2>Manage Assignments</h2>
            <ul>
                <li><a href="#" onclick="showContent('addAssignment')">Add New Assignment</a></li>
                <li><a href="#">View Assignment Submissions</a></li>
                <li><a href="#">Update Assignment Details</a></li>
            </ul>
        </div>
        
        <!-- Lab Experiments Section -->
        <div class="section labs-section">
            <h2>Manage Lab Experiments</h2>
            <ul>
                <li><a href="#" onclick="showContent('addLab')">Add New Lab Experiment</a></li>
                <li><a href="#">View Lab Sessions</a></li>
                <li><a href="#">Update Lab Information</a></li>
            </ul>
        </div>
    </div>

    <!-- Hidden Content for Dynamic Sections -->
    <div id="createQuiz" class="hidden-content">
        <h3>Create a New Quiz</h3>
        <form>
            <label for="quizTitle">Quiz Title:</label>
            <input type="text" id="quizTitle" name="quizTitle" required><br><br>
            <label for="quizDescription">Description:</label>
            <textarea id="quizDescription" name="quizDescription" required></textarea><br><br>
            <input type="submit" value="Create Quiz">
        </form>
    </div>

    <div id="addAssignment" class="hidden-content">
        <h3>Add a New Assignment</h3>
        <form>
            <label for="assignmentTitle">Assignment Title:</label>
            <input type="text" id="assignmentTitle" name="assignmentTitle" required><br><br>
            <label for="assignmentDescription">Description:</label>
            <textarea id="assignmentDescription" name="assignmentDescription" required></textarea><br><br>
            <input type="submit" value="Add Assignment">
        </form>
    </div>

    <div id="addLab" class="hidden-content">
        <h3>Add a New Lab Experiment</h3>
        <form>
            <label for="labTitle">Lab Title:</label>
            <input type="text" id="labTitle" name="labTitle" required><br><br>
            <label for="labDescription">Description:</label>
            <textarea id="labDescription" name="labDescription" required></textarea><br><br>
            <input type="submit" value="Add Lab Experiment">
        </form>
    </div>

    <!-- Logout Button -->
    <div style="text-align: center; margin: 20px 0;">
        <a href="index.jsp" class="logout-button">Logout</a>
    </div>

    <!-- Footer Section -->
    <div class="footer">
        © 2024 Faculty Dashboard. All rights reserved.
    </div>

    <script type="text/javascript">
        // Function to show the hidden content based on the user's click
        function showContent(contentId) {
            // Hide all hidden content sections
            document.querySelectorAll('.hidden-content').forEach(function(content) {
                content.style.display = 'none';
            });
            // Show the clicked section
            document.getElementById(contentId).style.display = 'block';
            // Scroll smoothly to the revealed section
            document.getElementById(contentId).scrollIntoView({ behavior: 'smooth' });
        }

        // Global logout function
        function Logout() {
            location.replace("/index.jsp"); // Redirects to the index.jsp page
        }
    </script>

</body>
</html>
