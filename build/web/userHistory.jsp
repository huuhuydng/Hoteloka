<%-- 
    Document   : user
    Created on : Sep 15, 2024, 6:06:51 PM
    Author     : Hung Bui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <title>History Page</title>
        <style>
            *{
                margin: 0;
                padding: 0;
                outline: none;
                border: none;
                text-decoration: none;
                box-sizing: border-box;
                font-family: "Poppins", sans-serif;
            }
            body{
                background: rgb(226, 226, 226);
            }
            nav{
                position: sticky;
                top: 0;
                bottom: 0;
                height: 100vh;
                left: 0;
                width: 90px;
                /* width: 280px; */
                background: #fff;
                overflow: hidden;
                transition: 1s;
            }
            nav:hover{
                width: 280px;
                transition: 1s;
            }
            .logo{
                text-align: center;
                display: flex;
                margin: 10px 0 0 10px;
                padding-bottom: 3rem;
            }
            .logo img{
                width: 45px;
                height: 45px;
                border-radius: 50%;
            }
            .logo span{
                font-weight: bold;
                padding-left: 15px;
                font-size: 18px;
                text-transform: uppercase;
            }
            a{
                position: relative;
                width: 280px;
                font-size: 14px;
                color: rgb(85, 83, 83);
                display: table;
                padding: 10px;
            }
            nav .fas{
                position: relative;
                width: 70px;
                height: 40px;
                top: 20px;
                font-size: 20px;
                text-align: center;
            }
            .nav-item{
                position: relative;
                top: 12px;
                margin-left: 10px;
            }
            a:hover{
                background: #eee;
            }
            a:hover i{
                color: #34AF6D;
                transition: 0.5s;
            }
            .logout{
                position: absolute;
                bottom: 0;
            }
            .container{
                display: flex;
            }
            /* MAin Section */
            .main{
                position: relative;
                padding: 20px;
                width: 100%;
            }

            /*Attendance List serction  */
            .history{
                margin-top: 20px;
                text-transform: capitalize;
            }
            .history-list{
                width: 100%;
                padding: 10px;
                margin-top: 10px;
                background: #fff;
                border-radius: 10px;
                box-shadow: 0 20px 35px rgba(0, 0, 0, 0.1);
            }
            .table{
                border-collapse: collapse;
                margin: 25px 0;
                font-size: 15px;
                min-width: 100%;
                overflow: hidden;
                border-radius: 5px 5px 0 0;
            }
            table thead tr{
                color: #fff;
                background: #34AF6D;
                text-align: left;
                font-weight: bold;
            }
            .table th,
            .table td{
                padding: 12px 15px;
            }
            .table tbody tr{
                border-bottom: 1px solid #ddd;
            }
            .table tbody tr:nth-of-type(odd){
                background: #f3f3f3;
            }
            .table tbody tr.active{
                font-weight: bold;
                color: #4AD489;
            }
            .table tbody tr:last-of-type{
                border-bottom: 2px solid #4AD489;
            }
            .table button{
                padding: 6px 20px;
                border-radius: 10px;
                cursor: pointer;
                background: transparent;
                border: 1px solid #4AD489;
            }
            .table button:hover{
                background: #4AD489;
                color: #fff;
                transition: 0.5rem;
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
                margin-bottom: 20px; /* Thêm khoảng cách giữa các mục */
            }

            nav ul li a {
                display: flex;
                align-items: center;
                padding: 10px 20px; /* Khoảng cách padding cho mục */
                color: #555; /* Màu chữ tối hơn */
                font-size: 16px;
                transition: background 0.3s ease, color 0.3s ease;
            }

            nav ul li a i {
                font-size: 24px;
                margin-right: 20px; /* Khoảng cách giữa icon và text */
                color: #555;
                transition: color 0.3s ease;
            }

            nav ul li a:hover {
                background-color: #f0f0f0; /* Màu nền khi hover */
                color: #34AF6D; /* Màu chữ khi hover */
            }

            nav ul li a:hover i {
                color: #34AF6D; /* Màu icon khi hover */
            }


        </style>
    </head>
    <body>
        <div class="container">
            <nav>
                <ul>
                    <li><a href="#" class="logo">
                            <img src="images/1298241.jpg">
                            <h5 class="nav-item">${sessionScope.account.username}</h5>
                        </a></li>
                    <li><a href="#">
                            <i class='bx bxs-category' ></i>
                            <span style="margin-bottom: 20px" class="nav-item">Booking</span>
                        </a></li>
                    <li><a href="#">
                            <i class='bx bx-message-detail' ></i>
                            <span style="margin-bottom: 20px" class="nav-item">Message</span>
                        </a></li>
                    <li><a href="#">
                            <i class='bx bxs-report'></i>
                            <span style="margin-bottom: 20px" class="nav-item">Report</span>
                        </a></li>
                    <li><a href="#">
                            <i class='bx bx-history' ></i>
                            <span style="margin-bottom: 20px" class="nav-item">History</span>
                        </a></li>
                    <li><a href="#">
                            <i class='bx bxs-cog' ></i>
                            <span style="margin-bottom: 20px" class="nav-item">Setting</span>
                        </a></li>
                    <li><a href="home.jsp">
                            <i class='bx bx-arrow-back' ></i>
                            <span style="margin-bottom: 20px" class="nav-item">Back Home</span>
                        </a></li>
                    <li><a href="LogoutServlet" class="logout">
                            <i class='bx bx-log-out'></i>
                            <span style="margin-bottom: 22px" class="nav-item">Log out</span>
                        </a></li>
                </ul>
            </nav>
            <section class="main">
                <section class="history">
                    <div class="history-list">
                        <h1>History List</h1>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Hotel</th>
                                    <th>Check in</th>
                                    <th>Check out</th>
                                    <th>Money(VND)</th>
                                    <th style="margin-left: 15px">Details</th>
                                </tr>
                            </thead>
                            <tbody>                        
                                <tr>
                                    <td>01</td>
                                    <td>Hung Bui</td>
                                    <td>Muong Thanh</td>
                                    <td>09-17-2024</td>
                                    <td>09-19-2024</td>
                                    <td>6.350.000</td>
                                    <td><button>View</button></td>
                                </tr>                               
                            </tbody>                          
                        </table>
                    </div>
                </section>
            </section>
        </div>
    </body>
</html>
