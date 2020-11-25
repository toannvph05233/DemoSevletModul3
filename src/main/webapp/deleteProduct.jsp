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
        <h1>Thông tin Deleter</h1>
        <br><br>
        <table class="col-12 table table-striped">
            <thead>
            <tr>
                <th>Id Product</th>
                <th>Name</th>
                <th>Price SP</th>
                <th>Số Lượng</th>
                <th>Color</th>
                <th>Comment</th>
                <th>Category</th>
            </tr>
            </thead>
            <tbody>

            <tr>
                <td><input type="text" name="idSP" id="idSP" value="${requestScope["sanPham"].getIdSP()}"></td>
                <td><input type="text" name="nameSP" id="nameSP" value="${requestScope["sanPham"].getName()}"></td>
                <td><input type="number" name="giaSP" id="giaSP" value="${requestScope["sanPham"].getPrice()}"></td>
                <td><input type="number" name="soluong" id="soluong" value="${requestScope["sanPham"].getSoluong()}">
                </td>
                <td><input type="text" name="color" id="color" value="${requestScope["sanPham"].getColor()}"></td>
                <td><input type="text" name="comment" id="comment" value="${requestScope["sanPham"].getComment()}"></td>
                <td><input type="text" name="Category" id="Category" value="${requestScope["sanPham"].getCategory()}">
                </td>

                <td><input type="submit" value="Deleter"></td>

            </tr>

            </tbody>
        </table>
    </form>
    <a href="product">Back to product list</a>
</div>
</body>
</html>
