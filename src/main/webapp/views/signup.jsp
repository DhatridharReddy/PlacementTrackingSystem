<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up - Placement Tracking System</title>

    <style>
        /* Basic styling for the page */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #e0f7fa, #a1c4fd); /* Gradient background */
            color: #333;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            margin: 0;
            align-items: center;
        }

        /* Navbar styling */
        header {
            background-color: #4682b4; /* Lighter blue */
            color: #fff;
            padding: 10px 0;
            width: 100%;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            position: fixed;
            top: 0;
            z-index: 10;
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
            vertical-align: middle;
            height: 45px;
            filter: drop-shadow(0 0 3px rgba(255, 255, 255, 0.8));
        }

        .logo span {
            font-size: 1.6rem;
            font-weight: bold;
            color: #fff;
            margin-left: 12px;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.4);
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
            border-radius: 8px;
            transition: background-color 0.3s, transform 0.3s;
        }

        .nav-links a:hover {
            background-color: #5f9ea0; /* A bit lighter blue for hover */
            transform: scale(1.05);
        }

        /* Main flex container */
        .content-wrapper {
            display: flex;
            max-width: 800px;
            margin: 80px auto 20px auto;
            gap: 30px;
            align-items: center;
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.95);
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            flex-wrap: wrap;
        }

        /* Image styling */
        .side-image {
            max-width: 45%;
            height: auto;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            animation: fadeInLeft 1s ease; /* Entrance animation */
        }

        /* Form container styling */
        .signup-container {
            flex: 1;
            padding: 30px;
            text-align: center;
            animation: fadeInRight 1s ease;
        }

        /* Animations */
        @keyframes fadeInLeft {
            from { opacity: 0; transform: translateX(-20px); }
            to { opacity: 1; transform: translateX(0); }
        }

        @keyframes fadeInRight {
            from { opacity: 0; transform: translateX(20px); }
            to { opacity: 1; transform: translateX(0); }
        }

        /* Form styling */
        .signup-container h2 {
            margin-bottom: 20px;
            color: #333;
            font-size: 2rem;
        }

        .signup-container input[type="text"],
        .signup-container input[type="email"],
        .signup-container input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 12px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
            transition: border-color 0.3s;
        }

        .signup-container input[type="text"]:focus,
        .signup-container input[type="email"]:focus,
        .signup-container input[type="password"]:focus {
            border-color: #007BFF;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.3);
        }

        .signup-container button {
            width: 100%;
            padding: 12px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 8px;
            font-size: 1.1rem;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s, transform 0.3s;
        }

        .signup-container button:hover {
            background-color: #0056b3;
            transform: scale(1.03);
        }

        /* Link back to sign in page */
        .signup-container p {
            margin-top: 15px;
            font-size: 0.9rem;
        }

        .signup-container a {
            color: #007BFF;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s;
        }

        .signup-container a:hover {
            color: #0056b3;
            text-decoration: underline;
        }

        /* Footer styling */
        footer {
            background-color: #4682b4; /* Lighter blue for footer */
            color: #fff;
            text-align: center;
            padding: 10px 0;
            width: 100%;
            margin-top: auto;
            box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <header>
        <nav>
            <div class="navbar">
                <div class="logo">
                    <img src="<%= request.getContextPath() %>/images/placementlogo.png" alt="Placement Tracking Logo">
                    <span>Placement Tracker</span>
                </div>
                <ul class="nav-links">
                    <li><a href="/">Home</a></li>
                    <li><a href="/signup">Sign Up</a></li>
                    <li><a href="/signin">Sign In</a></li>
                    <li><a href="/aboutus">About Us</a></li>
                </ul>
            </div>
        </nav>
    </header>

    <!-- Main Content -->
    <div class="content-wrapper">
        <!-- Left side image -->
        <img src="<%= request.getContextPath() %>/images/signup.png" alt="Signup Image" class="side-image">

        <!-- Signup form -->
        <div class="signup-container">
            <h2>Create an Account</h2>
            <form action="/signin" method="get">
                <input type="text" name="fullname" placeholder="Full Name" required>
                <input type="email" name="email" placeholder="Email" required>
                <input type="password" name="password" placeholder="Password" required>
                <input type="password" name="confirm_password" placeholder="Confirm Password" required>
                <button type="submit">Sign Up</button>
            </form>
            <p>Already have an account? <a href="/signin">Sign In</a></p>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Placement Tracking System. All rights reserved by DattuByreddy.</p>
    </footer>
</body>
</html>
