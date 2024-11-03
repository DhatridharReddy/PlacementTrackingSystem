<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard - Placement Tracking System</title>

    <style>
        /* Reset and Basic Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: Arial, sans-serif;
            background-color: #e0f7fa; /* Light blue background */
            color: #333;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* Navbar Styling */
        header {
            background-color: #4a90e2; /* Navbar color */
            color: #fff;
            padding: 10px 0;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
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
            color: #ffffff;
        }
        
        .nav-links {
            list-style: none;
            display: flex;
            gap: 20px;
        }

        .nav-links a {
            color: #ffffff;
            text-decoration: none;
            font-weight: bold;
            padding: 10px;
            transition: background-color 0.3s, transform 0.3s; /* Transition for hover effects */
            border-radius: 5px;
        }

        .nav-links a:hover {
            background-color: #007bb2; /* Darker blue on hover */
            transform: scale(1.05);
        }
        
        /* Dashboard Content */
        .dashboard-container {
            max-width: 1000px;
            margin: 30px auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            text-align: center;
            flex: 1;
            transition: box-shadow 0.3s; /* Transition for shadow on hover */
        }

        .dashboard-container:hover {
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.15);
        }

        .welcome-message {
            font-size: 2rem;
            margin-bottom: 20px;
            font-weight: bold;
            color: #4a90e2; /* New color for welcome message */
        }

        /* Section Styling */
        .section {
            margin-top: 20px;
            padding: 20px;
            background-color: #f5f5f5;
            border-radius: 8px;
            transition: transform 0.3s ease, background-color 0.3s ease;
            position: relative; /* For pseudo-elements */
        }

        .section:hover {
            transform: translateY(-5px);
            background-color: #e0f7fa; /* Light blue background on hover */
        }

        .section h2 {
            font-size: 1.5rem;
            color: #004d40;
            margin-bottom: 10px;
            display: flex;
            align-items: center;
        }

        .section h2::before {
            content: "";
            display: inline-block;
            width: 6px;
            height: 24px;
            background-color: #007bb2; /* Accent color */
            border-radius: 2px;
            margin-right: 10px;
        }

        .section p {
            font-size: 1rem;
            color: #666;
        }

        /* Icons for Sections */
        .section-icon {
            font-size: 1.5rem;
            color: #007bb2; /* Section icon color */
            margin-right: 8px;
        }

        /* Footer Styling */
        footer {
            background-color: #007bb2; /* Footer color */
            color: #ffffff;
            text-align: center;
            padding: 15px 0;
            font-size: 0.9rem;
            margin-top: 20px;
            width: 100%;
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
                <li><a href="/logout">Logout</a></li>
            </ul>
        </div>
    </header>

    <!-- Dashboard Content -->
    <div class="dashboard-container">
        <div class="welcome-message">
            Welcome!!
        </div>
                 <h1>${email}</h1>
        <!-- Profile Section -->
        <section class="section" id="profile">
            <h2>
                <a href="/profile" style="color: inherit; text-decoration: none;">
                    <i class="section-icon">&#128100;</i>Profile
                </a>
            </h2>
            <p>Manage your profile and update your personal information.</p>
        </section>

        <!-- Job Applications Section -->
        <section class="section" id="applications"  >
            <h2>
                <a href="/jobapplication" style="color: inherit; text-decoration: none;">
                    <i class="section-icon">&#128188;</i>Job Applications
                </a>
            </h2>
            <p>Track your job applications and view the status of each application.</p>
        </section>

        <!-- Reports Section -->
        <section class="section" id="reports">
            <h2>
                <a href="/report" style="color: inherit; text-decoration: none;">
                    <i class="section-icon">&#128202;</i>Reports
                </a>
            </h2>
            <p>View detailed reports of your placement activities and performance.</p>
        </section>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Placement Tracking System. All rights reserved.</p>
    </footer>
</body>
</html>
