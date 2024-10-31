<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Confirm Delete Hotel</title>
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
                font-weight: 600;
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
            <h1>Bạn có chắc chắn về việc xoá khách sạn này?</h1>
            <p class="highlight-email">${sessionScope.hotel.hotel_name}?</p>
            <h4 style="text-align: center;
                color: red">Lưu ý: Khi đã xoá sẽ không thể khôi phục!</h4>
            <div class="actions">
                <form action="DeleteHotelServlet" method="post">
                    <button type="submit">Tôi đồng ý</button>
                </form>
                <form action="partnerInfo.jsp" method="get">
                    <button type="submit" class="cancel-btn">Không, hãy quay lại</button>
                </form>
            </div>
        </div>
    </body>
</html>
