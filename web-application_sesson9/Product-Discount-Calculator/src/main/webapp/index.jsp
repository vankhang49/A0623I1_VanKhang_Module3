<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
        crossorigin="anonymous">

</head>
<body>
<h1 class="text-center">Product Discount Calculator</h1>
<div class="container" style="width: 500px">
  <form action="/display-discount" method="post" class="row g-3">
    <label>Product Description:</label>
    <textarea id="w3review" name="txtDescription" rows="10" cols="50"></textarea><br>
    <label>List Price:</label>
    <input type="text" name="txtListPrice"/><br>
    <label>Discount Percent:</label>
    <input type="text" name="txtDiscountPercent"/><br>
    <input type="submit" id="submit" value="Calculate Discount" class="btn btn-primary mb-3"/>
  </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
</body>
</html>