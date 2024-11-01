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
        <title>Web Income</title>
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

            .user-icon {
                margin-right: 5px;
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
          
            /* top 5 hotel */
            .history-detail {
                margin-top: 30px;
                background: white;
                padding: 20px;
                border-radius: 15px;
                box-shadow: 0 10px 20px rgba(0, 0, 0, 0.05);
            }

            .history-detail h1 {
                color: #388e3c;
                font-size: 24px;
                margin-bottom: 20px;
                text-align: center;
            }

            .table {
                width: 100%;
                border-collapse: collapse;
            }

            .table th {
                background-color: #4CAF50;
                color: white;
                padding: 15px;
                text-align: center;
            }

            .table td {
                padding: 12px;
                text-align: center;
                border-bottom: 1px solid #ddd;
            }

            .table tr:hover {
                background-color: #f5f5f5;
            }

            .chart-container {
                margin-bottom: 30px;
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
                    <li><a href="hotel-approve">
                            <i class='bx bx-buildings'></i>
                            <span style="margin-bottom: 20px" class="nav-item">Duyệt Đối tác</span>
                        </a></li>
                    <li><a href="AllAccountServlet">
                            <i class='bx bxs-user-account'></i>
                            <span style="margin-bottom: 20px" class="nav-item">Quản lý tài khoản</span>
                        </a></li>
                    <li><a href="AdminChart" class="<%= request.getRequestURI().contains("webIncome.jsp") ? "active" : ""%>">
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
                        <div class="chart-container">
                            <canvas id="sale-revenue"></canvas>
                        </div>

                        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
                        <script type="text/javascript">
                var chart = document.getElementById("sale-revenue").getContext("2d");
                var myChart = new Chart(chart, {
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
                                backgroundColor: "rgba(0, 156, 255, .5)"
                            }]
                    },
                    options: {
                        responsive: true,
                        scales: {
                            yAxes: [{
                                    ticks: {
                                        callback: function (value, index, values) {
                                            // Format số thành dạng tiền VND
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
                                label: function (tooltipItem, data) {
                                    // Format số trong tooltip thành dạng tiền VND
                                    return new Intl.NumberFormat('vi-VN', {
                                        style: 'currency',
                                        currency: 'VND'
                                    }).format(tooltipItem.value);
                                }
                            }
                        }
                    }
                });
                        </script>
                    </div>
                </section>
                                <div class="history-detail">
                <h1>Top 5 Khách sạn có doanh thu cao nhất</h1>
                <table class="table">
                    <thead>
                        <tr>
                            <th>ID Khách sạn</th>
                            <th>Tên Khách sạn</th>
                            <th>Tổng doanh thu</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="hotel" items="${top5Hotels}">
                            <tr>
                                <td>${hotel.hotel_id}</td>
                                <td>${hotel.hotel_name}</td>
                                <td>
                                    <script>
                                        document.write(new Intl.NumberFormat('vi-VN', {
                                            style: 'currency',
                                            currency: 'VND'
                                        }).format(${hotel.total_revenue}));
                                    </script>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            </section>
            
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
