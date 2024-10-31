<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <title>Update Hotel Images</title>
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
                color: #34AF6D; /* Changed to green */
                margin-bottom: 30px;
                font-weight: 600;
            }

            label {
                font-size: 14px;
                font-weight: bold;
                color: #333;
                margin-bottom: 10px;
                display: block;
            }

            input[type="text"],
            input[type="email"],
            input[type="date"],
            input[type="tel"] {
                width: 94%;
                padding: 15px;
                margin-bottom: 20px;
                border: 1px solid #dcdcdc;
                border-radius: 8px;
                font-size: 14px;
                color: #333;
                background-color: #fafafa;
                transition: border 0.3s;
            }

            input[type="text"]:focus,
            input[type="email"]:focus,
            input[type="date"]:focus,
            input[type="tel"]:focus {
                border-color: #34AF6D; /* Changed to green */
                outline: none;
            }

            button {
                width: 100%;
                padding: 15px;
                background-color: #34AF6D; /* Changed to green */
                color: #fff;
                border: none;
                border-radius: 8px;
                font-size: 16px;
                font-weight: bold;
                cursor: pointer;
                transition: background-color 0.3s;
            }

            button:hover {
                background-color: #2e9a5e; /* Darker green on hover */
            }

            a {
                text-align: center;
                color: #34AF6D; /* Changed to green */
                text-decoration: none;
                display: block;
                font-weight: bold;
                margin-top: 20px;
                transition: color 0.3s;
            }

            a:hover {
                color: #2e9a5e; /* Darker green on hover */
                text-decoration: underline;
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
                color: #34AF6D; /* Green on hover */
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
            <div class="back-icon">
                <a href="javascript:history.back()">
                    <i class='bx bx-arrow-back'></i>
                </a>
            </div>
            <h1>CHỈNH SỬA ẢNH BÌA KHÁCH SẠN</h1>
            <form action="updateimages" method="post">
                <label for="hotel_imagesGeneral">URL ảnh bìa</label>
                <input type="text" id="hotel_imagesGeneral" name="hotel_imagesGeneralU" required value="${sessionScope.hotel.hotel_imagesGeneral}" pattern="https?://.+" title="Please enter a valid URL starting with http:// or https://">
                <input type="hidden" name="hotelId" value=${sessionScope.hotel.hotel_id}>
                <button type="submit">Cập nhật</button>                
            </form>
        </div>
    </body>
</html>
