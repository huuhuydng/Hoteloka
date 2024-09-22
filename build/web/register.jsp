<%-- 
    Document   : register
    Created on : Sep 14, 2024, 12:03:40 PM
    Author     : Hung Bui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">       
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <title>Register Page</title>
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
                margin: 15px 0
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
                padding: 0 20px 0 45px; /* Điều chỉnh khoảng cách padding */
            }

            .input-box input::placeholder {
                color: #fff;
            }

            .input-box i {
                position: absolute;
                left: 15px;
                top: 50%;
                transform: translateY(-50%);
                font-size: 20px;
                color: rgba(255, 255, 255, .7);
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
            h4{
                align-items: center;
                text-align: center;
                margin-top: 10px;
            }
            .input-box.gender-box {
                display: flex;
                align-items: center;
                justify-content: space-between;
                margin-bottom: 20px;
                padding: 0 10px;
            }

            .gender-box label {
                color: #fff;
                font-size: 16px;
                margin-right: 10px;
            }

            .gender-box input[type="radio"] {

                margin-right: 10px;
                width: 20px;
                height: 20px;
                cursor: pointer;
            }


        </style>
    </head>
    <body>        
        <div class="wrapper">
            <a href="home.jsp"><i class='bx bxs-home'></i></a>

            <form action="RegisterServlet" method="get">
                <h1>Đăng ký</h1>
                <c:set var="cookie" value="${pageContext.request.cookies}"/>
                <h4 style="color: red">${requestScope.error}</h4>

                <div class="input-box">
                    <input type="text" name="acc_fullname" placeholder="Họ và tên" required>
                    <i class='bx bx-user'></i>
                </div>

                <div class="input-box">
                    <input type="email" name="acc_email" placeholder="Email" required pattern="[a-zA-Z0-9._%+-]+@gmail.com" title="Chúng tôi chỉ chấp nhận email có đuôi @gmail.com">
                    <i class='bx bxs-envelope'></i>
                </div>

                <div class="input-box">
                    <input type="password" name="acc_password" placeholder="Mật khẩu" required pattern="[A-Za-z0-9]{9,16}" title="Độ dài mật khẩu phải từ 9 đến 16 ký tự, và không có ký tự đặc biệt">
                    <i class='bx bxs-lock-alt'></i>
                </div>

                <div class="input-box">
                    <input type="password" name="confirmPass" placeholder="Xác nhận mật khẩu" required>
                    <i class='bx bxs-lock'></i>
                </div>

                <div class="input-box">
                    <input type="date" name="acc_dob" placeholder="Năm sinh" required pattern="\d{4}/\d{2}/\d{2}">
                    <i class='bx bxs-calendar'></i>
                </div>

                <div class="input-box">
                    <input type="tel" name="acc_phone" placeholder="Số điện thoại" required 
                           pattern="^(0|\+?84)([0-9]{9,11})$" 
                           title="Số điện thoại phải bắt đầu bằng 0 hoặc 84 và có độ dài từ 10 đến 13 số">
                    <i class='bx bx-phone'></i>
                </div>

                <div class="input-box gender-box">
                    <label for="male">Nam</label>
                    <input type="radio" id="male" name="acc_gender" value="Male" required>

                    <label for="female">Nữ</label>
                    <input type="radio" id="female" name="acc_gender" value="Female" required> 
                </div>

                <div class="remember-forgot">
                    <label><input style="margin-top: 20px" type="checkbox" required> I agree to the terms and conditions</label>
                </div>

                <button class="btn">Đăng ký</button>                
            </form>


            <div class="register-link">
                <p>Đã có tài khoản? 
                    <a href="login.jsp">Đăng nhập</a>
                </p>
            </div>
        </div>
    </body> 
</html>