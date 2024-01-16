<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 14/1/2024
  Time: 6:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>List Products</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<h1>Danh sách sản phẩm</h1>
<div class="container">
    <form class="d-flex" role="search" action="/products?action=search" method="post">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="name">
        <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
    <button onclick="window.location.href='/products?action=create'" class="btn btn-warning">Thêm mới</button>
    <table class="table">
        <thread>
            <tr>
                <th>Mã sản phẩm</th>
                <th>Tên sản phẩm</th>
                <th>Giá</th>
                <th>Xem chi tiết sản phẩm</th>
                <th>Cập nhật</th>
                <th>Xoá sản phẩm</th>
            </tr>
        </thread>
        <tbody>
        <c:forEach items="${productList}" var="product">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>>
                <td>${product.price} $</td>>
                <td><button onclick="window.location.href='/products?action=view&id=${product.id}'"
                            class="btn btn-warning">Chi tiết</button></td>
                <td><button onclick="window.location.href='/products?action=update&id=${product.id}'"
                            class="btn btn-warning">Cập nhật</button></td>
                <td><button onclick="window.location.href='/products?action=delete&id=${product.id}'"
                            class="btn btn-warning">Xoá</button></td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

</body>
</html>
