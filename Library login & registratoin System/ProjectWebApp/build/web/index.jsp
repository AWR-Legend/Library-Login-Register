<%-- ARLO
    Document   : index
    Created on : 24 Aug 2024, 16:58:22
    Author     : Arlo and Duan 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- The title of the webpage, displayed on the browser tab -->
    <title>Library Management System</title>
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
        /* Container styling: Defines the main content area with max-width, background color, padding, and shadow */
        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.1);
            text-align: center;
            animation: fadeIn 1s ease-in-out;
            background-color: rgba(255, 255, 255, 0.9);/* Adds slight transparency to the background */
        }
        /* Keyframes for fade-in animation */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        .background-image::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.3); /* Darkens the background image */
        z-index: -1; /* Keeps it behind other elements */
}
        /* Background image styling: Fills the entire viewport, positioned behind other elements */
         .background-image {
            background-image: url('library.jpg');
            background-size: cover;
            background-position: center;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;/* Places the background image behind the content */
        }
        /* Heading styling: Sets the color, size, and adds a text shadow */
        h1 {
            color: #2c3e50;
            font-size: 2.5em;
            margin-bottom: 20px;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
        }
        /* Navigation styling: Styles the navigation bar and its items */
        nav ul {
            list-style-type: none;/* Removes bullet points */
            padding: 0;
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        /* Individual list item styling: Sets margins between links */
        nav ul li {
            margin: 0 15px;
        }
        /* Link styling: Sets the color, padding, border, and transition for hover effects */
        nav ul li a {
            text-decoration: none; /* Removes the underline from links */
            color: #007bff;
            font-size: 1.2em;
            padding: 10px 20px;
            border: 2px solid #007bff;
            border-radius: 5px;
            transition: all 0.3s ease;
        }
        /* Hover effect for links: Changes background and text color on hover */
        nav ul li a:hover {
            background-color: #007bff;
            color: #ffffff;
            text-decoration: none; /* Ensures underline remains removed on hover */
        }
    </style>
</head>
<body>
    <!-- Background image to enhance visual appeal -->
    <div class="background-image"></div>
    
    <!-- Main content area containing the heading and navigation -->
    <div class="container">
        <!-- Main heading of the page -->
        <h1>Welcome to the Library Management System</h1>
        
        <!-- Navigation menu with links to login and register pages -->
        <nav>
            <ul>
                <!-- Link to the login page -->
                <li><a href="login.jsp">Login</a></li>
                <!-- Link to the register page -->
                <li><a href="Register.jsp">Register</a></li>
            </ul>
        </nav>
    </div>

</body>
</html>
