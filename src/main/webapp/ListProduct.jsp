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
<h1>Thông tin sản phẩm bao gồm</h1>
<br><br>

<table class="col-10 table table-striped">
    <thead>
    <tr>
        <th>Id Product</th>
        <th>Name</th>
        <th>Price SP</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach items='${listProduct}' var="sanPham">
        <tr>
            <td>${sanPham.idSP}</td>
            <td>${sanPham.name}</td>
            <td>${sanPham.price}</td>

            <td><a href="product?action=edit&id=${sanPham.idSP}">Edit</a></td>
            <td><a href="product?action=delete&id=${sanPham.idSP}">Delete</a></td>
            <td><a href="product?action=create">Create</a></td>
        </tr>
    </c:forEach>


    </tbody>
</table>

</body>
</html>
