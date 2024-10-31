<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <title>History Detail Page</title>
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

            /* Navigation Styles */
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

            /* Navigation List Styles */
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

            .container ul li a i {
                font-size: 35px;
                position: absolute;
                margin-left: 17px;
            }

            .container ul li a span {
                text-align: center;
                margin-left: 29%;
            }

            /* Main Content Styles */
            .main {
                background: rgb(226, 226, 226);
                min-height: 100vh;
                padding: 20px;
                width: 100%;
            }

            .main-container {
                max-width: 1200px;
                margin: 0 auto;
                padding: 20px;
            }

            /* Section Styles */
            .info-section {
                background: #fff;
                border-radius: 15px;
                box-shadow: 0 5px 15px rgba(0,0,0,0.05);
                padding: 30px;
                margin-bottom: 30px;
                transition: all 0.3s ease;
            }

            .info-section:hover {
                transform: translateY(-2px);
            }

            /* Section Title Styles */
            .section-title {
                display: flex;
                align-items: center;
                justify-content: center;
                margin-bottom: 30px;
                padding-bottom: 20px;
                border-bottom: 2px solid #f0f0f0;
            }

            .section-title i {
                font-size: 32px;
                color: #4CAF50;
                margin-right: 15px;
            }

            .section-title h1 {
                font-size: 24px;
                color: #333;
                margin: 0;
                font-weight: 600;
            }

            /* Customer Info Grid */
            .customer-info-grid {
                display: grid;
                grid-template-columns: repeat(2, 1fr);
                gap: 25px;
                padding: 10px;
            }

            .info-box {
                display: flex;
                align-items: center;
                padding: 20px;
                background: #f8f9fa;
                border-radius: 12px;
                border: 1px solid #eee;
                transition: all 0.3s ease;
            }

            .info-box:hover {
                transform: translateY(-2px);
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            }

            .info-box i {
                font-size: 24px;
                color: #4CAF50;
                margin-right: 15px;
            }

            .info-content {
                flex: 1;
            }

            .info-label {
                font-size: 14px;
                color: #666;
                margin-bottom: 5px;
            }

            .info-value {
                font-size: 16px;
                font-weight: 600;
                color: #333;
            }

            /* Table Styles */
            .room-info {
                margin: 20px 0;
                overflow-x: auto;
            }

            .table {
                width: 100%;
                border-collapse: collapse;
                background: #fff;
                border-radius: 12px;
                overflow: hidden;
                box-shadow: 0 5px 15px rgba(0,0,0,0.05);
                margin: 20px 0;
            }

            .table thead tr {
                background-color: #4CAF50;
                color: white;
            }

            .table th,
            .table td {
                padding: 15px;
                text-align: center;
                border-bottom: 1px solid #eee;
            }

            .table tbody tr {
                background-color: #ffffff;
                border-bottom: 1px solid #ddd;
                transition: background-color 0.3s ease;
            }

            .table tbody tr:hover {
                background-color: #f5f5f5;
            }

            .table tbody tr:nth-of-type(even) {
                background-color: #f9f9f9;
            }

            .room-image {
                width: 100px;
                height: 60px;
                object-fit: cover;
                border-radius: 8px;
                transition: transform 0.3s ease;
            }

            .room-image:hover {
                transform: scale(1.1);
            }

            .user-icons {
                display: flex;
                justify-content: center;
                gap: 5px;
            }

            .user-icons i {
                color: #666;
                font-size: 16px;
            }

            /* Action Buttons */
            .action-buttons {
                display: flex;
                justify-content: center;
                margin-top: 30px;
                padding-top: 20px;
                border-top: 2px solid #f0f0f0;
            }

            .action-buttons form {
                display: flex;
                gap: 20px;
            }

            .button {
                padding: 12px 30px;
                border-radius: 8px;
                font-size: 16px;
                font-weight: 600;
                cursor: pointer;
                transition: all 0.3s ease;
            }

            .button:hover {
                transform: translateY(-2px);
            }

            .accept {
                background-color: #4CAF50;
                color: white;
                border: none;
            }

            .accept:hover {
                background-color: #388E3C;
            }

            .deny {
                background-color: #FF6666;
                color: white;
                border: none;
            }

            .deny:hover {
                background-color: #FF4D4D;
            }

            /* Overlay Styles */
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

            .highlight-email {
                font-weight: bold;
                font-size: 20px;
            }
            h2 {
                font-size: 22px;
                color: #388e3c;
                margin-bottom: 20px;
                font-weight: 600;
            }

            @media (max-width: 992px) {
                .main-container {
                    padding: 10px;
                }

                .info-section {
                    padding: 20px;
                }
            }

            @media (max-width: 768px) {
                .customer-info-grid {
                    grid-template-columns: 1fr;
                }

                .action-buttons form {
                    flex-direction: column;
                    width: 100%;
                }

                .button {
                    width: 100%;
                }

                .section-title {
                    flex-direction: column;
                    text-align: center;
                }

                .section-title i {
                    margin-right: 0;
                    margin-bottom: 10px;
                }

                nav {
                    width: 60px;
                }

                nav:hover {
                    width: 200px;
                }

                .logo img {
                    width: 40px;
                    height: 40px;
                }

                .table {
                    font-size: 14px;
                }

                .room-image {
                    width: 80px;
                    height: 50px;
                }
            }

            @media (max-width: 480px) {
                .main {
                    padding: 10px;
                }

                .info-section {
                    padding: 15px;
                }

                .table th,
                .table td {
                    padding: 10px;
                }

                .button {
                    padding: 10px 20px;
                    font-size: 14px;
                }
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

            .booking-section {
                margin: 30px 0;
            }

            .booking-section .info-box i {
                font-size: 24px;
                color: #4CAF50;
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
                    <li><a href="PartnerHistoryServlet" class="<%= request.getRequestURI().contains("partnerHistoryDetail.jsp") ? "active" : ""%>">
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
                    <li><a href="javascript:history.back()">
                            <i class='bx bx-arrow-back' ></i>
                            <span style="margin-bottom: 20px" class="nav-item">Trở lại</span>
                        </a></li>
                    <li><a href="LogoutServlet" class="logout">
                            <i class='bx bx-log-out'></i>
                            <span style="margin-bottom: 22px" class="nav-item">Đăng xuất</span>
                        </a></li>
                </ul>
            </nav>
            <section class="main">
                <div class="main-container">
                    <!-- thông tin khách hàng -->
                    <div class="info-section customer-section">
                        <div class="section-title">
                            <i class='bx bxs-user-detail'></i>
                            <h1>THÔNG TIN KHÁCH ĐẶT</h1>
                        </div>
                        <div class="customer-info-grid">
                            <div class="info-box">
                                <i class='bx bxs-id-card'></i>
                                <div class="info-content">
                                    <div class="info-label">ID Tài khoản</div>
                                    <div class="info-value">${user.acc_id}</div>
                                </div>
                            </div>

                            <div class="info-box">
                                <i class='bx bxs-user'></i>
                                <div class="info-content">
                                    <div class="info-label">Họ và tên</div>
                                    <div class="info-value">${user.acc_fullname}</div>
                                </div>
                            </div>

                            <div class="info-box">
                                <i class='bx bxs-phone'></i>
                                <div class="info-content">
                                    <div class="info-label">Số điện thoại</div>
                                    <div class="info-value">${user.acc_phone}</div>
                                </div>
                            </div>

                            <div class="info-box">
                                <i class='bx bxs-envelope'></i>
                                <div class="info-content">
                                    <div class="info-label">Email</div>
                                    <div class="info-value">${user.acc_email}</div>
                                </div>
                            </div>



                            <div class="info-box">
                                <i class='bx bxs-calendar'></i>
                                <div class="info-content">
                                    <div class="info-label">Ngày sinh</div>
                                    <div class="info-value">${user.acc_dob}</div>
                                </div>
                            </div>

                            <div class="info-box">
                                <i class='bx bxs-user-detail'></i>
                                <div class="info-content">
                                    <div class="info-label">Giới tính</div>
                                    <div class="info-value">
                                        <c:choose>
                                            <c:when test="${user.acc_gender eq 'Male'}">Nam</c:when>
                                            <c:when test="${user.acc_gender eq 'Female'}">Nữ</c:when>
                                            <c:otherwise>${user.acc_gender}</c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- thông tin đơn phòng -->
                    <div class="info-section booking-section">
                        <div class="section-title">
                            <i class='bx bxs-calendar'></i>
                            <h1>THÔNG TIN ĐƠN PHÒNG</h1>
                        </div>
                        <div class="customer-info-grid">
                            <div class="info-box">
                                <i class='bx bxs-calendar'></i>
                                <div class="info-content">
                                    <div class="info-label">Ngày đặt</div>
                                    <div class="info-value">${booking.booking_date}</div>
                                </div>
                            </div>

                            <div class="info-box">
                                <i class='bx bxs-calendar-check'></i>
                                <div class="info-content">
                                    <div class="info-label">Ngày check-in</div>
                                    <div class="info-value"><fmt:formatDate value="${booking.booking_checkIn}" pattern="dd-MM-yyyy"/></div>
                                </div>
                            </div>

                            <div class="info-box">
                                <i class='bx bxs-calendar-x'></i>
                                <div class="info-content">
                                    <div class="info-label">Ngày check-out</div>
                                    <div class="info-value"><fmt:formatDate value="${booking.booking_checkOut}" pattern="dd-MM-yyyy"/></div>
                                </div>
                            </div>

                            <div class="info-box">
                                <i class='bx bxs-credit-card'></i>
                                <div class="info-content">
                                    <div class="info-label">Tổng tiền</div>
                                    <div class="info-value">
                                        <fmt:formatNumber value="${booking.booking_total}" type="number" pattern="#,##0"/> VND
                                    </div>
                                </div>
                            </div>

                            <div class="info-box">
                                <i class='bx bxs-message-square-detail'></i>
                                <div class="info-content">
                                    <div class="info-label">Ghi chú</div>
                                    <div class="info-value">${booking.booking_note}</div>
                                </div>
                            </div>

                            <div class="info-box">
                                <i class='bx bxs-check-circle'></i>
                                <div class="info-content">
                                    <div class="info-label">Trạng thái</div>
                                    <div class="info-value">
                                        <c:choose>
                                            <c:when test="${booking.bookingStatus eq 'pending'}">
                                                <span class="badge bg-load">Đang xử lí</span>
                                            </c:when>
                                            <c:when test="${booking.bookingStatus eq 'denied'}">
                                                <span class="badge bg-warning">Từ chối</span>
                                            </c:when>
                                            <c:when test="${booking.bookingStatus eq 'accept'}">
                                                <span class="badge bg-success">Chấp nhận</span>
                                            </c:when>
                                            <c:when test="${booking.bookingStatus eq 'finish'}">
                                                <span class="badge bg-success">Thành công</span>
                                            </c:when>
                                            <c:when test="${booking.bookingStatus eq 'refund'}">
                                                <span class="badge bg-load">Hoàn tiền</span>
                                            </c:when>
                                            <c:when test="${booking.bookingStatus eq 'cancel'}">
                                                <span class="badge bg-warning">Huỷ bỏ</span>
                                            </c:when>
                                        </c:choose>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- thông tin phòng -->
                    <div class="info-section room-section">
                        <div class="section-title">
                            <i class='bx bxs-building-house'></i>
                            <h1>THÔNG TIN PHÒNG</h1>
                        </div>
                        <div class="room-info">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Phòng</th>
                                        <th>Ảnh</th>
                                        <th>Giá</th>
                                        <th>Số người</th>
                                        <th>Số lượng</th>
                                        <th>Kiểm tra số lượng phòng</th>
                                    </tr>
                                </thead>
                                <tbody>   
                                    <c:forEach items="${rooms}" var="r">                                   
                                        <tr>
                                            <td>${r.room_id}</td>
                                            <td>${r.room_name}</td>
                                            <td>
                                                <c:if test="${not empty r.room_img}">
                                                    <img class="room-image" src="${r.room_img}" alt="${r.room_name}" onerror="this.style.display='none'"/>
                                                </c:if>
                                            </td>
                                            <td>${r.room_price} VND</td>
                                            <td>
                                                <div class="user-icons">
                                                    <c:forEach begin="1" end="${r.numPeople}">
                                                        <i class="fas fa-user"></i>
                                                    </c:forEach>
                                                </div>
                                            </td>
                                            <td>${r.quantity}</td>  
                                            <fmt:formatDate value="${booking.booking_checkIn}" pattern="dd-MM-yyyy" var="formattedDateIn"/>
                                            <fmt:formatDate value="${booking.booking_checkOut}" pattern="dd-MM-yyyy" var="formattedDateOut"/>
                                            <td>
                                                <a class="view-button" 
                                                   href="manageroom?hotelId=${sessionScope.hotel.hotel_id}&roomType=${r.room_id}&fromDate=${formattedDateIn}&toDate=${formattedDateOut}">
                                                    Kiểm tra
                                                </a>
                                            </td>
                                        </tr>   
                                    </c:forEach>
                                </tbody>                          
                            </table>
                        </div>
                        <c:if test="${bookingStatus eq 'pending'}">
                            <div class="action-buttons">
                                <form action="status-update" method="post">
                                    <input type="hidden" name="id" value="${bookingId}">
                                    <input type="hidden" name="hotelId" value=${sessionScope.hotel.hotel_id}>
                                    <button type="submit" class="button accept" name="action" value="accept">Chấp nhận đơn này</button>
                                    <button type="submit" class="button deny" name="action" value="deny">Từ chối đơn này</button>
                                </form>
                            </div>
                        </c:if>
                    </div>
                </div>
            </section>

        </div>
        <script>
            var yesButton = document.querySelector('.yes');
            var noButton = document.querySelector('.no');

            yesButton.addEventListener('mouseenter', function () {
                yesButton.style.backgroundColor = '#388E3C';
                yesButton.style.transform = 'translateY(-2px)';
            });

            yesButton.addEventListener('mouseleave', function () {
                yesButton.style.backgroundColor = '#4CAF50';
                yesButton.style.transform = 'none';
            });

            noButton.addEventListener('mouseenter', function () {
                noButton.style.backgroundColor = '#FF4D4D';
                noButton.style.transform = 'translateY(-2px)';
            });

            noButton.addEventListener('mouseleave', function () {
                noButton.style.backgroundColor = '#FF6666';
                noButton.style.transform = 'none';
            });
        </script>        
    </body>
</html>