<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Applications - Placement Tracking System</title>
    
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
            background-color: #b3e5fc; /* Light blue color for header */
            color: #fff;
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
            color: #01579b; /* Darker blue for link text */
            text-decoration: none;
            font-weight: bold;
            padding: 5px 10px;
            transition: background-color 0.3s, transform 0.3s;
        }

        .nav-links a:hover {
            background-color: #81d4fa;
            border-radius: 5px;
            transform: scale(1.05);
        }

        /* Job Applications Content */
        .applications-container {
            max-width: 1000px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            flex: 1;
        }

        .applications-title {
            font-size: 1.8rem;
            margin-bottom: 20px;
            text-align: center;
            color: #01579b;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
        }

        /* Filter and Sort Section */
        .filter-sort {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .filter-sort select {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 1rem;
        }

        .filter-sort button {
            background-color: #01579b; /* Consistent darker blue for buttons */
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .filter-sort button:hover {
            background-color: #013c71; /* Slightly darker shade on hover */
        }

        .application {
            margin-top: 20px;
            padding: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            transition: box-shadow 0.3s;
        }

        .application:hover {
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        }

        .application h3 {
            font-size: 1.5rem;
            color: #333;
        }

        .application p {
            font-size: 1rem;
            color: #666;
        }

        /* Footer */
        footer {
            background-color: #01579b; /* Matching color for footer */
            color: #fff;
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

    <!-- Job Applications Content -->
    <div class="applications-container">
        <div class="applications-title">
            My Job Applications
        </div>

        <!-- Filter and Sort Section -->
        <div class="filter-sort">
            <div>
                <select id="statusFilter">
                    <option value="">All Statuses</option>
                    <option value="under_review">Under Review</option>
                    <option value="interview_scheduled">Interview Scheduled</option>
                    <option value="rejected">Rejected</option>
                </select>
            </div>
            <button onclick="filterApplications()">Filter</button>
        </div>

        <!-- Example Application 1 -->
        <div class="application">
            <h3>Software Engineer at Tech Company</h3>
            <p><strong>Status:</strong> Under Review</p>
            <p><strong>Date Applied:</strong> October 15, 2024</p>
            <p><strong>Location:</strong> New York, NY</p>
            <p><strong>Description:</strong> Seeking a skilled software engineer with experience in full-stack development and agile methodologies.</p>
        </div>

        <!-- Example Application 2 -->
        <div class="application">
            <h3>Data Analyst at Data Solutions</h3>
            <p><strong>Status:</strong> Interview Scheduled</p>
            <p><strong>Date Applied:</strong> October 10, 2024</p>
            <p><strong>Location:</strong> San Francisco, CA</p>
            <p><strong>Description:</strong> Looking for a data analyst with expertise in data visualization and predictive analytics.</p>
        </div>

        <!-- Example Application 3 -->
        <div class="application">
            <h3>Web Developer at Creative Agency</h3>
            <p><strong>Status:</strong> Rejected</p>
            <p><strong>Date Applied:</strong> September 30, 2024</p>
            <p><strong>Location:</strong> Remote</p>
            <p><strong>Description:</strong> Require a web developer proficient in HTML, CSS, and JavaScript for various projects.</p>
        </div>

        <!-- Add more applications as needed -->
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Placement Tracking System. All rights reserved.</p>
    </footer>

    <script>
        function filterApplications() {
            const filterValue = document.getElementById('statusFilter').value;
            const applications = document.querySelectorAll('.application');

            applications.forEach(app => {
                const status = app.querySelector('p').textContent.split(': ')[1].toLowerCase().replace(/ /g, '_');
                if (filterValue === '' || status === filterValue) {
                    app.style.display = 'block';
                } else {
                    app.style.display = 'none';
                }
            });
        }
    </script>
</body>
</html>
