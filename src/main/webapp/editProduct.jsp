<!DOCTYPE html>
<%@ page import="java.util.ArrayList" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <head>
        <meta charset="UTF-8">
        <title>Johntoan</title>
        <link rel="stylesheet" href="css/bootstrap.css">
    </head>
</head>
<body>
<div class="carousel-inner">
<form method="post">
    <h1>Thông tin Edit</h1>
    <br><br>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>Id Product</th>
            <th>Name</th>
            <th>Price SP</th>

        </tr>
        </thead>
        <tbody>

        <tr>
            <td><input type="text" name="idSP" id="idSP" value="${requestScope["Product"].getIdSP()}"></td>
            <td><input type="text" name="nameSP" id="nameSP" value="${requestScope["Product"].getName()}"></td>
            <td><input type="number" name="giaSP" id="giaSP" value="${requestScope["Product"].getPrice()}"></td>


            <td><input type="submit" value="edit"></td>

        </tr>

        </tbody>
    </table>
</form>
    <a href="product">Back to product list</a>
</div>
</body>
</html>
