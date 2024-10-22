<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Room Information Input</title>
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
                max-width: 900px;
                width: 100%;
                background-color: #fff;
                padding: 20px;
                border-radius: 12px;
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
                height: 90vh;
                overflow-y: auto;
                margin: 0;
            }

            h1 {
                text-align: center;
                font-size: 28px;
                color: #34AF6D;
                margin-bottom: 20px;
            }

            .room-container {
                background-color: #fff;
                padding: 20px;
                border-radius: 12px;
                box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
                margin-bottom: 30px;
                transition: transform 0.3s ease;
            }

            .room-container:hover {
                transform: scale(1.02);
            }

            h3 {
                font-size: 22px;
                color: #34AF6D;
                margin-bottom: 15px;
            }

            label, input {
                display: block;
                width: 100%;
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

            .nav-buttons a,
            .nav-buttons button {
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

            .nav-buttons a:hover,
            .nav-buttons button:hover {
                background-color: #34AF6D;
                color: #fff;
            }

        </style>
    </head>
    <body>
        <div class="container">
            <h1>CHI TIẾT PHÒNG</h1>
            <form action="submithotel" method="post">
                <%
                    String numTypeRoom = (String) session.getAttribute("hotel_numTypeRoom");
                    int roomCount = Integer.parseInt(numTypeRoom);
                    for (int i = 1; i <= roomCount; i++) {
                %>
                <div class="room-container">
                    <h3>Room <%= i%></h3>

                    <label for="room_name_<%= i%>">Tên phòng</label>
                    <input type="text" id="room_name_<%= i%>" name="room_name_<%= i%>" required>
                    <label for="room_price_<%= i%>">Giá tiền</label>
                    <input type="text" id="room_price_<%= i%>" name="room_price_<%= i%>" oninput="formatCurrency(this)">


                    <label for="room_img_<%= i%>">URL ảnh Phòng</label>
                    <input type="url" id="room_img_<%= i%>" name="room_img_<%= i%>" pattern="https?://.+" title="Please enter a valid URL starting with http:// or https://">

                    <label for="numPeople_<%= i%>">Số người tối đa</label>
                    <input type="number" id="numPeople_<%= i%>" name="numPeople_<%= i%>" required min="0" title="Please enter a valid number >= 0.">

                    <label for="numRoom_<%= i%>">Số phòng hiện có</label>
                    <input type="number" id="numRoom_<%= i%>" name="numRoom_<%= i%>" required min="0" title="Please enter a valid number >= 0.">
                </div>
                <hr>
                <%
                    }
                %>
                <div class="nav-buttons">
                    <a href="addhotel" class="back">TRỞ LẠI</a>
                    <button type="submit">THÊM</button>
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
