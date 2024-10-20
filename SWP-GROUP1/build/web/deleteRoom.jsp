<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Room" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Confirm Delete Account</title>
    <style>
        body {
            font-family: "Poppins", sans-serif;
            background-color: #e8f5e9; /* Light green background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            max-width: 500px;
            background-color: #ffffff; /* White background for the container */
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0.1, 0.3);
            border: 1px solid #c8e6c9; /* Light green border */
            text-align: center;
            transition: transform 0.3s ease;
        }

        .container:hover {
            transform: scale(1.02);
        }

        h1 {
            font-size: 22px;
            color: #388e3c; /* Green color for the title */
            margin-bottom: 20px;
            font-weight: 600;
        }

        .highlight-email {
            font-size: 18px;
            color: black; /* Darker green for email display */
            margin-bottom: 30px;
            font-weight: bold;
        }

        .actions {
            display: flex;
            justify-content: space-between;
        }

        button {
            padding: 15px 30px;
            background-color: #4caf50; /* Green background for buttons */
            color: #fff;
            border: none;
            border-radius: 8px;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-weight: bold;
        }

        button:hover {
            background-color: #388e3c; /* Darker green on hover */
        }

        .cancel-btn {
            background-color: #ff4d4d; /* Red color for cancel button */
            margin-left: 20px;
        }

        .cancel-btn:hover {
            background-color: #ff6666; /* Darker red on hover */
        }

        form {
            display: inline;
        }
    </style>
</head>
<body>
    <div class="container">
        <%
            // Get the room_id from the request
            String roomId = request.getParameter("room_id");

            // Get the room list from the session
            List<Room> rooms = (List<Room>) session.getAttribute("room");

            // Find the room by roomId
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
                out.println("Room not found!");
                return;
            }
        %>
        
        <h1>BẠN CÓ MUỐN XOÁ PHÒNG HIỆN TẠI KHÔNG?</h1>
        <p class="highlight-email"><%= currentRoom.getRoom_name() %></p>
        <div class="actions">
            <form action="DeleteRoomServlet" method="post">
                <input type="hidden" name="room_id" value="<%= currentRoom.getRoom_id() %>"> <!-- Đảm bảo truyền room_id -->
                <button type="submit">CÓ</button>
            </form>
            <form action="updateRoom.jsp">
                <button type="submit" class="cancel-btn">KHÔNG</button>
            </form>
        </div>
    </div>
</body>
</html>
