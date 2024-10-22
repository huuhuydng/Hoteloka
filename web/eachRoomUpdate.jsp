<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Room" %> <!-- Importing your Room model class -->
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Update Room Information</title>
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
                max-width: 800px;
                width: 100%;
                background-color: #fff;
                padding: 20px;
                border-radius: 12px;
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
                height: auto;
                overflow-y: auto;
                margin: 0;
            }

            h1 {
                text-align: center;
                font-size: 28px;
                color: #34AF6D;
                margin-bottom: 20px;
            }

            label, input {
                display: block;
                width: 97%;
                margin-bottom: 12px;
                font-size: 14px;
            }

            input {
                padding: 10px;
                border: 1px solid #dcdcdc;
                border-radius: 8px;
                background-color: #fafafa;
                transition: border-color 0.3s;
            }

            input:focus {
                border-color: #34AF6D;
                outline: none;
            }

            .nav-buttons {
                display: flex;
                justify-content: space-between;
                margin-top: 20px;
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
        </style>
    </head>
    <body>
        <c:if test="${sessionScope.account == null}">
            <script>
                window.location.href = "login.jsp";
            </script>
        </c:if>
        <div class="container">
            <h1>Cập nhật Phòng</h1>

            <%
                // Get the room_id from the request
                String roomId = request.getParameter("room_id");

                // Get the room list from the session
                List<Room> rooms = (List<Room>) session.getAttribute("room");

                // Find the room by roomId
                Room currentRoom = null;
                for (Room room : rooms) {
                    if (room.getRoom_id().equals(roomId)) {
                        currentRoom = room;
                        break;
                    }
                }

                if (currentRoom == null) {
                    out.println("Room not found!");
                    return;
                }
            %>

            <form action="updateRoom" method="post">
                <!-- Pass the room_id back as a hidden input -->
                <input type="hidden" name="room_id" value="<%= currentRoom.getRoom_id()%>">

                <label for="room_name">Tên phòng</label>
                <input type="text" id="room_name" name="room_name" value="<%= currentRoom.getRoom_name()%>" required>

                <label for="room_price">Giá tiền</label>
                <input type="text" id="room_price" name="room_price" value="<%= currentRoom.getRoom_price()%>" required oninput="formatCurrency(this)">

                <label for="room_img">URL ảnh</label>
                <input type="url" id="room_img" name="room_img" value="<%= currentRoom.getRoom_img()%>" required>

                <label for="numPeople">Số lượng người tối đa</label>
                <input type="number" id="numPeople" name="numPeople" value="<%= currentRoom.getNumPeople()%>" required>

                <label for="numRoom">Số phòng hiện có</label>
                <input type="number" id="numRoom" name="numRoom" value="<%= currentRoom.getNumRoom()%>" required>
                <input type="hidden" name="hotel_id" value="${sessionScope.hotel.hotel_id}">
                <div class="nav-buttons">
                    <a href="listRoom?hotel_id=${sessionScope.hotel.hotel_id}" class="back">Quay lại</a>
                    <button type="submit">Cập nhật</button>
                </div>
            </form>
        </div>
        <script>
            function formatCurrency(input) {
                let value = input.value.replace(/\./g, '');
                value = parseInt(value, 10).toLocaleString('vi-VN');
                input.value = value;
            }
        </script>
    </body>
</html>
