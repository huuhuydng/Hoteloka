<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Top 5 Khách sạn có doanh thu cao nhất</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .container {
            max-width: 1000px;
            margin: 0 auto;
        }
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
        .revenue {
            text-align: right;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Top 5 Khách sạn có doanh thu cao nhất</h1>
        
        <c:if test="${not empty top5Hotels}">
            <table>
                <thead>
                    <tr>
                        <th>ID Khách sạn</th>
                        <th>Tên Khách sạn</th>
                        <th>Doanh thu</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="hotel" items="${top5Hotels}">
                        <tr>
                            <td>${hotel.hotel_id}</td>
                            <td>${hotel.hotel_name}</td>
                            <td class="revenue">
                                <fmt:formatNumber value="${hotel.total_revenue}" pattern="#,##0" /> VNĐ
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
        
        <c:if test="${empty top5Hotels}">
            <p style="text-align: center; color: #666;">Không có dữ liệu để hiển thị</p>
        </c:if>
    </div>
</body>
</html>