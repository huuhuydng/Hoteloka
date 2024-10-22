<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <title>Update Hotel Policy</title>
        <style>
            body {
                font-family: "Poppins", sans-serif;
                background-color: #f3f4f6;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
                padding: 0;
            }

            .container {
                max-width: 500px;
                width: 100%;
                background-color: #fff;
                padding: 40px;
                border-radius: 12px;
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
                border: 1px solid #e3e4e8;
                transition: transform 0.3s ease;
            }

            .container:hover {
                transform: scale(1.02);
                transition: transform 0.3s ease;
            }

            h1 {
                text-align: center;
                font-size: 24px;
                color: #34AF6D;
                margin-bottom: 30px;
                font-weight: 600;
            }

            .form-group {
                margin-bottom: 20px;
            }

            label {
                font-size: 14px;
                font-weight: bold;
                color: #333;
                margin-bottom: 10px;
                display: block;
            }

            .form-control {
                width: 100%;
                padding: 15px;
                border: 1px solid #dcdcdc;
                border-radius: 8px;
                font-size: 14px;
                color: #333;
                background-color: #fafafa;
                transition: border 0.3s;
                resize: vertical;
            }

            .form-control:focus {
                border-color: #34AF6D;
                outline: none;
            }

            button {
                width: 100%;
                padding: 15px;
                background-color: #34AF6D;
                color: #fff;
                border: none;
                border-radius: 8px;
                font-size: 16px;
                font-weight: bold;
                cursor: pointer;
                transition: background-color 0.3s;
            }

            button:hover {
                background-color: #2e9a5e;
            }

            .back-icon {
                display: flex;
                justify-content: flex-start;
                margin-bottom: 20px;
            }

            .back-icon i {
                font-size: 20px;
                color: #333;
                cursor: pointer;
                transition: color 0.3s;
            }

            .back-icon i:hover {
                color: #34AF6D;
            }
        </style>
    </head>
    <body>
        <c:if test="${empty sessionScope.account}">
            <script>
                window.location.href = "login.jsp";
            </script>
        </c:if>
        <div class="container">
            <div class="back-icon">
                <a href="javascript:history.back()">
                    <i class='bx bx-arrow-back'></i>
                </a>
            </div>
            <h1>CHỈNH SỬA CHÍNH SÁCH KHÁCH SẠN</h1>
            <form action="updatehotelpolicy" method="post">
                <c:set var="policies" value="${fn:split(sessionScope.hotel.hotel_policy, ';')}"/>
                <c:forEach var="policy" items="${policies}" varStatus="loop">
                    <div class="form-group">
                        <label>
                            <c:choose>
                                <c:when test="${loop.index == 0}">Dịch vụ</c:when>
                                <c:when test="${loop.index == 1}">Chính sách nhận trả phòng</c:when>
                                <c:when test="${loop.index == 2}">Chính sách trẻ em</c:when>
                                <c:when test="${loop.index == 3}">Chính sách hoàn hủy</c:when>
                                <c:when test="${loop.index == 4}">Ghi chú</c:when>
                            </c:choose>
                        </label>
                        <textarea name="hotel_policy_${loop.index}U" rows="3" class="form-control">${policy}</textarea>
                    </div>
                </c:forEach>
                <input type="hidden" name="hotelId" value="${sessionScope.hotel.hotel_id}">
                <button type="submit">Cập nhật</button>
            </form>
        </div>
    </body>
</html>