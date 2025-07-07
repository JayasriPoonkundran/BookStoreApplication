<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Book</title>
</head>
<body>

    <h2>Update Book</h2>

    <!-- Book ID Search Form -->
    <form action="/getBookForUpdate" method="get">
        <label for="bookNo">Enter Book ID to Update:</label>
        <input type="number" name="bookNo" required>
        <button type="submit">Fetch Book</button>
    </form>

    <!-- Display error if Book ID not found -->
    <c:if test="${not empty error}">
        <p style="color:red;">${error}</p>
    </c:if>

    <!-- Display form if book is fetched -->
    <c:if test="${not empty book}">
        <form action="/updateBookDetails" method="post">
            <input type="hidden" name="bookNo" value="${book.bookNo}">

            <label>Book Name:</label>
            <input type="text" name="bookName" value="${book.bookName}" required><br><br>

            <label>Book Author:</label>
            <input type="text" name="bookAuthor" value="${book.bookAuthor}" required><br><br>

            <label>Book Price:</label>
            <input type="number" step="0.01" name="bookPrice" value="${book.bookPrice}" required><br><br>

            <button type="submit" onclick="alert('Successfully Updated!')">Submit</button>
        </form>
    </c:if>

    <!-- Success message -->
    <c:if test="${not empty message}">
        <p style="color:green;">${message}</p>
    </c:if>

</body>
</html>
