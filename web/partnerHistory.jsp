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
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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

            nav a {
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
                background-color: #FFC107;
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
            /* Form Container Styles */
            .filter-container {
                display: flex;
                flex-wrap: wrap;
                gap: 2rem;
                padding: 2rem;
                background: white;
                border-radius: 15px;
                margin-bottom: 2rem;
                box-shadow: 0 4px 15px rgba(0,0,0,0.05);
                border: 1px solid #e9ecef;
                align-items: flex-end;
                justify-content: center;
            }

            .filter-group {
                display: flex;
                flex-direction: column;
                gap: 0.8rem;
                min-width: 250px;
                flex: 1;
            }

            .filter-group label {
                font-weight: 500;
                color: #2c3e50;
                font-size: 0.95rem;
            }

            .filter-select,
            .filter-input {
                width: 100%;
                padding: 0.8rem 1rem;
                border: 1px solid #dee2e6;
                border-radius: 8px;
                font-size: 0.95rem;
                background-color: white;
                height: 45px;
                transition: all 0.3s ease;
            }

            .filter-select {
                appearance: none;
                background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='12' fill='%23333' viewBox='0 0 16 16'%3E%3Cpath d='M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z'/%3E%3C/svg%3E");
                background-repeat: no-repeat;
                background-position: right 1rem center;
                padding-right: 2.5rem;
            }

            #otherdatetypeDiv {
                margin-top: 0.5rem;
            }

            .filter-select:hover,
            .filter-input:hover {
                border-color: #28a745;
            }

            .filter-select:focus,
            .filter-input:focus {
                border-color: #28a745;
                box-shadow: 0 0 0 3px rgba(40, 167, 69, 0.2);
            }

            .filter-button {
                padding: 0.8rem 2rem;
                height: 45px;
                background: linear-gradient(45deg, #28a745, #34d058);
                color: white;
                border: none;
                border-radius: 8px;
                cursor: pointer;
                font-weight: 500;
                transition: all 0.3s ease;
                text-transform: uppercase;
                letter-spacing: 1px;
                min-width: 200px;
            }

            .filter-button:hover {
                background: linear-gradient(45deg, #218838, #28a745);
                transform: translateY(-2px);
                box-shadow: 0 4px 15px rgba(40, 167, 69, 0.3);
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
            }

            .table td {
                padding: 1rem;
                vertical-align: middle;
                border-bottom: 1px solid #e9ecef;
            }

            .table tbody tr {
                transition: all 0.3s ease;
            }

            .table tbody tr:hover {
                background-color: #f8f9fa;
                transform: scale(1.01);
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
            }

            .bg-success {
                background: linear-gradient(45deg, #28a745, #34d058);
                color: white;
            }

            .bg-warning {
                background: linear-gradient(45deg, #dc3545, #ff4d4d);
                color: white;
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
            }

            .view-button:hover {
                background: linear-gradient(45deg, #218838, #28a745);
                transform: translateY(-2px);
                box-shadow: 0 4px 15px rgba(40, 167, 69, 0.3);
                color: white;
                text-decoration: none;
            }

            /* Money Format */
            .table td:nth-child(6) {
                font-family: 'Roboto Mono', monospace;
                font-weight: 500;
                color: #28a745;
            }

            /* Date Columns */
            .table td:nth-child(2),
            .table td:nth-child(3),
            .table td:nth-child(4) {
                white-space: nowrap;
            }

            /* DatePicker Customization */
            .ui-datepicker {
                background: white;
                padding: 1rem;
                border-radius: 10px;
                box-shadow: 0 4px 20px rgba(0,0,0,0.1);
                border: none;
            }

            .ui-datepicker .ui-datepicker-header {
                background: linear-gradient(45deg, #28a745, #34d058);
                border: none;
                border-radius: 8px;
                padding: 0.5rem;
            }

            .ui-datepicker th {
                color: #2c3e50;
                font-weight: 600;
            }

            .ui-datepicker .ui-state-default {
                background: white;
                border: 1px solid #e9ecef;
                border-radius: 5px;
                transition: all 0.3s ease;
            }

            .ui-datepicker .ui-state-hover {
                background: #e0ffe0;
                border-color: #28a745;
            }

            .ui-datepicker .ui-state-active {
                background: #28a745;
                color: white;
                border-color: #28a745;
            }

            .ui-datepicker .ui-state-highlight {
                background: #e0ffe0;
                border-color: #28a745;
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
                    <li><a href="PartnerHistoryServlet" class="<%= request.getRequestURI().contains("partnerHistory.jsp") ? "active" : ""%>">
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
                    <li><a href="ChartServlet">
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
                        <h1>QUẢN LÍ ĐƠN PHÒNG</h1>
                        <form action="PartnerHistoryServlet" method="GET" class="filter-container">
                            <div class="filter-group">
                                <label for="dateType">Lọc theo:</label>
                                <select name="dateType" id="dateType" class="filter-select" onchange="toggleOtherType()">
                                    <option value="booking" ${selectedDateType == 'booking' ? 'selected' : ''}>Ngày đặt</option>
                                    <option value="checkin" ${selectedDateType == 'checkin' ? 'selected' : ''}>Check-in</option>
                                    <option value="checkout" ${selectedDateType == 'checkout' ? 'selected' : ''}>Check-out</option>
                                    <option value="status" ${selectedDateType == 'status' ? 'selected' : ''}>Trạng thái</option>
                                </select>
                                <select name="otherdatetypeDiv" id="otherdatetypeDiv" class="filter-select">
                                    <option value="pending" ${otherDateType == 'pending' ? 'selected' : ''}>Đang xử lí</option>
                                    <option value="denied" ${otherDateType == 'denied' ? 'selected' : ''}>Từ chối</option>
                                    <option value="accept" ${otherDateType == 'accept' ? 'selected' : ''}>Chấp nhận</option>
                                    <option value="finish" ${otherDateType == 'finish' ? 'selected' : ''}>Thành công</option>
                                    <option value="refund" ${otherDateType == 'refund' ? 'selected' : ''}>Hoàn tiền</option>
                                    <option value="cancel" ${otherDateType == 'cancel' ? 'selected' : ''}>Huỷ bỏ</option>
                                </select>
                            </div>

                            <div class="filter-group">
                                <label for="fromDate">Từ ngày:</label>
                                <input type="text" id="fromDate" name="fromDate" class="filter-input datepicker" 
                                       value="${fromDate}" readonly>

                            </div>

                            <div class="filter-group">
                                <label for="toDate">Đến ngày:</label>
                                <input type="text" id="toDate" name="toDate" class="filter-input datepicker" 
                                       value="${toDate}" readonly>
                            </div>

                            <button type="submit" class="filter-button">LỌC</button>
                        </form>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>ID người đặt</th>
                                    <th>Ngày đặt</th>
                                    <th>Ngày đến</th>
                                    <th>Ngày đi</th>
                                    <th>Trạng thái</th>
                                    <th>Tổng tiền(VND)</th>

                                    <th style="margin-left: 15px">Chi tiết</th>
                                </tr>
                            </thead>
                            <tbody>   
                                <c:set var="totalRevenue" value="0" />
                                <c:forEach items="${bookings}" var="b">
                                    <tr>
                                        <td>${b.acc_id}</td>
                                        <td>${b.booking_date}</td>
                                        <td>${b.booking_checkIn}</td>
                                        <td>${b.booking_checkOut}</td>
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
                                        <td>
                                            <fmt:formatNumber value="${b.booking_total}" type="number" pattern="#,##0"/> VND
                                        </td>
                                        <td><a class="view-button" href="partner-history-detail?id=${b.booking_id}">XEM</a></td>
                                    </tr>   
                                </c:forEach>
                            </tbody>                          
                        </table>
                    </div>
                </section>
            </section>
        </div>
        <script>
            function toggleOtherType() {
                var typeSelect = document.getElementById('dateType');
                var otherTypeDiv = document.getElementById('otherdatetypeDiv');
                if (typeSelect.value === 'status') {
                    otherTypeDiv.style.display = 'block';
                    otherTypeDiv.required = true;
                } else {
                    otherTypeDiv.style.display = 'none';
                    otherTypeDiv.required = false;
                }
            }
            function formatDate(date) {
                var day = date.getDate();
                var month = date.getMonth() + 1;
                var year = date.getFullYear();
                day = day < 10 ? '0' + day : day;
                month = month < 10 ? '0' + month : month;

                return day + '-' + month + '-' + year;
            }
            if (!$("#fromDate").val()) {
                var today = new Date();
                var formattedDate = formatDate(today);
                $("#fromDate").val(formattedDate);
                $("#toDate").val(formattedDate);
            }

            $(document).ready(function () {
                $(".datepicker").datepicker({
                    dateFormat: 'dd/mm/yy',
                    changeMonth: true,
                    changeYear: true,
                    yearRange: "2000:2030",
                    dayNames: ['Chủ Nhật', 'Thứ 2', 'Thứ 3', 'Thứ 4', 'Thứ 5', 'Thứ 6', 'Thứ 7'],
                    dayNamesMin: ['CN', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7'],
                    monthNames: ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6', 'Tháng 7', 'Tháng 8', 'Tháng 9', 'Tháng 10', 'Tháng 11', 'Tháng 12'],
                    monthNamesShort: ['T1', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7', 'T8', 'T9', 'T10', 'T11', 'T12']
                });
                toggleOtherType();

                // Thêm validation để đảm bảo fromDate <= toDate
                $("#toDate").change(function () {
                    var fromDate = $("#fromDate").datepicker("getDate");
                    var toDate = $(this).datepicker("getDate");

                    if (fromDate && toDate && fromDate > toDate) {
                        alert("Ngày kết thúc phải lớn hơn hoặc bằng ngày bắt đầu!");
                        $(this).val("");
                    }
                });
            });
        </script>
    </body>
</html>
