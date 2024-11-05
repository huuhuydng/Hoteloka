<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <title>User Settings</title>
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
                padding: 20px;
                width: 100%;
            }

            .user {
                margin-top: 20px;
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
                background-color: #e0ffe0; /* Lighter green background on hover */
            }

            .user-info h2 {
                grid-column: span 2;
                font-size: 30px;
                font-weight: 600;
                color: #28a745; /* Green heading */
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

            .info-value{
                margin: 0;
                color: #777;
                font-size: 14px;
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

            .feedback-section {
                max-width: 1200px;
                margin: 0 auto;
            }

            .feedback-header {
                background: white;
                padding: 2.5rem;
                border-radius: 20px;
                margin-bottom: 2.5rem;
                box-shadow: 0 4px 20px rgba(0,0,0,0.08);
                transition: transform 0.3s ease;
            }

            .feedback-header:hover {
                transform: translateY(-5px);
            }

            .feedback-header h1 {
                color: #2c3e50;
                font-size: 2rem;
                margin-bottom: 2rem;
                text-align: center;
                font-weight: 600;
                position: relative;
                padding-bottom: 15px;
            }

            .feedback-header h1:after {
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

            .feedback-stats {
                display: flex;
                justify-content: space-between;
                align-items: center;
                gap: 3rem;
                padding: 0 1rem;
            }

            .stat-item {
                text-align: center;
                padding: 1.5rem;
                background: #f8f9fa;
                border-radius: 15px;
                min-width: 150px;
                transition: all 0.3s ease;
            }

            .stat-item:hover {
                background: #e8f5e9;
                transform: translateY(-5px);
            }

            .stat-value {
                font-size: 2.8rem;
                font-weight: bold;
                color: #28a745;
                display: block;
                margin-bottom: 0.5rem;
            }

            .stat-label {
                color: #6c757d;
                font-size: 1rem;
                font-weight: 500;
            }

            .rating-bars {
                flex: 1;
                max-width: 500px;
                padding: 1.5rem;
                background: #fff;
                border-radius: 15px;
                box-shadow: 0 2px 15px rgba(0,0,0,0.05);
            }

            .rating-bar {
                display: flex;
                align-items: center;
                gap: 1rem;
                margin-bottom: 1rem;
                padding: 0.5rem 0;
            }

            .bar-container {
                flex: 1;
                height: 10px;
                background: #e9ecef;
                border-radius: 5px;
                overflow: hidden;
            }

            .bar {
                height: 100%;
                background: linear-gradient(to right, #28a745, #34d058);
                border-radius: 5px;
                transition: width 0.8s ease-in-out;
            }

            .feedback-list {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
                gap: 2rem;
                padding: 1rem 0;
            }

            .feedback-card {
                background: white;
                border-radius: 20px;
                padding: 2rem;
                box-shadow: 0 4px 15px rgba(0,0,0,0.05);
                transition: all 0.3s ease;
                border: 1px solid rgba(0,0,0,0.05);
            }

            .feedback-card:hover {
                transform: translateY(-8px);
                box-shadow: 0 8px 25px rgba(0,0,0,0.1);
            }

            .feedback-top {
                display: flex;
                justify-content: space-between;
                align-items: flex-start;
                margin-bottom: 1.5rem;
            }

            .user-info {
                display: flex;
                align-items: center;
                gap: 1rem;
            }

            .user-avatar {
                width: 50px;
                height: 50px;
                background: linear-gradient(45deg, #28a745, #34d058);
                color: white;
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                font-size: 1.4rem;
                font-weight: bold;
                box-shadow: 0 4px 10px rgba(40, 167, 69, 0.3);
            }

            .user-details h3 {
                margin: 0;
                font-size: 1.1rem;
                color: #2c3e50;
                font-weight: 600;
            }

            .feedback-date {
                color: #6c757d;
                font-size: 0.9rem;
                margin-top: 4px;
                display: block;
            }

            .rating {
                color: #ffd700;
                font-size: 1.4rem;
                letter-spacing: 2px;
            }

            .star {
                color: #e4e5e9;
                transition: color 0.3s ease;
            }

            .star.filled {
                color: #ffd700;
            }

            .feedback-content {
                margin: 1.5rem 0;
                color: #4a5568;
                line-height: 1.8;
                font-size: 1rem;
            }

            .feedback-meta {
                border-top: 1px solid #edf2f7;
                padding-top: 1rem;
                margin-top: 1rem;
                font-size: 0.9rem;
                color: #718096;
            }

            @media (max-width: 1200px) {
                .main {
                    padding: 2rem;
                }

                .feedback-stats {
                    flex-direction: column;
                    gap: 2rem;
                }

                .rating-bars {
                    width: 100%;
                }
            }

            @media (max-width: 768px) {
                .main {
                    padding: 1.5rem;
                }

                .feedback-header {
                    padding: 1.5rem;
                }

                .feedback-list {
                    grid-template-columns: 1fr;
                }

                .stat-item {
                    min-width: 100%;
                }
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
            .feedback-actions {
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding-top: 1rem;
                border-top: 1px solid #edf2f7;
                margin-top: 1rem;
            }

            .feedback-meta {
                border-top: none;
                padding-top: 0;
                margin-top: 0;
            }

            .report-btn {
                display: flex;
                align-items: center;
                gap: 5px;
                padding: 8px 15px;
                background-color: #fff;
                border: 1px solid #dc3545;
                color: #dc3545;
                border-radius: 8px;
                font-size: 0.9rem;
                cursor: pointer;
                transition: all 0.3s ease;
            }

            .report-btn:hover {
                background-color: #dc3545;
                color: #fff;
            }

            .report-btn i {
                font-size: 1.1rem;
            }

            /* Popup styles */
            .report-popup {
                display: none;
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(0, 0, 0, 0.5);
                z-index: 1000;
                justify-content: center;
                align-items: center;
            }

            .report-popup-content {
                background-color: #fff;
                padding: 2rem;
                border-radius: 15px;
                width: 90%;
                max-width: 500px;
                box-shadow: 0 5px 20px rgba(0, 0, 0, 0.15);
            }

            .report-popup h2 {
                color: #2c3e50;
                margin-bottom: 1.5rem;
                font-size: 1.5rem;
                text-align: center;
            }

            .report-form textarea {
                width: 100%;
                padding: 1rem;
                border: 1px solid #ddd;
                border-radius: 8px;
                margin-bottom: 1rem;
                resize: vertical;
                min-height: 100px;
            }

            .report-form-buttons {
                display: flex;
                justify-content: flex-end;
                gap: 1rem;
            }

            .report-form-buttons button {
                padding: 8px 20px;
                border-radius: 8px;
                cursor: pointer;
                transition: all 0.3s ease;
            }

            .submit-report {
                background-color: #dc3545;
                color: white;
                border: none;
            }

            .submit-report:hover {
                background-color: #c82333;
            }

            .cancel-report {
                background-color: #6c757d;
                color: white;
                border: none;
            }

            .cancel-report:hover {
                background-color: #5a6268;
            }
        </style>
    </head>
    <body>
        <c:if test="${sessionScope.account == null}">
            <script>
                window.location.href = "login.jsp";
            </script>
        </c:if>
        <c:if test="${sessionScope.account.acc_type eq 0}">
            <script>
                window.location.href = "adminInfo.jsp";
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
                <section class="feedback-section">
                    <div class="feedback-header">
                        <h1>Phản hồi từ khách hàng</h1>
                        <div class="feedback-stats">
                            <div class="stat-item">
                                <span class="stat-value">${feedbackStats.averageRating}</span>
                                <span class="stat-label">Đánh giá trung bình</span>
                            </div>
                            <div class="rating-bars">
                                <c:forEach var="i" begin="1" end="5" step="1">
                                    <div class="rating-bar">
                                        <span>${i}★</span>
                                        <div class="bar-container">
                                            <div class="bar" style="width: ${feedbackStats.getRatingPercentage(i)}%"></div>
                                        </div>
                                        <span>${feedbackStats.getRatingPercentage(i)}%</span>
                                    </div>
                                </c:forEach>
                            </div>
                            <div class="stat-item">
                                <span class="stat-value">${feedbackStats.totalFeedbacks}</span>
                                <span class="stat-label">Tổng số đánh giá</span>
                            </div>
                        </div>
                    </div>

                    <div class="feedback-list">
                        <c:forEach items="${feedback}" var="feedback">
                            <div class="feedback-card">
                                <div class="feedback-top">
                                    <div class="feedback-user-info">
                                        <div class="user-avatar">
                                            ${feedback.feedback_name.charAt(0)}
                                        </div>
                                        <div class="user-details">
                                            <h3>${feedback.feedback_name}</h3>
                                            <span class="feedback-date">
                                                <fmt:formatDate value="${feedback.feedback_day}" pattern="dd/MM/yyyy"/>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="rating">
                                        <c:forEach begin="1" end="5" var="star">
                                            <span class="${star <= feedback.feedback_rating ? 'star filled' : 'star'}">★</span>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div class="feedback-content">
                                    <p>${feedback.comment}</p>
                                </div>
                                <div class="feedback-actions">
                                    <div class="feedback-meta">
                                        <span class="booking-id">Booking ID: ${feedback.booking_id}</span>
                                    </div>
                                    <button class="report-btn" onclick="showReportPopup(${feedback.booking_id})">
                                        <i class='bx bx-flag'></i>
                                        Báo cáo
                                    </button>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </section>
                <div id="reportPopup" class="report-popup">
                    <div class="report-popup-content">
                        <h2>Báo cáo đánh giá</h2>
                        <form class="report-form" onsubmit="submitReport(event)">
                            <input type="hidden" id="reportFeedbackId" value="">
                            <textarea id="reportReason" placeholder="Nhập lý do báo cáo..." required></textarea>
                            <div class="report-form-buttons">
                                <button type="button" class="cancel-report" onclick="hideReportPopup()">Hủy</button>
                                <button type="submit" class="submit-report">Gửi báo cáo</button>
                            </div>
                        </form>
                    </div>
                </div>
            </section>
        </div>
        <script>
            function showReportPopup(feedbackId) {
                document.getElementById('reportPopup').style.display = 'flex';
                document.getElementById('reportFeedbackId').value = feedbackId;
            }

            function hideReportPopup() {
                document.getElementById('reportPopup').style.display = 'none';
            }

            function submitReport(event) {
                event.preventDefault();
                const feedbackId = document.getElementById('reportFeedbackId').value;
                const reason = document.getElementById('reportReason').value;

                // Gửi báo cáo đến server
                // Thay thế URL bên dưới bằng endpoint thực tế của bạn
                fetch('your-report-endpoint', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify({
                        feedbackId: feedbackId,
                        reason: reason
                    })
                })
                        .then(response => response.json())
                        .then(data => {
                            alert('Báo cáo đã được gửi thành công!');
                            hideReportPopup();
                        })
                        .catch(error => {
                            alert('Có lỗi xảy ra khi gửi báo cáo!');
                            console.error('Error:', error);
                        });
            }

            // Đóng popup khi click bên ngoài
            window.onclick = function (event) {
                if (event.target === document.getElementById('reportPopup')) {
                    hideReportPopup();
                }
            };
        </script>
    </body>
</html>