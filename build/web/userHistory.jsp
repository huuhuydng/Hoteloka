<%-- 
    Document   : user
    Created on : Sep 15, 2024, 6:06:51 PM
    Author     : Hung Bui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <title>History Page</title>
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
                color: #333;
                text-align: center;
                margin-bottom: 20px;
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
                background-color: #B22222;
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

            .action-buttons {
                display: flex;
                justify-content: space-around;
                margin-top: 20px;
                gap: 20px;
                width: 100%;
            }

            .action-buttons button {
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
                transition: background 0.3s;
            }

            .action-buttons .yes,
            .action-buttons .update {
                background: #4caf50;
                color: #fff;
            }

            .action-buttons .yes:hover,
            .action-buttons .update:hover {
                background: #388e3c;
            }

            .delete {
                background-color: #ff6666;
            }

            .delete:hover {
                background: #ff4d4d;
            }

            .action-buttons .no {
                background-color: #ff6666;
                color: #fff;
            }

            .action-buttons .no:hover {
                background-color: #ff4d4d;
            }

            .overlay {
                display: none;
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(0, 0, 0, 0.7);
                z-index: 1000;
                justify-content: center;
                align-items: center;
            }

            .popup {
                max-width: 500px;
                background-color: #ffffff;
                padding: 40px;
                border-radius: 12px;
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
                border: 1px solid #c8e6c9;
                text-align: center;
                transition: transform 0.3s ease;
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            .popup:hover {
                transform: scale(1.02);
            }

            h2 {
                font-size: 22px;
                color: #388e3c;
                margin-bottom: 20px;
                font-weight: 600;
            }

            .highlight-email {
                font-weight: bold;
                font-size: 20px;
            }

            .refund-overlay {
                display: none;
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(0, 0, 0, 0.7);
                z-index: 1000;
                justify-content: center;
                align-items: center;
            }

            .popup {
                background: white;
                padding: 30px;
                border-radius: 15px;
                box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
                max-width: 500px;
                width: 90%;
                text-align: center;
            }

            .action-buttons {
                display: flex;
                justify-content: center;
                gap: 20px;
                margin-top: 20px;
            }

            .action-buttons button {
                padding: 12px 25px;
                border-radius: 8px;
                cursor: pointer;
                font-size: 16px;
                display: flex;
                align-items: center;
                gap: 8px;
                transition: all 0.3s ease;
            }

            .yes {
                background-color: #4CAF50;
                color: white;
                border: none;
            }

            .no {
                background-color: #ff4d4d;
                color: white;
                border: none;
            }

            .yes:hover, .no:hover {
                transform: translateY(-2px);
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            }

            .yes:active, .no:active {
                transform: translateY(0);
                box-shadow: none;
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
            <nav>
                <ul>
                    <li><a href="#" class="logo">
                            <img src="images/logo.png">
                            <h5 class="nav-item">${sessionScope.account.acc_fullname}</h5>
                        </a></li>
                    <li><a href="userInfo.jsp">
                            <i class='bx bxs-user-detail'></i>
                            <span style="margin-bottom: 20px" class="nav-item">Thông tin tài khoản</span>
                        </a></li>
                    <li><a href="user-history" class="<%= request.getRequestURI().contains("userHistory.jsp") ? "active" : ""%>">
                            <i class='bx bxs-category' ></i>
                            <span style="margin-bottom: 20px" class="nav-item">Đơn phòng</span>
                        </a></li>
                    <li><a href="#">
                            <i class='bx bx-message-detail' ></i>
                            <span style="margin-bottom: 20px" class="nav-item">Tin nhắn</span>
                        </a></li>
                    <li><a href="javascript:void(0);" onclick="showOverlay()">
                            <i class='bx bxs-group'></i>
                            <span style="margin-bottom: 20px" class="nav-item">Đăng kí khách sạn</span>
                        </a></li>
                    <li><a href="home">
                            <i class='bx bx-home' ></i>
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
                        <h1>ĐƠN ĐẶT PHÒNG</h1>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Tên người đặt</th>
                                    <th>Khách sạn</th>
                                    <th>Ngày đến</th>
                                    <th>Ngày đi</th>
                                    <th>Tổng tiền(VND)</th>
                                    <th>Trạng thái</th>
                                    <th style="margin-left: 15px">Chi tiết</th>
                                </tr>
                            </thead>
                            <tbody>   
                                <c:forEach items="${bookings}" var="b">
                                    <tr>
                                        <td>${b.booking_id}</td>
                                        <td>${sessionScope.account.acc_fullname}</td>
                                        <td>${b.hotel_name}</td>
                                        <td>${b.booking_checkIn}</td>
                                        <td>${b.booking_checkOut}</td>
                                        <td>
                                            <fmt:formatNumber value="${b.booking_total}" type="number" pattern="#,##0"/> VND
                                        </td>
                                        <td>
                                            <c:if test="${b.bookingStatus.equals('pending')}">
                                                <span class="badge bg-load">Đang xử lí</span>
                                            </c:if>
                                            <c:if test="${b.bookingStatus.equals('denied')}">
                                                <span class="badge bg-warning">Từ chối</span>
                                            </c:if>
                                            <c:if test="${b.bookingStatus.equals('accept')}">
                                                <span class="badge bg-success">Chấp nhận</span>
                                            </c:if>
                                            <c:if test="${b.bookingStatus.equals('finish')}">
                                                <span class="badge bg-success">Thành công</span>
                                            </c:if>
                                            <c:if test="${b.bookingStatus.equals('refund')}">
                                                <span class="badge bg-load">Hoàn tiền</span>
                                            </c:if>
                                            <c:if test="${b.bookingStatus.equals('cancel')}">
                                                <span class="badge bg-warning">Huỷ bỏ</span>
                                            </c:if>

                                        </td>
                                        <td><a class="view-button" href="user-history-detail?id=${b.booking_id}">XEM</a></td>

                                    </tr>   
                                </c:forEach>
                            </tbody>                          
                        </table>
                    </div>
                </section>
            </section>
        </div>
        <!--Overlay for Become Partner Confirmation-->
        <div class="overlay" id="overlay">
            <div class="popup">
                <h2>BẠN CÓ MUỐN TRỜ THÀNH ĐỐI TÁC CỦA CHÚNG TÔI KHÔNG?</h2>
                <p class="highlight-email">${sessionScope.account.acc_fullname}</p>
                <div class="action-buttons">
                    <form action="hotelInputInfo.jsp">
                        <button type="submit" class="yes" onclick="showOverlay()">CÓ</button>
                    </form>
                    <form action="user-history" method="get">
                        <button type="submit" class="no" onclick="showOverlay()">KHÔNG</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="overlay refund-overlay" id="refundOverlay">
            <div class="popup">
                <h2>THÔNG BÁO</h2>
                <p style="margin-bottom: 20px; line-height: 1.5;">
                    Nếu bạn đã chuyển khoản cho đơn phòng rồi thì vui lòng tiếp tục để điền thông tin hoàn tiền, 
                    còn nếu chưa thì bạn có thể bỏ qua!
                </p>
                <div class="action-buttons">
                    <form action="user-history" method="get">
                        <button type="submit" class="no">
                            <i class='bx bx-x'></i> Bỏ qua
                        </button>
                    </form>
                    <form action="refund" method="get">
                        <input type="hidden" name="booking_id" value="${param.booking_id}">
                        <button type="submit" class="yes">
                            <i class='bx bx-check'></i> Tiếp tục
                        </button>
                    </form>
                </div>
            </div>
        </div>

        <script>
            function showOverlay() {
                document.getElementById('overlay').style.display = 'flex'; // Hiện overlay
            }

            function hideOverlay() {
                document.getElementById('overlay').style.display = 'none'; // Ẩn overlay
            }

            // Bắt sự kiện click trên overlay để đóng popup
            document.getElementById('overlay').addEventListener('click', function (event) {
                if (event.target === this) {
                    hideOverlay();
                    window.history.back();
                }
            });

            function confirmPartnership() {
                hideOverlay(); // Ẩn overlay
                alert('Thank you for becoming our partner!');
            }

            window.onload = function () {
                const urlParams = new URLSearchParams(window.location.search);
                if (urlParams.get('showRefundPopup') === 'true') {
                    document.getElementById('refundOverlay').style.display = 'flex';
                }
            };

            document.getElementById('refundOverlay').addEventListener('click', function (event) {
                if (event.target === this) {
                    this.style.display = 'none';
                }
            });
        </script>
    </body>
</html>
