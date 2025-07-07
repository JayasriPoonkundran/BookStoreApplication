<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Store - Login</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url('https://images.unsplash.com/photo-1512820790803-83ca734da794?ixlib=rb-4.0.3&auto=format&fit=crop&w=1470&q=80') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login {
            background: rgba(255, 255, 255, 0.9);
            padding: 40px 30px;
            border-radius: 20px;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.3);
            width: 400px;
            text-align: center;
        }

        .login img {
            width: 100px;
            margin-bottom: 15px;
            /* Circle and shadow removed */
        }

        .login-title {
            font-size: 30px;
            margin-bottom: 25px;
            color: #2c3e50;
        }

        .input-field {
            width: 90%;
            padding: 14px;
            margin: 12px 0px;
            border: 1px solid #cccccc;
            border-radius: 8px;
            outline: none;
            font-size: 15px;
            transition: all 0.3s ease;
        }

        .input-field:focus {
            border-color: #764ba2;
            box-shadow: 0 0 5px rgba(118, 75, 162, 0.5);
        }

        .login-btn {
            width: 100%;
            padding: 14px;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            color: white;
            border: none;
            border-radius: 25px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
            transition: background 0.3s;
        }

        .login-btn:hover {
            background: linear-gradient(135deg, #5a67d8, #6b46c1);
        }

        .footer {
            margin-top: 15px;
            font-size: 14px;
            color: #555;
        }

        .footer a {
            color: #6a11cb;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

    <div class="login">
        <img src="Book_logo.png" alt="Enter username and password to logout" id="logo">
        <h2 class="login-title">Enter username and password to logout</h2>
        <form action="/logout" method="post">
            <input type="text" name="username" placeholder="Username" required class="input-field"><br><br>
            <input type="password" name="password" placeholder="Password" required class="input-field"><br><br>
            <a href="/login1" style="display:inline;">
               <button type="button">Logout</button>
           </a>
        </form>
        <div class="footer">
            Don't have an account? <a href="#">Sign up</a>
        </div>
        
    </div>

</body>

</html>
    