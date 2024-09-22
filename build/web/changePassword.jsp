<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <title>Update User Information</title>
        <style>
            body {
                font-family: "Poppins", sans-serif;
                background-color: rgb(226, 226, 226);
            }

            .container {
                max-width: 600px;
                margin: 50px auto;
                background-color: #fff;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            }

            .container a {
                text-align: center;               
                text-decoration: none;
                font-weight: 600
            }
            
            .container a:hover {
                text-decoration: underline;
            }

            h1 {
                text-align: center;
                color: #34AF6D;
                margin-bottom: 20px;
            }

            label {
                display: block;
                margin-bottom: 5px;
                font-weight: bold;
            }

            input[type="password"] {
                width: 95%;
                padding: 10px;
                margin-bottom: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            button {
                padding: 10px 20px;
                background-color: #34AF6D;
                color: #fff;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

            button:hover {
                background-color: #4AD489;
            }

        </style>
    </head>
    <body>
        <div class="container">
            <a href="userInfo.jsp"><i style="font-size: 20px; color: black" class='bx bx-arrow-back'></i></a>
            <h1>Password Change</h1>
            <form action="ResetPasswordServlet" method="get">
                <label for="oldPassword">Nhập mật khẩu hiện tại</label>
                <input type="password" id="oldPassword" name="oldPassword" required pattern="[A-Za-z0-9]{9,16}" title="Độ dài mật khẩu phải từ 9 đến 16 ký tự, và không có ký tự đặc biệt">

                <label for="newPassword">Nhập mật khẩu mới</label>
                <input type="password" id="newPassword" name="newPassword" required pattern="[A-Za-z0-9]{9,16}" title="Độ dài mật khẩu phải từ 9 đến 16 ký tự, và không có ký tự đặc biệt">

                <label for="confirmPass">Xác nhận mật khẩu mới</label>
                <input type="password" id="oldPassword" name="confirmPass" required pattern="[A-Za-z0-9]{9,16}" title="Độ dài mật khẩu phải từ 9 đến 16 ký tự, và không có ký tự đặc biệt">

                <div style="text-align: center">
                    <button type="submit">Đổi mật khẩu</button>
                </div>                 
            </form>
            <div style="text-align: center;
                 margin-top: 25px;">
                <a href="forgot.jsp">Quên mật khẩu?</a>
            </div>
            <c:if test="${not empty error}">
                <p style="color: red; text-align: center; margin-top: 20px">${error}</p>
            </c:if>
        </div>
    </body>
</html>
