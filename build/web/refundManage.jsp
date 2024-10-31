<%-- 
    Document   : refund
    Created on : May 18, 2023, 9:30:00 AM
    Author     : [Your Name]
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <title>Quản Lý Đơn Hoàn Tiền</title>
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
                padding: 2rem 3rem;
                width: 100%;
                background-color: #f8f9fa;
                min-height: 100vh;
            }

            .history {
                width: 100%;
                margin-top: 10px;
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
                margin-bottom: 2.5rem;
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
                padding: 1.2rem 1rem;
                text-align: center;
                color: #2c3e50;
                font-size: 0.95rem;
                border-bottom: 1px solid #e9ecef;
                vertical-align: middle;
            }

            /* Specific column styles */
            .table td:nth-child(1) {  /* Mã Hoàn Tiền */
                font-weight: 600;
                color: #2c3e50;
            }

            .table td:nth-child(6) {  /* Số Tiền Hoàn */
                font-family: 'Roboto Mono', monospace;
                font-weight: 500;
                color: #28a745;
            }

            .table td:nth-child(7) {  /* Lý Do Hoàn Tiền */
                max-width: 250px;
                white-space: normal;
                text-align: left;
            }

            .table tbody tr {
                transition: all 0.3s ease;
                background: white;
            }

            .table tbody tr:hover {
                background-color: #f8f9fa;
                transform: scale(1.01);
            }

            /* View Link Button */
            .view-link {
                display: inline-block;
                padding: 0.6rem 1.5rem;
                background: linear-gradient(45deg, #28a745, #34d058);
                color: white;
                border-radius: 30px;
                font-size: 0.85rem;
                font-weight: 500;
                text-transform: uppercase;
                letter-spacing: 0.5px;
                transition: all 0.3s ease;
            }

            .view-link:hover {
                background: linear-gradient(45deg, #218838, #28a745);
                transform: translateY(-2px);
                box-shadow: 0 4px 15px rgba(40, 167, 69, 0.3);
                color: white;
                text-decoration: none;
            }

            /* Responsive Design */
            @media (max-width: 1200px) {
                .main {
                    padding: 1.5rem;
                }

                .history-list {
                    padding: 1.5rem;
                }

                .table {
                    display: block;
                    overflow-x: auto;
                    white-space: nowrap;
                }

                .table td:nth-child(7) {
                    max-width: none;
                }
            }

            @media (max-width: 768px) {
                .main {
                    padding: 1rem;
                }

                .history-list {
                    padding: 1rem;
                }

                .history-list h1 {
                    font-size: 1.5rem;
                }

                .table th, .table td {
                    padding: 0.8rem 0.5rem;
                    font-size: 0.85rem;
                }

                .view-link {
                    padding: 0.5rem 1rem;
                    font-size: 0.8rem;
                }
            }

            /* Status Badges if needed */
            .status-badge {
                padding: 0.5rem 1rem;
                border-radius: 30px;
                font-size: 0.85rem;
                font-weight: 500;
                letter-spacing: 0.5px;
                text-transform: uppercase;
            }

            .status-pending {
                background: #fff3cd;
                color: #856404;
            }

            .status-completed {
                background: #d4edda;
                color: #155724;
            }

            .status-cancelled {
                background: #f8d7da;
                color: #721c24;
            }

            /* Empty State */
            .empty-state {
                text-align: center;
                padding: 3rem;
                color: #6c757d;
            }

            .empty-state i {
                font-size: 3rem;
                margin-bottom: 1rem;
            }
            .active{
                background-color: #e0ffe0;
                color: #28a745;
                border-radius: 30px;
                pointer-events: none;
            }
            .active i{
                color: #28a745;
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
                    <li><a href="managerefund" class="<%= request.getRequestURI().contains("refundManage.jsp") ? "active" : ""%>">
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
                        <h1>Quản Lý Đơn Hoàn Tiền</h1>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Mã Hoàn Tiền</th>
                                    <th>Mã Tài Khoản</th>
                                    <th>Mã Đặt Phòng</th>
                                    <th>Mã Ngân Hàng</th>
                                    <th>Tên Ngân Hàng</th>
                                    <th>Số Tiền Hoàn</th>
                                    <th>Lý Do Hoàn Tiền</th>
                                    <th>Chi Tiết</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${refunds}" var="refund">
                                    <tr>
                                        <td>${refund.refund_id}</td>
                                        <td>${refund.acc_id}</td>
                                        <td>${refund.booking_id}</td>
                                        <td>${refund.bank_id}</td>
                                        <td>${refund.bank_name}</td>
                                        <td>
                                            <fmt:formatNumber value="${refund.refund_amount}" type="number" pattern="#,##0"/> VND
                                        </td>
                                        <td>${refund.refund_reason}</td>
                                        <td>
                                            <a href="refunddetail?id=${refund.refund_id}" class="view-link">Xem</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <input type="hidden" name="hotelId" value="${sessionScope.hotel.hotel_id}">
                </section>
            </section>
        </div>
    </body>
</html>



