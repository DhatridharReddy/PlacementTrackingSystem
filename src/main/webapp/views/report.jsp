<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reports - Placement Tracking System</title>
    
    <style>
        /* Reset and Basic Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #e0f7fa; /* Light blue background */
            color: #333;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* Navbar Styling */
        header {
            background-color: #b3e5fc; /* Light blue navbar background */
            color: #333;
            padding: 10px 0;
            text-align: center;
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
            font-size: 1.5rem;
            font-weight: bold;
            color: #01579b; /* Darker blue for logo text */
        }
        
        .nav-links {
            list-style: none;
            display: flex;
            gap: 15px;
        }

        .nav-links a {
            color: #01579b; /* Dark blue for links */
            text-decoration: none;
            font-weight: bold;
            padding: 5px 10px;
            transition: background-color 0.3s, transform 0.3s; /* Transition for hover effects */
            border-radius: 5px;
        }

        .nav-links a:hover {
            background-color: #4fc3f7; /* Lighter blue on hover */
            transform: scale(1.05); /* Slightly enlarge the link on hover */
        }

        /* Report Content */
        .report-container {
            max-width: 1000px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            flex: 1; /* Pushes footer to bottom */
        }

        .report-title {
            font-size: 2.5rem; /* Increased title size */
            margin-bottom: 20px;
            color: #00796b; /* Updated color for title */
            font-weight: bold; /* Bold font for title */
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1); /* Soft shadow for depth */
        }

        .report-section {
            margin-top: 20px;
            text-align: left;
            background-color: #f9f9f9; /* Light background for sections */
            border: 1px solid #ddd; /* Border around sections */
            border-radius: 8px; /* Rounded corners */
            padding: 15px;
            transition: transform 0.2s, box-shadow 0.2s; /* Transition for hover effects */
        }

        .report-section:hover {
            transform: translateY(-5px); /* Lift effect on hover */
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.2); /* Deeper shadow on hover */
        }

        .report-section h2 {
            font-size: 1.5rem;
            color: #333;
            border-bottom: 2px solid #00796b; /* Underline for section headers */
            padding-bottom: 10px; /* Space below header */
            margin-bottom: 15px; /* Space below header */
        }

        .report-section p, .report-section ul li {
            font-size: 1rem;
            color: #666;
            line-height: 1.6; /* Improved line spacing for readability */
        }

        ul {
            list-style-type: disc; /* Disc style for lists */
            padding-left: 20px; /* Indent for list items */
        }

        /* Footer */
        footer {
            background-color: #4fc3f7; /* Matching blue footer background */
            color: #333;
            text-align: center;
            padding: 10px 0;
            margin-top: 20px;
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

    <!-- Report Content -->
    <div class="report-container">
        <div class="report-title">
            Student Placement Report
        </div>

        <!-- Student Information -->
        <section class="report-section">
            <h2>Student Details</h2>
            <p><strong>Name:</strong> <%= session.getAttribute("username") != null ? session.getAttribute("username") : "DHATRIDHAR REDDY" %></p>
            <p><strong>College:</strong> KL University</p>
            <p><strong>Branch:</strong> CSE</p>
            <p><strong>Specialization:</strong> Data Science and Big Data Analytics</p>
        </section>

        <!-- Applications Overview -->
        <section class="report-section">
            <h2>Job Applications Overview</h2>
            <p>You have applied for <strong>3</strong> positions.</p>
        </section>

        <!-- Application Status -->
        <section class="report-section">
            <h2>Application Status</h2>
            <ul>
                <li>Software Engineer at Tech Company - <strong>Status:</strong> Under Review</li>
                <li>Data Analyst at Data Solutions - <strong>Status:</strong> Interview Scheduled</li>
                <li>Web Developer at Creative Agency - <strong>Status:</strong> Rejected</li>
            </ul>
        </section>

        <!-- Feedback Section -->
        <section class="report-section">
            <h2>Feedback from Interviews</h2>
            <p>Here are some feedback and insights from recruiters:</p>
            <ul>
                <li>Good technical skills, but needs to work on communication.</li>
                <li>Strong analytical thinking and problem-solving abilities.</li>
                <li>Demonstrated good knowledge in data analysis tools.</li>
            </ul>
        </section>

        <!-- Overall Placement Status -->
        <section class="report-section">
            <h2>Overall Placement Status</h2>
            <p><strong>Current Status:</strong> Actively Seeking Opportunities</p>
            <p><strong>Average Package:</strong> $70,000</p>
        </section>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Placement Tracking System. All rights reserved.</p>
    </footer>
</body>
</html>
