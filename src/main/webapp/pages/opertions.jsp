<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Operations - Book Store</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url('https://images.unsplash.com/photo-1512820790803-83ca734da794?ixlib=rb-4.0.3&auto=format&fit=crop&w=1470&q=80') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            height: 100vh;
        }

        .login {
            background: rgba(255, 255, 255, 0.9);
            padding: 30px 25px;
            border-radius: 20px;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.3);
            width: 400px;
            text-align: center;
            margin-top: 50px;
        }

        .login-title {
            font-size: 28px;
            margin-bottom: 20px;
            color: #2c3e50;
        }

        .login-btn {
            width: 90%;
            padding: 14px;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            color: white;
            border: none;
            border-radius: 25px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 15px;
            transition: background 0.3s;
        }

        .login-btn:hover {
            background: linear-gradient(135deg, #5a67d8, #6b46c1);
        }

        .logout-btn {
            width: 90%;
            padding: 14px;
            background: linear-gradient(135deg, #ff4b2b, #ff416c);
            color: white;
            border: none;
            border-radius: 25px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 15px;
            transition: background 0.3s;
        }

        .logout-btn:hover {
            background: linear-gradient(135deg, #e63946, #f72585);
        }
    </style>
</head>

<body>

    <div class="login">
        <h2 class="login-title">Welcome to Book Store</h2>

        <a href="/addBook"><button class="login-btn">Add Book</button></a><br>
        <a href="/updateBook"><button class="login-btn">Update Book</button></a>
        
        <a href="/delete"><button class="login-btn">Delete Book</button></a><br>
        <a href="/viewBooks"><button class="login-btn">View Books</button></a><br>
        <a href="/logout"><button class="logout-btn">Logout</button></a>

    </div>

</body>

</html>
