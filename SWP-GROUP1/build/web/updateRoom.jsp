<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Room Information Update</title>
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
                max-width: 1000px;
                width: 100%;
                background-color: #fff;
                padding: 30px;
                border-radius: 16px;
                box-shadow: 0 12px 40px rgba(0, 0, 0, 0.15);
                height: auto;
                overflow-y: auto;
            }

            h1 {
                text-align: center;
                font-size: 30px;
                color: #34AF6D;
                margin-bottom: 25px;
                letter-spacing: 1.2px;
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin-bottom: 25px;
            }

            table th, table td {
                padding: 14px 20px;
                text-align: center;
                border-bottom: 1px solid #eee;
            }

            table th {
                background-color: #34AF6D;
                color: white;
                font-size: 16px;
                letter-spacing: 0.5px;
                text-transform: uppercase;
            }

            table td {
                background-color: #fafafa;
                color: #333;
                font-size: 15px;
            }

            table td img {
                max-width: 100px;
                border-radius: 8px;
            }

            .action-buttons {
                display: flex;
                justify-content: center;
                gap: 15px;
            }

            .nav-buttons a, .nav-buttons button {
                display: flex;
                justify-content: center;
                align-items: center;
                font-size: 16px;
                font-weight: bold;
                text-decoration: none;
                color: #34AF6D;
                padding: 10px 20px;
                border-radius: 8px;
                border: 2px solid #34AF6D;
                transition: color 0.3s, background-color 0.3s;
                cursor: pointer;
                background: none;
            }

            .nav-buttons a:hover, .nav-buttons button:hover {
                background-color: #34AF6D;
                color: #fff;
            }

            .btn-update, .btn-delete {
                font-size: 14px;
                padding: 10px 20px;
                border-radius: 10px;
                cursor: pointer;
                transition: all 0.3s ease;
                font-weight: bold;
            }

            .btn-update {
                background-color: #34AF6D;
                color: white;
                border: 2px solid #34AF6D;
            }

            .btn-delete {
                background-color: #ff6666;
                color: white;
                border: 2px solid #ff6666;
            }

            .btn-update:hover {
                background-color: #28a745;
                color: white;
            }

            .btn-delete:hover {
                background-color: #ff4d4d;
                color: white;
            }

            .add-room-button {
                display: flex;
                justify-content: center;
                margin-top: 25px;
            }

            .add-room-button .btn-update {
                font-size: 16px;
                padding: 12px 25px;
            }

            a {
                color: inherit;
                text-decoration: none;
                transition: all 0.3s ease;
            }

            a:hover {
                text-decoration: underline;
            }

        </style>
    </head>
    <body>
        <c:if test="${sessionScope.account == null}">
            <script>
                window.location.href = "login.jsp";
            </script>
        </c:if>
        <div class="container">
            <a style="color: #34AF6D; text-decoration: none; margin-left: 15px;" href="partnerInfo.jsp">Quay lại</a>
            <c:if test="${not empty error}">
                <p style="color: red;
                   text-align: center">${error}</p>
            </c:if>
            <h1>Cập nhật thông tin Phòng</h1>
            <table>
                <thead>
                    <tr>
                        <th>Tên phòng</th>
                        <th>Giá tiền</th>
                        <th>URL ảnh</th>
                        <th>Số lượng người tối đa</th>
                        <th>Số phòng hiện có</th>
                        <th>Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="room" items="${sessionScope.room}">
                        <tr>
                            <td>${room.room_name}</td>
                            <td>${room.room_price}</td>
                            <td>${room.room_img}</td>
                            <td>${room.numPeople}</td>
                            <td>${room.numRoom}</td>
                            <td>
                                <div class="action-buttons">
                                    <a href="eachRoomUpdate.jsp?room_id=${room.room_id}" class="btn-update">Cập nhật</a>

                                    <!-- Redirect to a Delete confirmation page -->
                                    <a href="deleteRoom.jsp?room_id=${room.room_id}" class="btn-delete">Xoá</a>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div class="add-room-button">            
                <a href="addNewRoom.jsp?hotel_id=${sessionScope.hotel.hotel_id}" class="btn-update">Thêm phòng cho Hotel</a>         
            </div>
        </div>
    </body>
</html>
