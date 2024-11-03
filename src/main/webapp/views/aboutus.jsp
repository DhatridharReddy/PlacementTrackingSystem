<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Placement Tracking System</title>
    
    <style>
        /* Basic Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body Styling */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #e0f7fa, #b2ebf2); /* Gradient background */
            color: #333;
            line-height: 1.6;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* Navbar styling */
        header {
            background-color: #4682b4; /* Lighter blue */
            color: #fff;
            padding: 10px 0;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
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
            height: 50px;
            padding: 5px;
        }

        .logo span {
            font-size: 1.8rem;
            font-weight: bold;
            color: #fff;
            margin-left: 10px;
        }

        /* Navigation links */
        .nav-links {
            list-style: none;
            display: flex;
            gap: 20px;
        }

        .nav-links a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
            padding: 5px 10px;
            transition: background-color 0.3s, transform 0.3s;
        }

        .nav-links a:hover {
            background-color: #5f9ea0; /* A bit lighter blue for hover */
            border-radius: 5px;
            transform: scale(1.05);
        }

        /* About Container */
        .about-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.15);
            max-width: 900px;
            width: 90%;
            text-align: center;
            margin: 40px auto;
            transition: transform 0.3s ease;
        }

        .about-container:hover {
            transform: translateY(-5px);
        }

        /* Header and Paragraph Styling */
        .about-container h1 {
            font-size: 2.5rem;
            color: #333;
            margin-bottom: 20px;
            font-weight: bold;
        }

        .about-container p {
            font-size: 1.1rem;
            color: #555;
            margin-bottom: 20px;
            line-height: 1.7;
            text-align: justify;
        }

        /* Team Section */
        .team-section {
            margin-top: 40px;
        }

        .team-section h2 {
            font-size: 2rem;
            color: #333;
            margin-bottom: 20px;
            font-weight: bold;
        }

        /* Team Members Grid */
        .team-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
        }

        .team-member {
            background-color: #fafafa;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
            text-align: center;
        }

        .team-member:hover img {
            transform: scale(1.1); /* Slight zoom effect on hover */
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3); /* Deeper shadow on hover */
        }

        .team-member img {
            width: 120px; /* Increased width for better visibility */
            height: 120px; /* Increased height for better visibility */
            border-radius: 50%; /* Keeps circular shape */
            margin-bottom: 15px;
            border: 4px solid #333; /* Adds border for more contrast */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2); /* Stronger shadow for more emphasis */
            transition: transform 0.3s ease, box-shadow 0.3s ease; /* Smooth transition for hover effects */
        }

        .team-member h3 {
            font-size: 1.3rem;
            color: #333;
            margin-bottom: 5px;
            font-weight: 600;
        }

        .team-member p {
            font-size: 1rem;
            color: #666;
        }

        /* Footer styling */
        footer {
            background-color: #4682b4; /* Lighter blue for footer */
            color: #fff;
            text-align: center;
            padding: 15px 0;
            margin-top: auto;
            width: 100%;
        }

        footer p {
            font-size: 0.9rem;
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
                    <li><a href="/">Home</a></li>
                    <li><a href="/signup">Sign Up</a></li>
                    <li><a href="/signin">Sign In</a></li>
                    <li><a href="/aboutus">About Us</a></li>
                </ul>
            </div>
        </nav>
    </header>

    <!-- About Us Content -->
    <div class="about-container">
        <h1>About Us</h1>
        <p>The Placement Tracking System is designed to help students and educational institutions streamline the process of managing and tracking job placements, applications, and student performance. With a user-friendly interface, it provides students with the tools they need to manage their career journey and track their placement status efficiently.</p>
        
        <p>This system offers a comprehensive solution that benefits both students and administrators, enabling smooth coordination, real-time status updates, and personalized reports that support better decision-making and career guidance.</p>

        <!-- Team Section -->
        <section class="team-section">
            <h2>Meet Our Team</h2>
            <div class="team-grid">
                <!-- Example Team Member Card -->
                <div class="team-member">
                    <img src="<%= request.getContextPath() %>/images/dattuinox.jpg" alt="Team Member">
                    <h3>Dhatridhar Reddy</h3>
                    <p>Lead Developer</p>
                </div>
                <div class="team-member">
                    <img src="<%= request.getContextPath() %>/images/sailesh.jpg" alt="Team Member">
                    <h3>Sailesh</h3>
                    <p> Team Leader</p>
                </div>
                <div class="team-member">
                    <img src="<%= request.getContextPath() %>/images/kota.jpg" alt="Team Member">
                    <h3>Sreevatsa</h3>
                    <p>Back end Developer</p>
                </div>
            </div>
        </section>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Placement Tracking System. All rights reserved by DattuByreddy.</p>
    </footer>
</body>
</html>
