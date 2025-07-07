<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Store - Add Book</title>
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

        .login img {
            width: 100px;
            margin-bottom: 10px;
        }

        .login-title {
            font-size: 28px;
            margin-bottom: 20px;
            color: #2c3e50;
        }

        .input-field {
            width: 90%;
            padding: 12px;
            margin: 10px 0px;
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
            padding: 12px;
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

        .back-btn {
            width: 100%;
            padding: 12px;
            background: linear-gradient(135deg, #ff4b2b, #ff416c);
            color: white;
            border: none;
            border-radius: 25px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
            transition: background 0.3s;
        }

        .back-btn:hover {
            background: linear-gradient(135deg, #e63946, #f72585);
        }
    </style>
</head>

<body>

    <div class="login">
        <img src="Book_logo.png" alt="Book Store Logo" id="logo">
        <h2 class="login-title">Add New Book</h2>
        <form action="/addBook" method="post">
        
        <c:if test="${not empty message}">
          <p style="color: green; font-weight: bold;">${message}</p>
        </c:if>
        
          
            <input type="text" name="title" placeholder="Title" required class="input-field"><br>
            <input type="text" name="author" placeholder="Author" required class="input-field"><br>
            <input type="text" name="publisher" placeholder="Publisher" required class="input-field"><br>
            
            <input type="text" name="category" placeholder="Category" required class="input-field"><br>
            <input type="number" step="0.01" name="price" placeholder="Price" required class="input-field"><br>

            <button type="submit" class="login-btn">Add Book</button>
        </form>
        <form action="/home">
            <button type="submit" class="back-btn">Back</button>
        </form>
    </div>

</body>

</html>
    