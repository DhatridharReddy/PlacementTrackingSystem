<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile - Placement Tracking System</title>
    
    <style>
        /* Reset and Basic Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e0f7fa; /* Light blue background */
            color: #333;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* Navbar Styling */
        header {
            background-color: #4a90e2; /* New navbar color */
            color: #fff;
            padding: 10px 0;
            text-align: center;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s;
        }
        
        header:hover {
            background-color: #357ab8; /* Darker shade on hover */
        }

        .navbar {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 20px;
        }

        .logo span {
            font-size: 1.8rem;
            font-weight: bold;
            color: #fff;
            margin-left: 12px;
        }
        
        .nav-links {
            list-style: none;
            display: flex;
            gap: 15px;
        }

        .nav-links a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
            padding: 5px 10px;
            border-radius: 5px;
            transition: background-color 0.3s, transform 0.3s;
        }

        .nav-links a:hover {
            background-color: #007bb2;
            transform: scale(1.05);
        }

        /* Profile Content */
        .profile-container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            flex: 1;
            text-align: center;
        }

        .profile-title {
            font-size: 2rem;
            margin-bottom: 20px;
            color: #00796b;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
        }

        .profile-info img {
            border-radius: 50%;
            width: 120px;
            height: 120px;
            object-fit: cover;
            margin-bottom: 15px;
            border: 2px solid #00796b;
            transition: transform 0.3s;
        }

        .profile-info img:hover {
            transform: scale(1.1);
        }

        .profile-info h2 {
            margin: 10px 0;
            font-size: 1.5rem;
            color: #333;
        }

        /* Additional Info Styling */
        .additional-info p, .contact-info p {
            margin: 5px 0;
            font-size: 1rem;
            color: #555;
        }

        /* Skills and Projects Sections */
        .skills, .projects {
            margin-top: 30px;
            text-align: left;
        }

        .skills h3, .projects h3, .contact-info h3 {
            font-size: 1.5rem;
            color: #00796b;
            margin-bottom: 10px;
        }

        .skills li, .projects li {
            background-color: #e0f2f1;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 5px;
        }

        /* Footer */
        footer {
            background-color: #007bb2; /* Matching footer color */
            color: #fff;
            text-align: center;
            padding: 10px 0;
            font-size: 0.9rem;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <header>
        <div class="navbar">
            <div class="logo">
                <span>Placement Tracker</span>
            </div>
            <ul class="nav-links">
                <li><a href="/dashboard1">Dashboard</a></li>
                <li><a href="/profile">Profile</a></li>
                <li><a href="/jobapplication">Job Applications</a></li>
                <li><a href="/report">Reports</a></li>
                <li><a href="/logout">Logout</a></li>
            </ul>
        </div>
    </header>

    <!-- Profile Content -->
    <div class="profile-container">
        <div class="profile-title">My Profile</div>
        <div class="profile-info">
            <img src="<%= request.getContextPath() %>/images/dattu.jpg" alt="Profile Photo">
            <h2>Welcome, <%= session.getAttribute("username") != null ? session.getAttribute("username") : "DHATRIDHAR REDDY" %>!</h2>
        </div>
        <div class="additional-info">
            <p><strong>College:</strong> KL University</p>
            <p><strong>Branch:</strong> CSE</p>
            <p><strong>Specialization:</strong> Data Science and Big Data Analytics</p>
        </div>
        <div class="skills">
            <h3>Skills</h3>
            <ul>
                <li>Java Programming</li>
                <li>Data Analysis with Python</li>
                <li>AWS</li>
                <li>Web Development (HTML, CSS, JavaScript)</li>
                <li>Database Management (SQL, MongoDB)</li>
            </ul>
        </div>
        <div class="projects">
            <h3>Projects</h3>
            <ul>
                <li><strong>Job Portal:</strong> Developed a web application to connect job seekers and employers.</li>
                <li><strong>Data Visualization Tool:</strong> Created an interactive dashboard for visualizing data trends.</li>
                <li><strong>Machine Learning Model:</strong> Built a predictive model for housing prices using Python.</li>
            </ul>
        </div>
        <div class="contact-info">
            <h3>Contact Information</h3>
            <p><strong>Email:</strong> 2200030169cseh@gmail.com</p>
            <p><strong>Phone:</strong> 6300308029</p>
            <p><strong>LinkedIn:</strong> <a href="https://www.linkedin.com/in/dhatridharreddy/" target="_blank">https://www.linkedin.com/in/dhatridharreddy/</a></p>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Placement Tracking System. All rights reserved by DattuByreddy.</p>
    </footer>
</body>
</html>
