<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Store Application</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Inter', sans-serif;
        }

        body {
            background-color: #f5f7fa;
        }

        header {
            background-color: #5f4dee;
            padding: 20px 50px;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        header h1 {
            font-size: 28px;
        }

        nav form {
            display: inline;
        }

        nav a, nav button {
            color: white;
            margin: 0 15px;
            text-decoration: none;
            font-weight: bold;
            background: none;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }

        .banner {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 50px;
            background-color: #e0e7ff;
        }

        .banner-text {
            max-width: 50%;
        }

        .banner-text h2 {
            font-size: 36px;
            margin-bottom: 20px;
        }

        .banner-text p {
            font-size: 18px;
            margin-bottom: 20px;
        }

        .banner img {
            width: 400px;
        }

        .book-section {
            padding: 40px 50px;
        }

        .section-title {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
        }

        .book-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
        }

        .book-card {
            background-color: white;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .book-card img {
            width: 100%;
            border-radius: 5px;
        }

        .book-card h4 {
            margin: 10px 0;
            font-size: 18px;
        }

        .book-card p {
            font-size: 14px;
            color: #777;
        }

        .footer {
            background-color: #5f4dee;
            padding: 20px;
            color: white;
            text-align: center;
            margin-top: 40px;
        }
    </style>
</head>

<body>

    <header>
        <h1>Book Store</h1>
        <nav>
            <a href="#">Home</a>
            <a href="#">Categories</a>
          
           <!-- view Form -->
      			<form action="/viewBooks" method="get">
   					<button type="submit" class="login-btn">View Books</button>
				</form>
       
            
            <!-- Login Form -->
            <a href="/login1" style="display:inline;">
               <button type="button">Login</button>
           </a>
            

            <!-- Logout Form -->
	            <a href="/logout" style="display:inline;">
	               <button type="button">Logout</button>
	             </a>
            
            
        </nav>
    </header>

    <div class="banner">
        <div class="banner-text">
            <h2>Special 50% Off</h2>
            <p>For our student community. Explore the best books at discounted prices.</p>
        </div>
        <img src="/pages/Images/Book1.png" alt="Banner Image">
    </div>

    <div class="book-section">
        <h3 class="section-title">Recommended for You</h3>
        <div class="book-list">
            <div class="book-card">
                <img src="/pages/Images/Book1.png" alt="Book Image">
                <h4>Book Title 1</h4>
                <p>Author Name</p>
            </div>
            <div class="book-card">
                <img src="/pages/Images/Book2.png" alt="Book Image">
                <h4>Book Title 2</h4>
                <p>Author Name</p>
            </div>
            <div class="book-card">
                <img src="/pages/Images/Book3.png" alt="Book Image">
                <h4>Book Title 3</h4>
                <p>Author Name</p>
            </div>
            <div class="book-card">
                <img src="/pages/Images/Book4.png" alt="Book Image">
                <h4>Book Title 4</h4>
                <p>Author Name</p>
            </div>
        </div>
    </div>

    <div class="footer">
        <p>&copy; 2025 Book Store. All rights reserved.</p>
    </div>

</body>

</html>
    