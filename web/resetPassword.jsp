<%-- 
    Document   : resetPassword
    Created on : Sep 18, 2024, 8:45:46 PM
    Author     : Hung Bui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <title>Reset Password</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: "Poppins", sans-serif;
            }

            body {
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
                background: url('images/lg-ht.jfif') no-repeat;
                background-size: cover;
                background-position: center;
            }

            .wrapper {
                width: 420px;
                background: transparent;
                backdrop-filter: blur(20px);
                border: 2px solid rgba(255, 255, 255, .2);
                box-shadow: 0 0 10px rgba(0, 0, 0, .2);
                color: #fff;
                padding: 20px;
                border-radius: 8px;
                border-color: white;
            }

            .wrapper h1 {
                font-size: 36px;
                text-align: center;
                margin-bottom: 20px;
            }

            .wrapper .input-box {
                position: relative;
                width: 100%;
                height: 50px;
                margin: 30px 0;
            }

            .input-box input {
                width: 100%;
                height: 100%;
                background: transparent;
                border: none;
                outline: none;
                border: 2px solid rgba(255, 255, 255, .2);
                border-radius: 40px;
                font-size: 16px;
                color: #fff;
                padding: 20px 45px 20px 20px;
            }

            .input-box input::placeholder {
                color: #fff;
            }

            .input-box i {
                position: absolute;
                right: 20px;
                top: 50%;
                transform: translateY(-50%);
                font-size: 20px;
            }

            .wrapper .btn {
                width: 100%;
                height: 45px;
                background: #fff;
                border: none;
                outline: none;
                border-radius: 4px;
                box-shadow: 0 0 10px rgba(0, 0, 0, .1);
                cursor: pointer;
                color: #333;
                font-weight: 600;
                margin-top: 20px;
            }


        </style>
    </head>
    <body>
        <div class="wrapper">
            <form action="ResetPasswordServlet" method="post">
                <h1>Đặt lại mật khẩu</h1>
                <div class="input-box">
                    <input type="password" name="newacc_password" placeholder="Mật khẩu mới" required pattern="[A-Za-z0-9]{9,16}" title="Độ dài mật khẩu phải từ 9 đến 16 ký tự, và không có ký tự đặc biệt">
                </div>
                <div class="input-box">
                    <input type="password" name="confirmPassword" placeholder="Xác nhận mật khẩu" required>
                </div>              

                <button style="margin-bottom: 20px" type="submit" class="btn">Đổi mật khẩu</button>
            </form>
        </div>
    </body>
</html>
