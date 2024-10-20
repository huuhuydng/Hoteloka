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
            .chart-container {
                width: 50%; /* Kích thước của biểu đồ */
                margin: 0 auto; /* Đặt biểu đồ vào giữa */
                padding: 20px; /* Thêm padding xung quanh biểu đồ */
                background: #fff; /* Nền trắng cho biểu đồ */
                border-radius: 15px; /* Bo tròn góc */
                box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1); /* Đổ bóng cho biểu đồ */
                transition: transform 0.3s ease; /* Hiệu ứng chuyển động */
            }

            .chart-container:hover {
                transform: scale(1.02); /* Tăng kích thước khi hover */
            }

            canvas {
                max-width: 100%; /* Đảm bảo biểu đồ không vượt quá kích thước của container */
                height: auto; /* Để chiều cao tự động */
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
                    <li><a href="home" class="logo">
                            <img src="images/logo.png">
                            <h5 class="nav-item">${sessionScope.account.acc_fullname}</h5>
                        </a></li>
                    <li><a href="partnerInfo.jsp">
                            <i class='bx bxs-user-detail'></i>
                            <span class="nav-item">Thông tin tài khoản</span>
                        </a></li>
                        <c:if test="${not empty sessionScope.hotel.hotel_id}">
                        <li><a href="javascript:void(0);" onclick="showHotelOverlay()">
                                <i class='bx bxs-building-house'></i>
                                <span class="nav-item">Quản lý khách sạn</span>
                            </a></li>
                        </c:if>
                        <c:if test="${empty sessionScope.hotel.hotel_id}">
                        <li><a href="NullHotelServlet">
                                <i class='bx bxs-building-house'></i>
                                <span class="nav-item">Quản lý khách sạn</span>
                            </a></li>
                        </c:if>
                    <li><a href="PartnerHistoryServlet" class="<%= request.getRequestURI().contains("partnerHistory.jsp") ? "active" : ""%>">
                            <i class='bx bxs-category'></i>
                            <span class="nav-item">Quản lý đơn phòng</span>
                        </a></li>
                    <li><a href="#">
                            <i class='bx bx-message-detail'></i>
                            <span class="nav-item">Tin nhắn</span>
                        </a></li>
                    <li><a href="ChartServlet">
                            <i class='bx bxs-report'></i>
                            <span class="nav-item">Báo cáo</span>
                        </a></li>
                    <li><a href="home">
                            <i class='bx bx-arrow-back'></i>
                            <span class="nav-item">Trang chủ</span>
                        </a></li>
                    <li><a href="LogoutServlet" class="logout">
                            <i class='bx bx-log-out'></i>
                            <span class="nav-item">Đăng xuất</span>
                        </a></li>
                </ul>
            </nav>
            <section class="main">
                <section class="history">
                    <div class="history-list">
                        <h1>Thông tin Giá</h1>
                        <div class="chart-container">
                            <canvas id="sale-revenue"></canvas>
                        </div>

                        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
                        <script type="text/javascript">
                            var chart = document.getElementById("sale-revenue").getContext("2d");
                            var myChart = new Chart(chart, {
                                type: "line",
                                data: {
                                    labels: ["06/2024", "07/2024", "08/2024", "09/2024", "10/2024", "11/2024", "12/2024"],
                                    datasets: [{
                                            label: "Revenue",
                                            data: [${requestScope.year062024}, ${requestScope.year072024}, ${requestScope.year082024}, ${requestScope.year092024}, ${requestScope.year102024}, ${requestScope.year112024}, ${requestScope.year122024}],
                                            backgroundColor: "rgba(0, 156, 255, .5)"
                                        }]
                                },
                                options: {
                                    responsive: true
                                }
                            });
                        </script>
                    </div>
                </section>
            </section>
        </div>
        <!-- Overlay cho My Hotel -->
        <div class="overlay" id="hotelOverlay">
            <div class="popup">
                <h2>Bạn muốn cập nhật những gì cho Hotel của mình?</h2>
                <div class="action-buttons">
                    <form action="updateHotel">
                        <input type="hidden" name="hotel_id" value="${sessionScope.hotel.hotel_id}">
                        <button type="submit" class="update">Cập nhật Khách sạn</button>
                    </form>

                    <form action="listRoom">
                        <input type="hidden" name="hotel_id" value="${sessionScope.hotel.hotel_id}">
                        <button type="submit" class="update">Cập nhật Phòng</button>
                    </form>

                    <form action="deleteHotel.jsp">
                        <button style="background-color: red" type="submit" class="update">Xoá Hotel</button>
                    </form>
                </div>
            </div>
        </div>

        <div id="hotelNotification" class="notification" style="display: none;">
            <p>Đã cập nhật khách sạn thành công!</p>
            <button onclick="closeNotification()">Đóng</button>
        </div>

        <script>
            function showRevenue() {
                // Hiển thị phần báo cáo doanh thu khi nhấn vào nút "Báo cáo"
                document.getElementById('revenueReport').style.display = 'block';
            }

            // Hàm hiển thị overlay
            function showHotelOverlay() {
                document.getElementById('hotelOverlay').style.display = 'flex'; // Hiện overlay
            }

            // Hàm ẩn overlay
            function hideHotelOverlay() {
                document.getElementById('hotelOverlay').style.display = 'none'; // Ẩn overlay
            }

            // Bắt sự kiện click trên overlay để đóng popup
            document.getElementById('hotelOverlay').addEventListener('click', function (event) {
                if (event.target === this) {
                    hideHotelOverlay();
                }
            });
        </script>
    </body>
</html>
