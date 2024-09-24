<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <title>User Settings</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                outline: none;
                border: none;
                text-decoration: none;
                box-sizing: border-box;
                font-family: "Poppins", sans-serif;
            }

            body {
                background: rgb(226, 226, 226);
            }

            nav {
                position: sticky;
                top: 0;
                bottom: 0;
                height: 100vh;
                left: 0;
                width: 90px;
                background: #fff;
                overflow: hidden;
                transition: 1s;
            }

            nav:hover {
                width: 280px;
                transition: 1s;
            }

            .logo {
                text-align: center;
                display: flex;
                margin: 10px 0 0 10px;
                padding-bottom: 3rem;
            }

            .logo img {
                width: 55px;
                height: 55px;
                border-radius: 50%;
            }

            .logo span {
                font-weight: bold;
                padding-left: 15px;
                font-size: 18px;
                text-transform: uppercase;
            }

            a {
                position: relative;
                width: 280px;
                font-size: 14px;
                color: rgb(85, 83, 83);
                display: table;
                padding: 10px;
            }

            nav .fas {
                position: relative;
                width: 70px;
                height: 40px;
                top: 20px;
                font-size: 20px;
                text-align: center;
            }

            .nav-item {
                position: relative;
                top: 12px;
                margin-left: 10px;
            }

            .container ul li a i {
                font-size: 35px;
                position: absolute;
                margin-left: 17px;
            }

            .container ul li a span {
                text-align: center;
                margin-left: 29%;
            }

            nav ul {
                list-style-type: none;
                padding: 0;
                margin: 0;
            }

            nav ul li {
                margin-bottom: 20px;
            }

            nav ul li a {
                display: flex;
                align-items: center;
                padding: 10px 20px;
                color: #555;
                font-size: 16px;
                transition: background 0.3s ease, color 0.3s ease;
            }

            nav ul li a i {
                font-size: 24px;
                margin-right: 20px;
                color: #555;
                transition: color 0.3s ease;
            }

            nav ul li a:hover {
                background-color: #e0ffe0; /* Lighter green background on hover */
                color: #28a745; /* Green text color on hover */
                border-radius: 30px;
            }

            nav ul li a:hover i {
                color: #28a745; /* Green icon color on hover */
            }

            .logout {
                position: absolute;
                bottom: 0;
            }

            .container {
                display: flex;
            }

            .main {
                position: relative;
                padding: 20px;
                width: 100%;
            }

            .user {
                margin-top: 20px;
            }

            .user-list {
                width: 100%;
                padding: 20px;
                margin-top: 10px;
                background: #fff;
                border-radius: 15px;
                box-shadow: 0 10px 20px rgba(0, 0, 0, 0.05);
            }

            .user-list h1 {
                font-size: 24px;
                font-weight: bold;
                color: black;
                text-align: center;
                margin-bottom: 20px;
            }

            .user-info {
                display: grid;
                grid-template-columns: repeat(2, 1fr);
                grid-gap: 20px;
                background: #fff;
                border-radius: 15px;
                font-size: 20px;
                font-weight: 400;
                box-shadow: 0 10px 20px rgba(0, 0, 0, 0.05);
                padding: 20px;
            }

            .info-item:hover {
                transform: scale(1.02);
                transition: transform 0.3s ease;
                background-color: #e0ffe0; /* Lighter green background on hover */
            }

            .user-info h2 {
                grid-column: span 2;
                font-size: 30px;
                font-weight: 600;
                color: #28a745; /* Green heading */
                margin-bottom: 15px;
                text-align: center;
            }

            .info-item {
                background: #f9f9f9;
                border-radius: 10px;
                padding: 15px;
                text-align: center;
            }

            .info-item label {
                font-weight: bold;
                display: block;
                margin-bottom: 10px;
                color: #333;
            }

            .info-item p {
                margin: 0;
                color: #777;
                font-size: 14px;
            }

            .action-buttons {
                grid-column: span 2;
                display: flex;
                justify-content: space-between;
                margin-top: 20px;
            }

            .action-buttons button {
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                background: #28a745; /* Green buttons */
                color: #fff;
                font-size: 16px;
                transition: background 0.3s;
            }

            .action-buttons button:hover {
                background: #218838; /* Darker green on hover */
            }

            .delete {
                background-color: orangered;
            }

            .delete:hover {
                background: darkred;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <nav>
                <ul>
                    <li><a href="#" class="logo">
                            <img src="images/logo.png">
                            <h5 class="nav-item">${sessionScope.account.acc_fullname}</h5>
                        </a></li>
                    <li><a href="userInfo.jsp">
                            <i class='bx bxs-user-detail'></i>
                            <span style="margin-bottom: 20px" class="nav-item">User Setting</span>
                        </a></li>
                    <li><a href="#">
                            <i class='bx bxs-category'></i>
                            <span style="margin-bottom: 20px" class="nav-item">Booking</span>
                        </a></li>
                    <li><a href="#">
                            <i class='bx bx-message-detail'></i>
                            <span style="margin-bottom: 20px" class="nav-item">Message</span>
                        </a></li>
                    <li><a href="#">
                            <i class='bx bxs-report'></i>
                            <span style="margin-bottom: 20px" class="nav-item">Report</span>
                        </a></li>
                    <li><a href="userHistory.jsp">
                            <i class='bx bx-history'></i>
                            <span style="margin-bottom: 20px" class="nav-item">History</span>
                        </a></li>
                    <li><a href="home">
                            <i class='bx bx-arrow-back'></i>
                            <span style="margin-bottom: 20px" class="nav-item">Back Home</span>
                        </a></li>
                    <li><a href="LogoutServlet" class="logout">
                            <i class='bx bx-log-out'></i>
                            <span style="margin-bottom: 22px" class="nav-item">Log out</span>
                        </a></li>
                </ul>
            </nav>
            <section class="main">
                <section class="user">
                    <div class="user-list">
                        <h1>User Settings</h1>
                        <div class="user-info">
                            <h2>User Information</h2>
                            <div class="info-item">
                                <label>Full Name</label>
                                <p>${sessionScope.account.acc_fullname}</p>
                            </div>
                            <div class="info-item">
                                <label>Gender</label>
                                <p>${sessionScope.account.acc_gender}</p>
                            </div>
                            <div class="info-item">
                                <label>Email</label>
                                <p>${sessionScope.account.acc_email}</p>
                            </div>
                            <div class="info-item">
                                <label>DOB</label>
                                <p>${sessionScope.account.acc_dob}</p>
                            </div>
                            <div class="info-item">
                                <label>Phone</label>
                                <p>${sessionScope.account.acc_phone}</p>
                            </div>
                            <div class="info-item">
                                <label>Password</label>
                                <p>*********</p>
                            </div>
                        </div>
                        <div class="action-buttons">
                            <form action="updateUser.jsp">
                                <button type="submit" class="update">Update</button>
                            </form>
                            <form action="confirmDelete.jsp">
                                <button type="submit" class="delete">Delete Account</button>
                            </form>
                        </div>
                    </div>
                </section>
            </section>
        </div>
    </body>
</html>
