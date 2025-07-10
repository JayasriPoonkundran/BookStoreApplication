<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Book</title>
    <style>
        body { font-family: Arial; display: flex; justify-content: center; align-items: center; height: 100vh; background-color: #f5f5f5; }
        .container { background: white; padding: 30px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.2); width: 400px; }
        input, button { margin: 10px 0; padding: 8px; width: 100%; }
        .success { color: green; text-align: center; margin-bottom: 15px; }
        .error { color: red; text-align: center; margin-bottom: 15px; }
    </style>
</head>

<body>

    <div class="container">
        <h2>Update Book</h2>

        <!-- Show success message -->
        <c:if test="${not empty message}">
            <div class="success">${message}</div>
        </c:if>

        <!-- Show error message -->
        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>

        <!-- Book ID Form (Show only if book is not yet fetched) -->
        <c:if test="${empty fetched}">
            <form action="/fetchBook" method="post">
                <label>Enter Book ID:</label>
                <input type="number" name="bookNo" required>
                <button type="submit">Fetch Book</button>
            </form>
        </c:if>

        <!-- Book Details Form (Show only if book is fetched) -->
        <c:if test="${fetched == true}">
            <form action="/updateBookDetails" method="post">
                <input type="hidden" name="bookNo" value="${book.bookNo}" required>

                <label>Title:</label>
                <input type="text" name="title" value="${book.title}" required>

                <label>Author:</label>
                <input type="text" name="author" value="${book.author}" required>

                <label>Publisher:</label>
                <input type="text" name="publisher" value="${book.publisher}" required>

                <label>Category:</label>
                <input type="text" name="category" value="${book.category}" required>

                <label>Price:</label>
                <input type="number" name="price" value="${book.price}" step="0.01" required>

                <button type="submit">Update Book</button>
            </form>
        </c:if>

        <br>
        <!-- Back to Operations -->
        <a href="/opertions">
            <button type="button">Back</button>
        </a>
    </div>

</body>

</html>
