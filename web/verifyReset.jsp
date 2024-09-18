<%-- 
    Document   : verifyCode
    Created on : Sep 18, 2024, 7:17:37 PM
    Author     : Hung Bui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <title>Verify Page</title>
        <style>
            *{
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
                /*    background: blueviolet;*/
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

            .wrapper .remember-forgot {
                display: flex;
                justify-content: space-between;
                font-size: 14.5px;
                margin: -15px 0 15px
            }

            .remember-forgot label input{
                color: #fff;
                margin: 3px;
            }

            .remember-forgot a {
                color: #fff;
                text-decoration: none;
            }

            .remember-forgot a:hover {
                text-decoration: underline;
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
            }

            .wrapper .register-link {
                font-size: 14.5px;
                text-align: center;
                margin: 20px 0 15px;
            }

            .register-link p a {
                color: #fff;
                text-decoration: none;
                font-weight: 600
            }

            .register-link p a:hover {
                text-decoration: underline;
            }
            .wrapper a i {
                color: #fff;
                font-size: 23px;
            }
        </style>
    </head>
    <body>
        <div class="wrapper">
            <a href="home.jsp"><i class='bx bxs-home'></i></a>
            <c:if test="${not empty error}">
                <p style="color: red;">${error}</p>
            </c:if>
            <form action="VerifyResetServlet" method="post">
                <h1>Xác nhận mã</h1>
                <div class="input-box">
                    <input type="text" name="verifyCode" placeholder="Nhập mã xác nhận" required>
                </div>              
                <button type="submit" class="btn">Xác nhận</button>
            </form>
        </div>
    </body>
</html>
