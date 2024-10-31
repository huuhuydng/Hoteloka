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
                padding: 20px;
                width: 100%;
            }

            .history-detail {
                width: 100%;
                padding: 20px;
                margin-top: 10px;
                background: #fff;
                border-radius: 15px;
                box-shadow: 0 10px 20px rgba(0, 0, 0, 0.05);
                transition: transform 0.3s ease;
            }

            .history-detail:hover {
                transform: scale(1.02);
            }

            .history-detail h1 {
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

            .room-image {
                width: 80px;
                height: 50px;
                object-fit: cover;
                border-radius: 6px;
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
            .room-image {
                width: 80px;
                height: 50px;
                object-fit: cover;
                border-radius: 6px;
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

            .history-list:before {
                position: absolute;
                top: 2rem;
                left: 50%;
                transform: translateX(-50%);
                background: linear-gradient(45deg, #28a745, #34d058);
                color: white;
                padding: 1rem 2rem;
                border-radius: 30px;
                font-weight: 600;
                font-size: 1.2rem;
                white-space: nowrap;
                box-shadow: 0 4px 15px rgba(40, 167, 69, 0.3);
                z-index: 1;
            }

            .charts-grid {
                display: flex;
                flex-direction: column;
                gap: 2rem;
                margin: 3rem auto 0;
                max-width: 1400px; 
            }

            .chart-container {
                background: white;
                border-radius: 20px;
                padding: 2rem;
                box-shadow: 0 10px 30px rgba(0,0,0,0.1);
                transition: all 0.3s ease;
                position: relative;
                border: 1px solid #e9ecef;
                height: 500px;
            }

            .chart-container:hover {
                transform: translateY(-5px);
                box-shadow: 0 15px 35px rgba(0,0,0,0.15);
            }

            .chart-container h2 {
                text-align: center;
                color: #2c3e50;
                font-size: 1.4rem; 
                font-weight: 600;
                margin-bottom: 2rem;
                padding: 1rem 2rem;
                background: linear-gradient(45deg, #f1f9f1, #e8f5e9);
                border-radius: 15px;
                position: relative;
            }

            .chart-container h2:after {
                content: '';
                position: absolute;
                bottom: -3px;
                left: 50%;
                transform: translateX(-50%);
                width: 100px;
                height: 3px;
                background: linear-gradient(45deg, #28a745, #34d058);
                border-radius: 2px;
            }

            .chart-inner {
                position: relative;
                width: 100%;
                height: calc(100% - 100px);
                padding: 1.5rem;
                background: #fff;
                border-radius: 15px;
                box-shadow: inset 0 0 15px rgba(0,0,0,0.05);
            }

            .chart-container:first-child {
                background: linear-gradient(to bottom right, #ffffff, #f8f9fa);
            }

            .chart-container:last-child {
                background: linear-gradient(to bottom right, #ffffff, #f8f9fa);
            }

            @keyframes fadeInUp {
                from {
                    opacity: 0;
                    transform: translateY(30px);
                }
                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            .chart-container {
                animation: fadeInUp 0.8s ease forwards;
            }

            .chart-container:nth-child(2) {
                animation-delay: 0.3s;
            }

            /* Responsive Design */
            @media (max-width: 1200px) {
                .main {
                    padding: 1.5rem;
                }

                .chart-container {
                    height: 400px;
                }

                .history-list:before {
                    font-size: 1.1rem;
                    padding: 0.8rem 1.5rem;
                }
            }

            @media (max-width: 768px) {
                .main {
                    padding: 1rem;
                }

                .history-list {
                    padding: 1.5rem;
                }

                .chart-container {
                    height: 350px;
                    padding: 1.5rem;
                }

                .chart-container h2 {
                    font-size: 1.1rem;
                    padding: 0.8rem;
                }
            }

            .chartjs-tooltip {
                background: rgba(255, 255, 255, 0.95) !important;
                border-radius: 10px !important;
                box-shadow: 0 4px 15px rgba(0,0,0,0.15) !important;
                padding: 10px 15px !important;
                border: 1px solid #e9ecef !important;
                font-weight: 500 !important;
            }

            .charts-grid {
                margin-bottom: 2rem;
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
                            <span style="margin-bottom: 20px" class="nav-item">Thông tin tài khoản</span>
                        </a></li>
                        <c:if test="${not empty sessionScope.hotel.hotel_id}">
                        <li><a href="hotelManagement?hotel_id=${sessionScope.hotel.hotel_id}">
                                <i class='bx bxs-building-house'></i>
                                <span style="margin-bottom: 20px" class="nav-item">Quản lý khách sạn</span>
                            </a></li>
                        </c:if>
                        <c:if test="${empty sessionScope.hotel.hotel_id}">
                        <li><a href="NullHotelServlet">
                                <i class='bx bxs-building-house'></i>
                                <span style="margin-bottom: 20px" class="nav-item">Quản lý khách sạn</span>
                            </a></li>
                        </c:if>
                    <li><a href="PartnerHistoryServlet">
                            <i class='bx bxs-category'></i>
                            <span style="margin-bottom: 20px" class="nav-item">Quản lý đơn phòng</span>
                        </a></li>
                    <li><a href="manageroom?hotelId=${sessionScope.hotel.hotel_id}">
                            <i class='bx bx-bed'></i>
                            <span style="margin-bottom: 20px" class="nav-item">Số lượng phòng</span>
                        </a></li>
                    <li><a href="managerefund">
                            <i class='bx bx-credit-card'></i>
                            <span style="margin-bottom: 20px" class="nav-item">Quản lí hoàn tiền</span>
                        </a></li>
                    <li><a href="managefeedback?hotelId=${sessionScope.hotel.hotel_id}" class="<%= request.getRequestURI().contains("feedbackManage.jsp") ? "active" : ""%>">
                            <i class='bx bx-message-square-detail'></i>
                            <span style="margin-bottom: 20px" class="nav-item">Quản lí phản hồi</span>
                        </a></li>
                    <li><a href="ChartServlet" class="<%= request.getRequestURI().contains("incomeReport.jsp") ? "active" : ""%>">
                            <i class='bx bxs-report'></i>
                            <span style="margin-bottom: 20px" class="nav-item">Báo cáo doanh thu</span>
                        </a></li>
                    <li><a href="home">
                            <i class='bx bx-home'></i>
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
                        <div class="charts-grid">
                            <div class="chart-container">
                                <h2>Doanh Thu Theo Tháng</h2>
                                <div class="chart-inner">
                                    <canvas id="sale-revenue"></canvas>
                                </div>
                            </div>

                            <div class="chart-container">
                                <h2>Số Lượng Đơn Theo Tháng</h2>
                                <div class="chart-inner">
                                    <canvas id="booking-count"></canvas>
                                </div>
                            </div>
                            <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
                            <script type="text/javascript">
                var revenueChart = document.getElementById("sale-revenue").getContext("2d");
                var myChart = new Chart(revenueChart, {
                    type: "line",
                    data: {
                        labels: ["01/2024", "02/2024", "03/2024", "04/2024", "05/2024", "06/2024",
                            "07/2024", "08/2024", "09/2024", "10/2024", "11/2024", "12/2024"],
                        datasets: [{
                                label: "Doanh thu",
                                data: [
                                ${requestScope.year012024},
                                ${requestScope.year022024},
                                ${requestScope.year032024},
                                ${requestScope.year042024},
                                ${requestScope.year052024},
                                ${requestScope.year062024},
                                ${requestScope.year072024},
                                ${requestScope.year082024},
                                ${requestScope.year092024},
                                ${requestScope.year102024},
                                ${requestScope.year112024},
                                ${requestScope.year122024}
                                ],
                                backgroundColor: "rgba(40, 167, 69, 0.2)",
                                borderColor: "#28a745",
                                borderWidth: 2,
                                tension: 0.4
                            }]
                    },
                    options: {
                        responsive: true,
                        maintainAspectRatio: false,
                        scales: {
                            yAxes: [{
                                    ticks: {
                                        callback: function (value) {
                                            return new Intl.NumberFormat('vi-VN', {
                                                style: 'currency',
                                                currency: 'VND'
                                            }).format(value);
                                        }
                                    }
                                }]
                        },
                        tooltips: {
                            callbacks: {
                                label: function (tooltipItem) {
                                    return new Intl.NumberFormat('vi-VN', {
                                        style: 'currency',
                                        currency: 'VND'
                                    }).format(tooltipItem.value);
                                }
                            }
                        }
                    }
                });

                var bookingChart = document.getElementById("booking-count").getContext("2d");
                var barChart = new Chart(bookingChart, {
                    type: "bar",
                    data: {
                        labels: ["01/2024", "02/2024", "03/2024", "04/2024", "05/2024", "06/2024",
                            "07/2024", "08/2024", "09/2024", "10/2024", "11/2024", "12/2024"],
                        datasets: [{
                                label: "Số lượng đơn",
                                data: [
                                ${requestScope.bookingCount01},
                                ${requestScope.bookingCount02},
                                ${requestScope.bookingCount03},
                                ${requestScope.bookingCount04},
                                ${requestScope.bookingCount05},
                                ${requestScope.bookingCount06},
                                ${requestScope.bookingCount07},
                                ${requestScope.bookingCount08},
                                ${requestScope.bookingCount09},
                                ${requestScope.bookingCount10},
                                ${requestScope.bookingCount11},
                                ${requestScope.bookingCount12},
                                ],
                                backgroundColor: "rgba(40, 167, 69, 0.6)",
                                borderColor: "#28a745",
                                borderWidth: 1
                            }]
                    },
                    options: {
                        responsive: true,
                        maintainAspectRatio: false,
                        scales: {
                            yAxes: [{
                                    ticks: {
                                        beginAtZero: true,
                                        callback: function (value) {
                                            if (Math.floor(value) === value) {
                                                return value;
                                            }
                                        }
                                    }
                                }]
                        }
                    }
                });
                            </script>
                        </div>
                    </div>
                </section>
            </section>
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
