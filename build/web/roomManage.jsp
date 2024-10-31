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
        <title>Room Manage</title>
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
                min-width: 250px; /* Đặt chiều rộng tối thiểu cho tất cả các nhóm */
                flex: 1; /* Cho phép các nhóm mở rộng đều nhau */
            }

            .filter-group label {
                font-weight: 500;
                color: #2c3e50;
                font-size: 0.95rem;
            }

            .filter-select,
            .filter-input {
                width: 100%; /* Đảm bảo input và select có chiều rộng 100% của container */
                padding: 0.8rem 1rem;
                border: 1px solid #dee2e6;
                border-radius: 8px;
                font-size: 0.95rem;
                background-color: white;
                height: 45px; /* Chiều cao cố định cho tất cả các input/select */
                transition: all 0.3s ease;
            }

            .filter-select {
                appearance: none; /* Xóa bỏ style mặc định của select */
                background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='12' fill='%23333' viewBox='0 0 16 16'%3E%3Cpath d='M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z'/%3E%3C/svg%3E");
                background-repeat: no-repeat;
                background-position: right 1rem center;
                padding-right: 2.5rem;
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
                height: 45px; /* Cùng chiều cao với input/select */
                background: linear-gradient(45deg, #28a745, #34d058);
                color: white;
                border: none;
                border-radius: 8px;
                cursor: pointer;
                font-weight: 500;
                transition: all 0.3s ease;
                text-transform: uppercase;
                letter-spacing: 1px;
                min-width: 200px; /* Chiều rộng tối thiểu cho nút */
            }

            .filter-button:hover {
                background: linear-gradient(45deg, #218838, #28a745);
                transform: translateY(-2px);
                box-shadow: 0 4px 15px rgba(40, 167, 69, 0.3);
            }

            /* Responsive adjustments */
            @media (max-width: 1200px) {
                .filter-container {
                    gap: 1.5rem;
                }

                .filter-group {
                    min-width: 200px;
                }
            }

            @media (max-width: 768px) {
                .filter-container {
                    flex-direction: column;
                    padding: 1.5rem;
                }

                .filter-group,
                .filter-button {
                    width: 100%;
                }

                .filter-select,
                .filter-input,
                .filter-button {
                    height: 40px;
                    font-size: 0.9rem;
                }
            }
            /* Table Styles */
            .table-container {
                overflow-x: auto;
                margin-top: 2rem;
                border-radius: 15px;
                box-shadow: 0 4px 15px rgba(0,0,0,0.05);
            }

            .table {
                width: 100%;
                border-collapse: separate;
                border-spacing: 0;
                background: white;
                border-radius: 15px;
                overflow: hidden;
            }

            .table thead tr {
                background: linear-gradient(45deg, #28a745, #34d058);
                color: white;
            }

            .table th {
                padding: 1.2rem 1rem;
                font-weight: 600;
                text-transform: uppercase;
                font-size: 0.9rem;
                letter-spacing: 0.5px;
                text-align: center;
                white-space: nowrap;
            }

            .table td {
                padding: 1rem;
                text-align: center;
                color: #2c3e50;
                font-size: 0.95rem;
                border-bottom: 1px solid #e9ecef;
                vertical-align: middle;
            }

            .table tbody tr {
                transition: all 0.3s ease;
            }

            .table tbody tr:hover {
                background-color: #f8f9fa;
                transform: scale(1.01);
            }

            .date-display {
                text-align: left !important;
                font-weight: 500;
                color: #28a745;
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

            /* Responsive Design */
            @media (max-width: 1200px) {
                .main {
                    padding: 1.5rem;
                }

                .filter-container {
                    flex-direction: column;
                    align-items: stretch;
                }

                .filter-group {
                    width: 100%;
                }

                .filter-select, .filter-input {
                    width: 100%;
                }
            }

            @media (max-width: 768px) {
                .main {
                    padding: 1rem;
                }

                .history-list {
                    padding: 1.5rem;
                }

                .table th, .table td {
                    padding: 0.8rem 0.5rem;
                    font-size: 0.85rem;
                }

                .history-list h1 {
                    font-size: 1.5rem;
                }
            }

            /* Price Format */
            .table td:nth-child(4) {
                font-family: 'Roboto Mono', monospace;
                font-weight: 500;
                color: #28a745;
            }

            /* Room Count Columns */
            .table td:nth-child(5),
            .table td:nth-child(6),
            .table td:nth-child(7) {
                font-weight: 500;
            }

            .table td:nth-child(7) {
                color: #28a745;
            }

            .table td:nth-child(6) {
                color: #dc3545;
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
                    <li><a href="PartnerHistoryServlet" >
                            <i class='bx bxs-category'></i>
                            <span style="margin-bottom: 20px" class="nav-item">Quản lý đơn phòng</span>
                        </a></li>
                    <li><a href="manageroom?hotelId=${sessionScope.hotel.hotel_id}"class="<%= request.getRequestURI().contains("roomManage.jsp") ? "active" : ""%>">
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
                        <h1>SỐ LƯỢNG PHÒNG</h1>
                        <form action="manageroom" method="GET" class="filter-container">
                            <input type="hidden" name="hotelId" value=${idHotel}>
                            <div class="filter-group">
                                <label for="roomType">Loại phòng:</label>
                                <select name="roomType" id="roomType" class="filter-select">
                                    <option value="">Chọn loại phòng</option>
                                    <c:forEach items="${roomTypes}" var="room">
                                        <option value="${room.room_id}" ${selectedRoomType == room.room_id ? 'selected' : ''}>
                                            ${room.room_name}
                                        </option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="filter-group">
                                <label for="fromDate">Từ ngày:</label>
                                <input type="text" id="fromDate" name="fromDate" 
                                       class="filter-input datepicker" 
                                       value="${fromDate}" 
                                       readonly>
                            </div>

                            <div class="filter-group">
                                <label for="toDate">Đến ngày:</label>
                                <input type="text" id="toDate" name="toDate" 
                                       class="filter-input datepicker" 
                                       value="${toDate}" 
                                       readonly>
                            </div>

                            <button type="submit" class="filter-button">Kiểm tra số lượng phòng</button>
                        </form>

                        <div class="table-container">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Ngày và thứ</th>
                                        <th>Mã phòng</th>
                                        <th>Loại phòng</th>
                                        <th>Giá phòng</th>
                                        <th>Tổng số phòng</th>
                                        <th>Đã sử dụng</th>
                                        <th>Phòng Trống</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${dateList}" var="date">
                                        <c:set var="availability" value="${availabilityByDate[date.formattedDate]}" />
                                        <c:forEach items="${availability}" var="room">
                                            <tr>
                                                <td class="date-display">
                                                    ${date.dayOfWeek}, ${date.formattedDate}
                                                </td>
                                                <td>${room.roomId}</td>
                                                <td>${room.roomName}</td>
                                                <td>${room.price} VNĐ</td>
                                                <td>${room.roomsTotal}</td>
                                                <td>${room.roomsBooked}</td>
                                                <td>${room.roomsLeft}</td>
                                            </tr>
                                        </c:forEach>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </section>
            </section>
            <script>
                $(document).ready(function () {
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

                    $(".datepicker").datepicker({
                        dateFormat: 'dd-mm-yy',
                        changeMonth: true,
                        changeYear: true,
                        yearRange: "2000:2030",
                        dayNames: ['Chủ Nhật', 'Thứ 2', 'Thứ 3', 'Thứ 4', 'Thứ 5', 'Thứ 6', 'Thứ 7'],
                        dayNamesMin: ['CN', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7'],
                        monthNames: ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6',
                            'Tháng 7', 'Tháng 8', 'Tháng 9', 'Tháng 10', 'Tháng 11', 'Tháng 12'],
                        monthNamesShort: ['T1', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7', 'T8', 'T9', 'T10', 'T11', 'T12'],
                        onSelect: function (dateText, inst) {
                            validateDates();
                        }
                    });

                    function validateDates() {
                        var fromDate = $("#fromDate").datepicker("getDate");
                        var toDate = $("#toDate").datepicker("getDate");

                        if (fromDate && toDate && fromDate > toDate) {
                            alert("Ngày kết thúc phải lớn hơn hoặc bằng ngày bắt đầu!");
                            $("#toDate").val("");
                        }
                    }
                });
            </script>
    </body>
</html>
