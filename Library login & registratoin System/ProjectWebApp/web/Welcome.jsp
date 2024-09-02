<%-- 
    Document   : Welcome
    Created on : 24 Aug 2024, 16:48:42
    Author     : Arlo and Duan
--%>


<%@page import="org.apache.catalina.User"%>
<%@page import="app.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- The title of the welcome page, displayed on the browser tab -->
    <title>Welcome - Library Management System</title>
    
    <style>
        /* Basic reset: Ensures consistent styling across browsers */
        * {
            box-sizing: border-box; 
            margin: 0; 
            padding: 0;
        }
        
        /* Body styling: Sets font, height, and centers content both vertically and horizontally */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        /* Background image styling: Fills the entire viewport, positioned behind other elements */
        .background-image {
            background-image: url('cat2.jpg');
            background-size: cover;
            background-position: center;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1; /* Places the background image behind the content */
        }
        
        /* Container styling: Defines the content area with max-width, background color, padding, and shadow */
        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.1);
            text-align: center;
            animation: fadeIn 1s ease-in-out; /* Adds a fade-in animation */
            background-color: rgba(255, 255, 255, 0.8); /* Adds slight transparency to the background */
        }
        
        /* Fade-in keyframes for the container */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        
        /* Heading styling: Sets color, size, and shadow for the welcome message */
        h1 {
            color: #2c3e50;
            font-size: 2.5em;
            margin-bottom: 20px;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
        }
        
        /* Paragraph styling: Sets the font size and color for the login confirmation message */
        p {
            margin-bottom: 30px;
            font-size: 1.2em;
            color: #7f8c8d;
        }
        
        /* Submit button styling: Styles the logout button with color, padding, and rounded corners */
        input[type="submit"] {
            display: inline-block;
            padding: 12px 24px;
            background-color: #e74c3c;
            color: #fff;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            font-size: 1em;
            transition: background-color 0.3s ease; /* Smooth transition for background color change */
        }
        
        /* Submit button hover effect: Changes background color on hover */
        input[type="submit"]:hover {
            background-color: #c0392b;
        }
        
        /* Submit button after styling: Adds an arrow that becomes visible on hover */
        input[type="submit"]::after {
            content: ' »';
            opacity: 0;
            transition: opacity 0.3s ease, transform 0.3s ease;
            transform: translateX(-10px);
        }
        
        /* Arrow animation: Moves arrow to the right and makes it visible on hover */
        input[type="submit"]:hover::after {
            opacity: 1;
            transform: translateX(0);
        }
    </style>
</head>
<body>
    <!-- Background image to enhance visual appeal -->
    <div class="background-image"></div>
    
    <!-- Main content area containing the welcome message and logout button -->
    <div class="container">
        <!-- Displays a personalized welcome message using the username from the session attribute -->

     
        <h1>Welcome!</h1>
        
        <!-- Informational message confirming successful login -->
        <p>You have successfully logged in to the Library Management System.</p>
        
        <!-- Form with a logout button that submits a POST request to the LogoutServlet -->
        <form action="LogoutServlet" method="post">
            <input type="submit" value="Logout">
        </form>
    </div>
</body>
</html>

