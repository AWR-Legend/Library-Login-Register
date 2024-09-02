<%-- 
    Document   : Register
    Created on : 24 Aug 2024, 16:28:36
    Author     : arlow
--%>
<%@page import="java.sql.*" %>
<%@page import=" app.ConnectionProvider" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- The title of the registration page, displayed on the browser tab -->
    <title>Register - Library Management System</title>
    
    <style>
        /* Basic reset: Ensures consistent styling across browsers */
        * { 
            box-sizing: border-box; 
            margin: 0; 
            padding: 0; 
        }
        
        /* Body styling: Sets font, height, and centers content both vertically and horizontally */
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .background-image::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.4); /* Darkens the background image */
        z-index: -1; /* Keeps it behind other elements */
        }
        
        /* Background image styling: Fills the entire viewport, positioned behind other elements */
        .background-image {
            background-image: url('register.jpg');
            background-size: cover;
            background-position: center;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1; /* Places the background image behind the content */
        }
        
        /* Container styling: Defines the form's content area with max-width, background color, padding, and shadow */
        .container {
            max-width: 500px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            background-color: rgba(255, 255, 255, 0.9); /* Adds slight transparency to the background */
        }
        
        /* Heading styling: Sets the color and margin for the form heading */
        h1 { 
            color: #333; 
            margin-bottom: 20px; 
        }
        
        /* Form styling: Sets the layout and spacing for the form elements */
        form { 
            margin-bottom: 20px; 
        }
        
        /* Label styling: Ensures labels are displayed above their corresponding input fields */
        label {
            display: block;
            margin-bottom: 5px;
            color: #666;
        }
        
        /* Input field styling: Sets the width, padding, and border for text, password, phone, and email inputs */
        input[type="text"],
        input[type="password"],
        input[type="tel"],
        input[type="email"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        
        /* Submit button styling: Styles the registration button with color, padding, and cursor */
        input[type="submit"] {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        
        /* Submit button hover effect: Changes background and text color, adds bold and italic styles on hover */
        input[type="submit"]:hover {
            color: #333;
            background-color: #1fff00;
            font-weight: bold;
            font-style: italic;
        }
        
        /* Link styling: Styles the "Login here" link with color, font style, and hover effects */
        a { 
            color: #007bff; 
            text-decoration: none;
            font-weight: bold;
            font-style: italic;
        }
        
        /* Link hover effect: Changes color and adds underline on hover */
        a:hover { 
            color: #0f9b18;
            text-decoration: underline;         
        }
    </style>
</head>
<body>
    <!-- Background image to enhance visual appeal -->
    <div class="background-image"></div>
    
    <!-- Main content area containing the registration form -->
    <div class="container">
        <!-- Main heading of the registration page -->
        <h1>Register</h1>
        
        <!-- Registration form with fields for User ID, Username, Name, Surname, Password, Phone, and Email -->
        <form action="RegisterServlet" method="post">
            <!-- Input field for User ID -->
            <label for="userId">User ID:</label>
            <input type="text" id="userId" name="userId" required>

            <!-- Input field for Username -->
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <!-- Input field for Name -->
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <!-- Input field for Surname -->
            <label for="surname">Surname:</label>
            <input type="text" id="surname" name="surname" required>

            <!-- Input field for Password -->
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <!-- Input field for Phone -->
            <label for="phone">Phone:</label>
            <input type="tel" id="phone" name="phone" required>

            <!-- Input field for Email -->
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <!-- Submit button for registering -->
            <!--<input type="submit" value="Register"> -->
            <input type="submit" value="SUBMIT" name="btnSubmit" />
        </form>
        
        <!-- Link to the login page for users who already have an account -->
        <p>Already have an account? <a href="login.jsp">Login here</a></p>
    </div>
</body>
</html>

