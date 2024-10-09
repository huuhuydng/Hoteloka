<%-- 
    Document   : login
    Created on : Sep 15, 2024, 9:26:24 AM
    Author     : Hung Bui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
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
            h3{
                align-items: center;
                text-align: center;
                margin-top: 10px;
            }
            .google-btn {
                width: 50%;
                height: 45px;
                background: #fff;
                border: none;
                outline: none;
                border-radius: 4px;
                box-shadow: 0 0 10px rgba(0, 0, 0, .1);
                cursor: pointer;
                color: black;
                font-weight: 600;
                display: flex;
                align-items: center;
                justify-content: center;
                margin-top: 15px;
                text-decoration: none;
                font-weight: 500;
                font-size: 14px;
            }

            .google-btn img {
                width: 18px;
                height: 18px;
                margin-right: 8px;
            }

            .or-divider {
                text-align: center;
                margin: 20px 0;
                color: #fff;
            }
            .google-btn-container {
                display: flex;
                justify-content: center;
                width: 100%;
            }

        </style>
    </head>
    <body>

        <div class="wrapper">
            <a href="home"><i class='bx bxs-home'></i></a>
                <c:if test="${not empty message}">
                <p style="color: red;">${message}</p>
            </c:if>
            <form action="LoginServlet" method="get">               
                <h1>Đăng nhập</h1>
                <c:set var="cookie" value="${pageContext.request.cookies}"/>
                <h3 style="color: red">${requestScope.error}</h3>
                <div class="input-box">
                    <input type="email" name="acc_email" placeholder="Email" required>
                    <i class='bx bxs-envelope' ></i>
                </div>

                <div class="input-box">
                    <input type="password" name="acc_password" placeholder="Mật khẩu" required>
                    <i class='bx bxs-lock-alt'></i>
                </div>


                <div class="remember-forgot">
                    <label><input type="checkbox"
                                  ${(cookie.crem != null?'checked':'')} name="rem" value="ON"> Lưu mật khẩu</label>
                    <a href="forgot.jsp"> Quên mật khẩu?</a>
                </div>


                <button type="submit" class="btn">Login</button>

                <div class="or-divider">
                    <span>Hoặc</span>
                </div>

                <div class="google-btn-container">
                    <a href="https://accounts.google.com/o/oauth2/auth?scope=email 
                       profile openid
                       &redirect_uri=http://localhost:8080/DEANCUOIKI/login&response_type=code&client_id=904072838041-a1lbt512am8q41do5a73m7gkhjv40j2k.apps.googleusercontent.com
&approval_prompt=force" class="google-btn">
                        <img src="images/googlelogo.png" alt="Google logo">
                        Đăng nhập bằng Google
                    </a>
                </div>


                <div class="register-link">
                    <p>Bạn chưa có tài khoản? 
                        <a href="register.jsp">Đăng ký</a>
                    </p>
                </div>
            </form>
        </div>
        <script>
            function signInWithGoogle() {
                // Implement Google Sign-In logic here
                console.log("Google Sign-In clicked");
            }
        </script>
    </body>
</html>