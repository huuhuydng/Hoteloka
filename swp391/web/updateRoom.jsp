<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cập nhật Thông tin Phòng</title>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
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
                max-width: 1200px;
                width: 100%;
                background-color: #fff;
                padding: 40px;
                border-radius: 16px;
                box-shadow: 0 12px 40px rgba(0, 0, 0, 0.15);
                height: auto;
                overflow-y: auto;
            }

            h1 {
                text-align: center;
                font-size: 32px;
                color: #34AF6D;
                margin-bottom: 30px;
                letter-spacing: 1.2px;
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin-bottom: 30px;
            }

            table th, table td {
                padding: 16px 24px;
                text-align: center;
                border-bottom: 1px solid #eee;
            }

            table th {
                background-color: #34AF6D;
                color: white;
                font-size: 18px;
                letter-spacing: 0.5px;
                text-transform: uppercase;
            }

            table td {
                background-color: #fafafa;
                color: #333;
                font-size: 16px;
            }

            table td img {
                max-width: 150px;
                border-radius: 8px;
            }

            table td .person-icon {
                font-size: 20px;
                margin-right: 5px;
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
                font-size: 18px;
                font-weight: bold;
                text-decoration: none;
                color: #34AF6D;
                padding: 12px 24px;
                border-radius: 8px;
                border: 2px solid #34AF6D;
                transition: color 0.3s, background-color 0.3s, transform 0.3s;
                cursor: pointer;
                background: none;
            }

            .nav-buttons a:hover, .nav-buttons button:hover {
                background-color: #34AF6D;
                color: #fff;
                transform: translateY(-2px);
            }

            .btn-update, .btn-delete {
                font-size: 16px;
                padding: 12px 24px;
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
                transform: translateY(-2px);
            }

            .btn-delete:hover {
                background-color: #ff4d4d;
                color: white;
                transform: translateY(-2px);
            }

            .add-room-button {
                display: flex;
                justify-content: center;
                margin-top: 30px;
            }

            .add-room-button .btn-update {
                font-size: 18px;
                padding: 14px 28px;
            }

            a {
                color: inherit;
                text-decoration: none;
                transition: all 0.3s ease;
            }

            a:hover {
                text-decoration: none;
            }

            .back-link {
                display: inline-block;
                margin-left: 15px;
                color: #34AF6D;
                text-decoration: none;
                font-size: 18px;
                transition: color 0.3s, transform 0.3s;
            }

            .back-link:hover {
                color: #2e9a5e;
                transform: translateX(-2px);
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
            <a href="hotelManagement" class="back-link">
                <i class='bx bx-arrow-back'></i> Quay lại
            </a>
            <c:if test="${not empty error}">
                <p style="color: red; text-align: center">${error}</p>
            </c:if>
            <h1>Cập nhật Thông tin Phòng</h1>
            <table>
                <thead>
                    <tr>
                        <th>Tên phòng</th>
                        <th>Giá tiền</th>
                        <th>Ảnh phòng</th>
                        <th>Số lượng người tối đa</th>
                        <th>Số phòng hiện có</th>
                        <th>Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="room" items="${sessionScope.room}">
                        <tr>
                            <td>${room.room_name}</td>
                            <td>${room.room_price} VND</td>
                            <td><img src="${room.room_img}" alt="${room.room_name}"></td>
                            <td>
                                <c:forEach begin="1" end="${room.numPeople}">
                                    <i class='bx bxs-user person-icon'></i>
                                </c:forEach>
                            </td>
                            <td>${room.numRoom}</td>
                            <td>
                                <div class="action-buttons">
                                    <a href="eachRoomUpdate.jsp?room_id=${room.room_id}" class="btn-update">Cập nhật</a>
                                    <a href="deleteRoom.jsp?room_id=${room.room_id}" class="btn-delete">Xoá</a>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                <input type="hidden" name="hotel_id" value="${sessionScope.hotel.hotel_id}">
                </tbody>
            </table>
            <div class="add-room-button">            
                <a href="addNewRoom.jsp?hotel_id=${sessionScope.hotel.hotel_id}" class="btn-update">Thêm phòng cho Hotel</a>         
            </div>
        </div>
    </body>
</html>