<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 15/1/2024
  Time: 5:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  </head>
  <body>
  <h1>Chi tiết sản phẩm</h1>
  <div class="card" style="width: 16rem;  left: 40%">
      <img src="../static/images/${product.getImage()}" class="card-img-top" alt="...">
      <div class="card-body">
          <h5 class="card-title">${product.getName()}</h5>
          <p class="card-text">${product.getPrice()} $</p>
          <p class="card-text">${product.getDateOfManufacture()}</p>
          <p class="card-text">${product.getDescription()}</p>
          <a href="/products">Back to customer list</a>
      </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>