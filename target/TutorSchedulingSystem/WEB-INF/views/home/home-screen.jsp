<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- ────────────────────────────────────────────────────────────────
     1. Khai báo DateTimeFormatter để format LocalDateTime → dd/MM/yyyy
   ──────────────────────────────────────────────────────────────── --%>
<%
    java.time.format.DateTimeFormatter dtf =
            java.time.format.DateTimeFormatter.ofPattern("dd/MM/yyyy");
    pageContext.setAttribute("dtf", dtf);   // EL sẽ nhìn thấy biến dtf
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách xe</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>

<body>
<div class="container my-5">
    <h1 class="mb-4">Danh sách xe trong hệ thống</h1>

    <table class="table table-striped table-hover">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>Biển số</th>
            <th>Model&nbsp;ID</th>
            <th>Năm&nbsp;SX</th>
            <th>Giá (VND)</th>
            <th>Màu</th>
            <th>Số&nbsp;km</th>
            <th>Tình&nbsp;trạng</th>
            <th>Ngày&nbsp;tạo</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach var="car" items="${cars}">
            <tr>
                <td>${car.carId}</td>
                <td>${car.licensePlate}</td>
                <td>${car.modelId}</td>
                <td>${car.manufactureYear}</td>

                <!-- Hiển thị giá có dấu phẩy ngăn cách hàng nghìn -->
                <td>
                    <c:out value="${String.format('%,.0f', car.price)}"/>
                </td>

                <td>${car.exteriorColor}</td>
                <td>${car.mileage}</td>
                <td>${car.conditionId}</td>

                <!-- Định dạng LocalDateTime bằng dtf đã khai báo -->
                <td>
                    <c:out value="${car.createdAt != null
                                   ? car.createdAt.format(dtf)
                                   : ''}"/>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
