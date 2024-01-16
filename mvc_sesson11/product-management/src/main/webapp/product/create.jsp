<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 15/1/2024
  Time: 5:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <form action="/products" method="post">
        <input type="hidden" name="action" value="create">
        <label>Mã số</label>
        <input class="form-control" type="number" name="id">
        <label>Tên sản phẩm</label>
        <input class="form-control" type="text" name="name">
        <label>Ngày sản xuất</label>
        <input class="form-control" type="text" name="dateOfManufacture">
        <label>Mô tả</label>
        <textArea cols="10" rows="5" class="form-control" name="description"></textArea>
        <label>Giá sản phẩm</label>
        <input class="form-control" type="number" name="price">
        <label>Hình ảnh sản phẩm</label>
        <input class="form-control" type="file" name="images">
        <button type="submit" class="btn btn-primary">Create</button>
    </form>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>
