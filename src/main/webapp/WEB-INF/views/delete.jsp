<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Book</title>
    <style>
        body { font-family: Arial; display: flex; justify-content: center; align-items: center; height: 100vh; background-color: #f5f5f5; }
        .container { background: white; padding: 30px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.2); width: 400px; }
        input, button { margin: 10px 0; padding: 8px; width: 100%; }
        .success { color: green; text-align: center; margin-bottom: 15px; font-weight: bold; }
        .error { color: red; text-align: center; margin-bottom: 15px; font-weight: bold; }
    </style>
</head>

<body>

    <div class="container">
        <h2>Delete Book</h2>

        <!-- ✅ Show success message in green -->
        <c:if test="${not empty message}">
            <div class="success">${message}</div>
        </c:if>

        <!-- ✅ Show error message in red -->
        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>

        <!-- Delete Form -->
        <form action="/deleteBook" method="post">
            <label>Enter Book ID to Delete:</label>
            <input type="number" name="bookNo" required>
            <button type="submit">Delete</button>
        </form>

        <br>
        <!-- Back to Operations Page -->
        <a href="/opertions">
            <button type="button">Back</button>
        </a>
    </div>

</body>

</html>
