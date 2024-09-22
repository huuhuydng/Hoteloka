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

            input[type="text"],
            input[type="email"],
            input[type="date"],
            input[type="tel"] {
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
            <h1>Update User Information</h1>
            <form action="UpdateUserServlet" method="post">
                <label for="fullname">Full Name</label>
                <input type="text" id="fullname" name="fullname" value="${sessionScope.account.acc_fullname}" required>

                <label for="email">Email (Cannot change email)</label>
                <input type="email" id="email" name="email" value="${sessionScope.account.acc_email}" readonly>

                <label for="gender">Gender</label>
                <input type="text" id="gender" name="gender" value="${sessionScope.account.acc_gender}" required>

                <label for="dob">Date of Birth</label>
                <input type="date" id="dob" name="dob" value="${sessionScope.account.acc_dob}" required pattern="\d{4}/\d{2}/\d{2}">

                <label for="phone">Phone</label>
                <input type="tel" id="phone" name="phone" value="${sessionScope.account.acc_phone}" required 
                       pattern="^(0|\+?84)([0-9]{9,11})$" 
                       title="Số điện thoại phải bắt đầu bằng 0 hoặc 84 và có độ dài từ 10 đến 13 số">

                <div style="text-align: center">
                    <button type="submit">Update</button>
                </div>                 
            </form>
            <div style="text-align: center;
                 margin-top: 25px;">
                <a href="changePassword.jsp">Thay đổi mật khẩu</a>
            </div>
        </div>
    </body>
</html>
