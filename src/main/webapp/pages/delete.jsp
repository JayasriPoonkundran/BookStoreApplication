<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Book</title>
    <style>
        /* Your existing CSS */
    </style>

    <script>
        function showDeleteSuccess() {
            alert("Book Deleted Successfully!");
        }
    </script>
</head>

<body>

    <div class="login">
        <h2 class="login-title">Delete Book</h2>

        <!-- Show Message and Alert -->
        <c:if test="${not empty message}">
            <script>
                showDeleteSuccess();
            </script>
        </c:if>

        <!-- Delete Form -->
        <form action="/deleteBook" method="post">
            <input type="text" name="bookNo" placeholder="Enter Book ID" required class="input-field"><br>
            <button type="submit" class="login-btn">Delete Book</button>
        </form>

        <!-- Back Button -->
        <form action="/home">
            <button type="submit" class="login-btn">Back</button>
        </form>
    </div>

</body>

</html>
