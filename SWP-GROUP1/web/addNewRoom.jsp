<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Thêm Phòng Mới</title>
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
                padding: 30px;
                border-radius: 16px;
                box-shadow: 0 12px 40px rgba(0, 0, 0, 0.15);
                transition: all 0.3s ease;
            }

            .container:hover {
                box-shadow: 0 16px 50px rgba(0, 0, 0, 0.2);
            }

            h1 {
                text-align: center;
                color: #34AF6D;
                margin-bottom: 25px;
                font-size: 28px;
                letter-spacing: 1.2px;
            }

            label {
                display: block;
                margin-bottom: 8px;
                font-size: 15px;
                color: #333;
            }

            input[type="text"], input[type="number"], input[type="url"] {
                width: 100%;
                padding: 12px;
                margin: 10px 0;
                border: 1px solid #ddd;
                border-radius: 8px;
                font-size: 14px;
                color: #333;
                box-sizing: border-box;
                transition: all 0.3s ease;
            }

            input[type="text"]:focus, input[type="number"]:focus, input[type="url"]:focus {
                border-color: #34AF6D;
                box-shadow: 0 0 5px rgba(52, 175, 109, 0.3);
                outline: none;
            }

            .submit-btn {
                background-color: #34AF6D;
                color: white;
                padding: 12px 20px;
                border: none;
                border-radius: 8px;
                cursor: pointer;
                width: 100%;
                font-size: 16px;
                margin-top: 15px;
                transition: all 0.3s ease;
                box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            }

            .submit-btn:hover {
                background-color: #28a745;
                transform: translateY(-2px);
                box-shadow: 0 6px 18px rgba(0, 0, 0, 0.2);
            }


        </style>
    </head>
    <body>
        <div class="container">
            <a style="color: #28a745;
               text-decoration: none;" href="updateRoom.jsp">Back</a>
            <h1>Thêm Phòng Mới</h1>
            <form action="AddNewRoom" method="post"> <!-- Chuyển đến Servlet -->
                <input type="hidden" name="hotel_id" value="${sessionScope.hotel.hotel_id}"/> <!-- Lấy hotel_id từ sessionScope -->

                <label for="room_name">Tên phòng:</label>
                <input type="text" id="room_name" name="room_name" required>

                <label for="room_price">Giá tiền:</label>
                <input type="number" id="room_price" name="room_price" required>

                <label for="room_img">URL ảnh:</label>
                <input type="url" id="room_img" name="room_img" required>

                <label for="numPeople">Số lượng người tối đa:</label>
                <input type="number" id="numPeople" name="numPeople" required>

                <label for="numRoom">Số phòng hiện có:</label>
                <input type="number" id="numRoom" name="numRoom" required>

                <button type="submit" class="submit-btn">Thêm Phòng</button>
            </form>
        </div>
    </body>
</html>
