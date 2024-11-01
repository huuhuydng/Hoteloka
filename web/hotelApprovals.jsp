<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Duyệt Khách sạn</title>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <style>
            :root {
                --primary-color: #2ecc71;
                --secondary-color: #27ae60;
                --accent-color: #e74c3c;
                --background-color: #f5f6fa;
                --card-background: #ffffff;
                --text-color: #2c3e50;
                --border-color: #bdc3c7;
                --hover-color: #e8f5e9;
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
                    margin: 10px 0;
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

                a:hover {
                    background: #e0ffe0;
                }

                a:hover i {
                    color: #34AF6D;
                    transition: 0.5s;
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


                .history-list {
                    width: 100%;
                    padding: 20px;
                    margin-top: 10px;
                    background: #fff;
                    border-radius: 15px;
                    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.05);
                    transition: transform 0.3s ease;
                }

                .history-list:hover {
                    transform: scale(1.02);
                }

                .history-list h1 {
                    font-size: 24px;
                    font-weight: bold;
                    text-align: center;
                    margin-bottom: 20px;
                    color: #388e3c;
                }

                .table {
                    border-collapse: collapse;
                    width: 100%;
                    margin: 20px 0;
                    font-size: 16px;
                    background: #f8f8f8;
                    border-radius: 12px;
                    overflow: hidden;
                    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.05);
                }

                .table thead tr {
                    background-color: #4CAF50;
                    color: white;
                    text-align: left;
                    font-weight: bold;
                }

                .table th, .table td {
                    padding: 15px;
                    text-align: center;
                }

                .table tbody tr {
                    background-color: #ffffff;
                    border-bottom: 1px solid #ddd;
                    transition: background-color 0.3s ease;
                }

                .table tbody tr:hover {
                    background-color: #f1f1f1;
                }

                .table tbody tr:nth-of-type(even) {
                    background-color: #f9f9f9;
                }
                .table td {
                    vertical-align: middle;
                }

                .view-button {
                    display: inline-block;
                    background-color: #4CAF50;
                    color: white;
                    padding: 5px 10px;
                    border-radius: 30px;
                    cursor: pointer;
                    font-size: 14px;
                    font-weight: bold;
                    text-transform: uppercase;
                    text-decoration: none;
                    transition: background-color 0.3s ease, transform 0.3s ease;
                    text-align: center;
                    width: auto;
                }

                .view-button:hover {
                    background-color: #45a049;
                    transform: scale(1.05);
                    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
                }

                .badge {
                    padding: 5px 10px;
                    border-radius: 12px;
                    font-size: 14px;
                }

                .badge.bg-load {
                    background-color: orange;
                    color: white;
                }

                .badge.bg-success {
                    background-color: #4CAF50;
                    color: white;
                }

                .badge.bg-warning {
                    background-color: #FFC107;
                    color: white;
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
                    background-color: #e0ffe0;
                    color: #28a745;
                    border-radius: 30px;
                }

                nav ul li a:hover i {
                    color: #28a745;
                }

                .active {
                    background-color: #e0ffe0;
                    color: #28a745;
                    border-radius: 30px;
                    pointer-events: none;
                }

                .active i {
                    color: #28a745;
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
                    background-color: #e0ffe0;
                }

                .user-info h2 {
                    grid-column: span 2;
                    font-size: 30px;
                    font-weight: 600;
                    color: #28a745;
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

                .main {
                    position: relative;
                    padding: 2rem 3rem;
                    width: 100%;
                    background-color: #f8f9fa;
                    min-height: 100vh;
                }

                .history-list {
                    width: 100%;
                    padding: 2.5rem;
                    background: white;
                    border-radius: 20px;
                    box-shadow: 0 4px 20px rgba(0,0,0,0.08);
                    transition: all 0.3s ease;
                }

                .history-list:hover {
                    transform: translateY(-5px);
                }

                .history-list h1 {
                    font-size: 2rem;
                    font-weight: 600;
                    text-align: center;
                    margin-bottom: 2rem;
                    color: #2c3e50;
                    position: relative;
                    padding-bottom: 15px;
                }

                .history-list h1:after {
                    content: '';
                    position: absolute;
                    bottom: 0;
                    left: 50%;
                    transform: translateX(-50%);
                    width: 100px;
                    height: 3px;
                    background: #28a745;
                    border-radius: 2px;
                }

                /* Table Styles */
                .table-container {
                    margin-top: 2rem;
                    border-radius: 15px;
                    box-shadow: 0 4px 15px rgba(0,0,0,0.05);
                    overflow: hidden;
                }

                .table {
                    margin: 0;
                    border-radius: 15px;
                    overflow: hidden;
                    border-collapse: collapse;
                    width: 100%;
                    margin: 20px 0;
                    font-size: 0.9rem;
                    background: #f8f8f8;
                }

                .table thead tr {
                    background: linear-gradient(45deg, #28a745, #34d058);
                }

                .table th {
                    padding: 1.2rem;
                    font-size: 0.9rem;
                    font-weight: 600;
                    text-transform: uppercase;
                    letter-spacing: 0.5px;
                    color: white;
                    text-align: center;
                }

                .table td {
                    padding: 1rem;
                    vertical-align: middle;
                    border-bottom: 1px solid #e9ecef;
                    text-align: center;
                    color: #2c3e50;
                }

                .table tbody tr {
                    background-color: #ffffff;
                    transition: all 0.3s ease;
                }

                .table tbody tr:hover {
                    background-color: #f8f9fa;
                    transform: scale(1.01);
                }

                .table tbody tr:nth-child(even) {
                    background-color: #f9f9f9;
                }

                /* Image in table */
                .table td img {
                    width: 120px;
                    height: 80px;
                    object-fit: cover;
                    border-radius: 8px;
                    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
                    transition: transform 0.3s ease;
                }

                .table td img:hover {
                    transform: scale(1.1);
                }

                /* Badge Styles */
                .badge {
                    padding: 0.5rem 1.2rem;
                    font-size: 0.85rem;
                    font-weight: 500;
                    border-radius: 30px;
                    letter-spacing: 0.5px;
                }

                .bg-load {
                    background: linear-gradient(45deg, #ffc107, #ffdb4d);
                    color: #000;
                    box-shadow: 0 2px 5px rgba(255, 193, 7, 0.3);
                }

                .bg-success {
                    background: linear-gradient(45deg, #28a745, #34d058);
                    color: white;
                    box-shadow: 0 2px 5px rgba(40, 167, 69, 0.3);
                }

                .bg-warning {
                    background: linear-gradient(45deg, #dc3545, #ff4d4d);
                    color: white;
                    box-shadow: 0 2px 5px rgba(220, 53, 69, 0.3);
                }

                /* View Button */
                .view-button {
                    display: inline-block;
                    padding: 0.6rem 1.2rem;
                    background: linear-gradient(45deg, #28a745, #34d058);
                    color: white;
                    border-radius: 30px;
                    font-size: 0.85rem;
                    font-weight: 500;
                    text-transform: uppercase;
                    letter-spacing: 0.5px;
                    transition: all 0.3s ease;
                    text-decoration: none;
                    box-shadow: 0 2px 5px rgba(40, 167, 69, 0.2);
                }

                .view-button:hover {
                    background: linear-gradient(45deg, #218838, #28a745);
                    transform: translateY(-2px);
                    box-shadow: 0 4px 15px rgba(40, 167, 69, 0.3);
                    color: white;
                    text-decoration: none;
                }

                /* Success/Error Messages */
                .message {
                    text-align: center;
                    padding: 1rem;
                    margin-bottom: 1.5rem;
                    border-radius: 8px;
                    font-weight: 500;
                }

                .message.success {
                    background-color: #d4edda;
                    color: #28a745;
                    border-left: 4px solid #28a745;
                }

                .message.error {
                    background-color: #f8d7da;
                    color: #dc3545;
                    border-left: 4px solid #dc3545;
                }

                /* Responsive Design */
                @media (max-width: 1200px) {
                    .main {
                        padding: 1.5rem;
                    }

                    .history-list {
                        padding: 1.5rem;
                    }

                    .table th, .table td {
                        padding: 0.8rem;
                    }
                }

                @media (max-width: 768px) {
                    .table {
                        display: block;
                        overflow-x: auto;
                        white-space: nowrap;
                    }

                    .history-list h1 {
                        font-size: 1.5rem;
                    }
                }

            </style>
        </head>
        <body>
            <c:if test="${sessionScope.account == null}">
                <script>
                    window.location.href = "login.jsp";
                </script>
            </c:if>
            <c:if test="${sessionScope.account.acc_type eq 1}">
                <script>
                    window.location.href = "partnerInfo.jsp";
                </script>
            </c:if>
            <c:if test="${sessionScope.account.acc_type eq 2}">
                <script>
                    window.location.href = "userInfo.jsp";
                </script>
            </c:if>
            <div class="container">
                <nav>
                    <ul>
                        <li><a href="home" class="logo">
                                <img src="images/logo.png">
                                <h5 class="nav-item">${sessionScope.account.acc_fullname}</h5>
                            </a></li>                      
                        <li><a href="adminInfo.jsp">
                                <i class='bx bxs-user-detail'></i>
                                <span style="margin-bottom: 20px" class="nav-item">Thông tin tài khoản</span>
                                </a></li>
                            <li><a href="hotel-approve" class="<%= request.getRequestURI().contains("hotelApprovals.jsp") ? "active" : ""%>">
                                    <i class='bx bx-buildings'></i>
                                    <span style="margin-bottom: 20px" class="nav-item">Duyệt Đối tác</span>
                                </a></li>
                            <li><a href="AllAccountServlet">
                                    <i class='bx bxs-user-account'></i>
                                    <span style="margin-bottom: 20px" class="nav-item">Quản lý tài khoản</span>
                                </a></li>
                            <li><a href="AdminChart">
                                    <i class='bx bxs-report'></i>
                                    <span style="margin-bottom: 20px" class="nav-item">Báo cáo doanh thu</span>
                                </a></li>
                            <li><a href="home">
                                    <i class='bx bx-arrow-back'></i>
                                    <span style="margin-bottom: 20px" class="nav-item">Trang chủ</span>
                                </a></li>
                            <li><a href="LogoutServlet" class="logout">
                                    <i class='bx bx-log-out'></i>
                                    <span style="margin-bottom: 22px" class="nav-item">Đăng xuất</span>
                                </a></li>
                        </ul>
                    </nav>   

                    <section class="main">
                        <section class="history">
                            <div class="history-list">
                                <h1>QUẢN LÍ DUYỆT KHÁCH SẠN</h1>
                                <c:if test="${not empty message}">
                                    <p style="color: #28a745;
                                    text-align: center">${message}</p>
                                </c:if>
                                <c:if test="${not empty error}">
                                    <p style="color: red;
                                    text-align: center">${error}</p>
                                </c:if>
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th style="text-align: center">ID Hotel</th>
                                            <th style="text-align: center">Ảnh Hotel</th>
                                            <th style="text-align: center">ID Partner</th>
                                            <th style="text-align: center">Tên Hotel</th>
                                            <th style="text-align: center">Thành Phố</th>
                                            <th style="text-align: center">Trạng thái</th>
                                            <th style="text-align: center">Chi tiết</th>
                                        </tr>
                                    </thead>
                                    <tbody>                                
                                        <c:forEach items="${allHotel}" var="h">
                                            <tr>
                                                <td style="text-align: center">${h.hotel_id}</td>
                                                <td style="text-align: center">
                                                    <img src="${h.hotel_imagesGeneral}" onerror="this.style.display='none'"/>
                                                </td>
                                                <td style="text-align: center">${h.acc_id}</td>
                                                <td style="text-align: center">${h.hotel_name}</td>
                                                <td style="text-align: center">${h.hotel_city}</td>
                                                <td style="text-align: center">
                                                    <c:if test="${h.hotel_status eq 2}">
                                                        <span class="badge bg-load">Đăng ký Hotel</span>
                                                    </c:if>
                                                    <c:if test="${h.hotel_status eq 3}">
                                                        <span class="badge bg-load">Xoá Hotel</span>
                                                    </c:if>
                                                </td>

                                                <td style="text-align: center"><a class="view-button" href="hotel-approve-detail?id=${h.acc_id}">CHI TIẾT</a></td>
                                            </tr>   
                                        </c:forEach>
                                    </tbody>                          
                                </table>
                            </div>
                        </section>
                    </section>
                </div>
            </body>
        </html>