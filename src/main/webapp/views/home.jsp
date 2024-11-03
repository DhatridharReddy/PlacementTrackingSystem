<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Placement Tracking System</title>
    
    <!-- Internal CSS Styling -->
    <style>
        /* Reset some default styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Basic styling for the body */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #e0f7fa; /* Light blue background */
            color: #333;
            line-height: 1.6;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* Navbar styling */
        header {
            background-color: #4a90e2; /* New color for navbar */
            color: #fff;
            padding: 10px 0;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s;
        }

        header:hover {
            background-color: #357ab8; /* Darker shade on hover */
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* Logo styling */
        .logo img {
            height: 50px; /* Increased height for more visibility */
            vertical-align: middle;
            padding: 5px; /* Added padding to give it more space */
        }

        .logo span {
            font-size: 1.8rem; /* Increased font size for better visibility */
            font-weight: bold;
            color: #fff; /* White color for logo text */
            margin-left: 12px;
        }

        /* Navigation links */
        .nav-links {
            list-style: none;
            display: flex;
            gap: 20px;
        }

        .nav-links li {
            display: inline;
        }

        .nav-links a {
            color: #fff; /* White color for links */
            text-decoration: none;
            font-weight: bold;
            padding: 5px 10px;
            border-radius: 5px;
            transition: background-color 0.3s, transform 0.2s;
        }

        .nav-links a:hover {
            background-color: #007bb2; /* Darker blue on hover */
            transform: scale(1.05);
        }

        /* Main content styling */
        main {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        /* Home content with images */
        .content-wrapper {
            display: flex;
            align-items: center;
            justify-content: space-between;
            max-width: 1200px;
            width: 100%;
            gap: 20px;
        }

        .home-section {
            flex: 1;
            padding: 40px 20px;
            text-align: center;
            background-color: #fff;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            transition: transform 0.3s;
        }

        .home-section:hover {
            transform: translateY(-5px);
        }

        .home-section h1 {
            font-size: 2.5rem;
            color: #4a90e2; /* New color for title */
            margin-bottom: 10px;
        }

        .home-section p {
            font-size: 1.2rem;
            color: #666;
        }

        /* Image styling */
        .side-image {
            max-width: 400px; /* Increased size */
            width: 100%;
            height: auto;
            border-radius: 8px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }

        /* About Us Section */
        .about-section {
            padding: 40px 20px;
            background-color: #e9e9e9;
            margin: 20px auto;
            max-width: 800px;
            border-radius: 8px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .about-section:hover {
            transform: translateY(-5px);
        }

        .about-section h2 {
            font-size: 2rem;
            color: #333;
            margin-bottom: 10px;
        }

        .about-section p {
            font-size: 1.1rem;
            color: #555;
        }

        /* Footer styling */
        footer {
            background-color: #007bb2; /* Lighter blue for footer */
            color: #fff;
            text-align: center;
            padding: 20px 0;
            width: 100%;
            margin-top: auto;
        }

        footer p {
            font-size: 0.9rem;
            transition: color 0.3s;
        }

        footer p:hover {
            color: #ffa500; /* Orange hover effect */
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .content-wrapper {
                flex-direction: column;
                align-items: center;
            }

            .home-section h1 {
                font-size: 2rem;
            }

            .about-section h2 {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <header>
        <nav>
            <div class="navbar">
                <!-- Logo -->
                <div class="logo">
                    <img src="<%= request.getContextPath() %>/images/placementlogo.png" alt="Placement Tracking Logo" height="40">
                    <span>Placement Tracker</span>
                </div>

                <!-- Navigation Links -->
                <ul class="nav-links">
                  
                    <li><a href="/signup">Sign Up</a></li>
                    <li><a href="/signin">Sign In</a></li>
                    <li><a href="/aboutus">About Us</a></li>
                </ul>
            </div>
        </nav>
    </header>

    <!-- Main Content -->
    <main>
        <div class="content-wrapper">
            <!-- Left Image -->
            <img src="<%= request.getContextPath() %>/images/placement1.png" alt="Placement Left Image" class="side-image">
            
            <!-- Home Section -->
            <section class="home-section">
                <h1>Welcome to the Placement Tracker</h1>
                <p>Manage your career placements with ease and efficiency.</p>
            </section>

            <!-- Right Image -->
            <img src="<%= request.getContextPath() %>/images/placement2.png" alt="Placement Right Image" class="side-image">
        </div>
    </main>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Placement Tracking System. All rights reserved by DattuByreddy.</p>
    </footer>
</body>
</html>
