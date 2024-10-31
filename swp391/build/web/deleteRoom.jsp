<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Room" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Xác nhận Xóa Phòng</title>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <style>
            body {
                font-family: "Poppins", sans-serif;
                background-color: #e8f5e9; /* Màu xanh lá nhạt */
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }

            .container {
                max-width: 500px;
                background-color: #ffffff; /* Nền trắng cho container */
                padding: 40px;
                border-radius: 12px;
                box-shadow: 0 10px 30px rgba(0, 0, 0.1, 0.3);
                border: 1px solid #c8e6c9; /* Viền xanh lá nhạt */
                text-align: center;
                transition: transform 0.3s ease;
            }

            .container:hover {
                transform: scale(1.02);
            }

            h1 {
                font-size: 22px;
                color: #388e3c; /* Màu xanh lá cho tiêu đề */
                margin-bottom: 20px;
                font-weight: 600;
            }

            .highlight-name {
                font-size: 18px;
                color: black; /* Màu đen cho tên phòng */
                margin-bottom: 30px;
                font-weight: bold;
            }

            .actions {
                display: flex;
                justify-content: space-between;
            }

            button {
                padding: 15px 30px;
                background-color: #4caf50; /* Nền xanh lá cho nút */
                color: #fff;
                border: none;
                border-radius: 8px;
                font-size: 14px;
                cursor: pointer;
                transition: background-color 0.3s ease;
                font-weight: bold;
            }

            button:hover {
                background-color: #388e3c; /* Màu xanh lá đậm hơn khi hover */
            }

            .cancel-btn {
                background-color: #ff4d4d; /* Nền đỏ cho nút Hủy */
                margin-left: 20px;
            }

            .cancel-btn:hover {
                background-color: #ff6666; /* Màu đỏ đậm hơn khi hover */
            }

            form {
                display: inline;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <%
                // Lấy room_id từ request
                String roomId = request.getParameter("room_id");

                // Lấy danh sách phòng từ session
                List<Room> rooms = (List<Room>) session.getAttribute("room");

                // Tìm phòng theo roomId
                Room currentRoom = null;
                if (rooms != null) { // Kiểm tra nếu rooms không null
                    for (Room room : rooms) {
                        if (room.getRoom_id().equals(roomId)) {
                            currentRoom = room;
                            break;
                        }
                    }
                }

                if (currentRoom == null) {
                    out.println("Không tìm thấy phòng!");
                    return;
                }
            %>

            <h1>BẠN CÓ MUỐN XOÁ PHÒNG HIỆN TẠI KHÔNG?</h1>
            <p class="highlight-name"><%= currentRoom.getRoom_name()%></p>
            <div class="actions">
                <form action="DeleteRoomServlet" method="post">
                    <input type="hidden" name="room_id" value="<%= currentRoom.getRoom_id()%>"> <!-- Truyền room_id -->
                    <input type="hidden" name="hotel_id" value="${sessionScope.hotel.hotel_id}"> <!-- Truyền hotel_id -->
                    <button type="submit">CÓ</button>
                </form>
                <a href="updateRoom.jsp" class="cancel-btn">
                    <button type="button">KHÔNG</button>
                </a>
            </div>
        </div>
    </body>
</html>