<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Quản lý Khách sạn - ${hotel.hotel_name}</title>
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
            }

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
                background-color: var(--background-color);
                color: var(--text-color);
                display: flex;
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
                background-color: #e0ffe0;
                color: #28a745;
                border-radius: 30px;
            }

            nav ul li a:hover i {
                color: #28a745;
            }

            .logout {
                position: absolute;
                bottom: 0;
            }

            .container {
                display: flex;
                width: 100%;
                max-width: 100%;
            }
            .main {
                flex: 1;
                padding: 20px 40px;
                width: calc(100% - 90px);
                max-width: none;
            }

            .main-content {
                max-width: 1400px; /* Tăng max-width lên */
                margin: 0 auto;
                padding: 20px;
            }

            /* Điều chỉnh grid ảnh */
            .image-container {
                display: grid;
                grid-template-columns: repeat(3, 1fr);
                gap: 25px;
            }

            /* Tăng kích thước ảnh */
            .hotel-image {
                width: 100%;
                height: 400px;
                object-fit: cover;
            }

            .detail-image {
                width: 100%;
                height: 300px;
                object-fit: cover;
            }

            /* Responsive */
            @media (max-width: 1600px) {
                .main-content {
                    max-width: 1200px;
                }
            }

            @media (max-width: 1200px) {
                .image-container {
                    grid-template-columns: repeat(2, 1fr);
                }
            }

            @media (max-width: 768px) {
                .image-container {
                    grid-template-columns: 1fr;
                }

                .main {
                    padding: 20px;
                }
            }

            .management-panel {
                background-color: var(--card-background);
                border-radius: 15px;
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
                padding: 2rem;
            }

            h1 {
                color: var(--primary-color);
                text-align: center;
                font-size: 2.5rem;
                margin-bottom: 1rem;
                font-weight: 700;
            }

            h2 {
                color: var(--secondary-color);
                font-size: 1.8rem;
                margin-bottom: 0.5rem;
            }

            .hotel-info {
                text-align: center;
                margin-bottom: 2rem;
                padding-bottom: 1rem;
                border-bottom: 2px solid var(--primary-color);
            }

            .hotel-stars {
                color: #f1c40f;
                font-size: 1.2rem;
                margin: 0.5rem 0;
            }

            .hotel-address {
                color: #7f8c8d;
                font-size: 1.1rem;
            }

            .section {
                background-color: #fff;
                border-radius: 10px;
                padding: 20px;
                margin-bottom: 30px;
                box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            }

            .section-header {
                display: flex;
                align-items: center;
                margin-bottom: 1.5rem;
            }

            .section-title {
                flex-grow: 1;
                display: flex;
                align-items: center;
                color: var(--primary-color);
                font-size: 20px;
                margin-bottom: 0;
            }

            .section-title i {
                margin-right: 10px;
                font-size: 1.8rem;
            }

            .edit-icon {
                color: var(--primary-color);
                font-size: 1.2rem;
                cursor: pointer;
                transition: color 0.3s ease;
                margin-left: 10px;
            }

            .edit-icon:hover {
                color: var(--secondary-color);
            }

            .hotel-images {
                display: flex;
                flex-wrap: wrap;
                gap: 1rem;
            }

            .hotel-image {
                width: 350px;
                height: 250px;
                object-fit: cover;
                border-radius: 8px;
            }

            .room-image {
                width: 150px;
                height: 110px;
                object-fit: cover;
                border-radius: 5px;
            }

            .services-list {
                display: flex;
                flex-wrap: wrap;
                gap: 1rem;
            }

            .service-item {
                background-color: gainsboro;
                padding: 0.5rem 1rem;
                border-radius: 20px;
                font-size: 14px;
            }

            .policies {
                margin-top: 1rem;
            }

            .policy-item {
                margin-bottom: 1rem;
            }

            .policy-item h4 {
                color: var(--secondary-color);
                margin-bottom: 0.5rem;
            }

            .rooms-table {
                width: 100%;
                border-collapse: collapse;
            }

            .rooms-table th, .rooms-table td {
                padding: 15px 20px;
                text-align: left;
                border-bottom: 1px solid var(--border-color);
                font-size: 15px;
            }

            .rooms-table th {
                background-color: var(--primary-color);
                color: white;
            }

            .action-buttons {
                display: flex;
                justify-content: space-around;
                margin-top: 2rem;
            }

            .btn-danger {
                background-color: var(--accent-color);
                color: white;
                border: none;
                padding: 10px 20px;
                border-radius: 5px;
                cursor: pointer;
                font-size: 14px;
                transition: all 0.3s ease;
            }

            .btn-normal {
                background-color: #28a745;
                color: white;
                border: none;
                padding: 10px 20px;
                border-radius: 5px;
                cursor: pointer;
                font-size: 14px;
                transition: all 0.3s ease;
            }

            .btn-danger:hover, .btn-normal:hover {
                opacity: 0.9;
                transform: translateY(-2px);
            }

            .image-section {
                margin-bottom: 2rem;
            }

            .image-container {
                display: flex;
                flex-wrap: wrap;
                gap: 1rem;
            }

            .cover-image-container {
                width: 100%;
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



        </style>
    </head>
    <body>
        <div class="container">
            <nav>
                <ul>
                    <li><a href="home" class="logo">
                            <img src="images/logo.png">
                            <h5 class="nav-item">${sessionScope.account.acc_fullname}</h5>
                        </a></li>                      
                    <li><a href="adimInfo.jsp" >
                            <i class='bx bxs-user-detail'></i>
                            <span style="margin-bottom: 20px" class="nav-item">Thông tin tài khoản</span>
                        </a></li>
                    <li><a href="hotel-approve" class="<%= request.getRequestURI().contains("adminHotelDetail.jsp") ? "active" : ""%>">
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
                    <li><a href="javascript:history.back()">
                            <i class='bx bx-arrow-back'></i>
                            <span style="margin-bottom: 20px" class="nav-item">Trở lại</span>
                        </a></li>
                    <li><a href="LogoutServlet" class="logout">
                            <i class='bx bx-log-out'></i>
                            <span style="margin-bottom: 22px" class="nav-item">Đăng xuất</span>
                        </a></li>
                </ul>
            </nav>  

            <section class="main">
                <section class="main-content">
                    <div class="hotel-info">
                        <h1>${hotel.hotel_name}</h1>
                        <div class="hotel-stars">
                            <c:forEach begin="1" end="${hotel.hotel_star}">&#9733;</c:forEach>
                            </div>
                            <p class="hotel-address">
                            <c:if test="${not empty hotel.hotel_street}">${hotel.hotel_street}, </c:if>
                            <c:if test="${not empty hotel.hotel_ward}">${hotel.hotel_ward}, </c:if>
                            <c:if test="${not empty hotel.hotel_district}">${hotel.hotel_district}, </c:if>
                            <c:if test="${not empty hotel.hotel_city}">${hotel.hotel_city}</c:if>
                            </p>
                        </div>

                        <div class="section image-section">
                            <div class="section-header">
                                <h3 class="section-title"><i class="fas fa-image"></i>Ảnh bìa</h3>

                            </div>
                            <div class="cover-image-container">
                                <img src="${hotel.hotel_imagesGeneral}" alt="Ảnh bìa" class="hotel-image">
                        </div>
                    </div>

                    <div class="section image-section">
                        <div class="section-header">
                            <h3 class="section-title"><i class="fas fa-images"></i>Ảnh chi tiết khách sạn</h3>

                        </div>
                        <div class="image-container">
                            <c:forEach items="${hotel.imagesDetail}" var="image">
                                <img src="${image}" alt="Ảnh chi tiết" class="hotel-image">
                            </c:forEach>
                        </div>
                    </div>

                    <div class="section">
                        <div class="section-header">
                            <h3 class="section-title"><i class="fas fa-info-circle"></i>Thông tin chung</h3>

                        </div>
                        <p><strong>Tên khách sạn:</strong> ${hotel.hotel_name}</p>
                        <p><strong>Loại khách sạn:</strong> ${hotel.type_name}</p>
                        <p><strong>Số sao:</strong> ${hotel.hotel_star}</p>
                        <p><strong>Mô tả:</strong> ${hotel.hotel_desc}</p>
                    </div>

                    <div class="section">
                        <div class="section-header">
                            <h3 class="section-title"><i class="fas fa-concierge-bell"></i>Dịch vụ</h3>

                        </div>
                        <div class="services-list">
                            <c:forEach var="service" items="${hotelServices}">
                                <span class="service-item">${service.service_name}</span>
                            </c:forEach>
                        </div>
                    </div>

                    <div class="section">
                        <div class="section-header">
                            <h3 class="section-title"><i class="fas fa-clipboard-list"></i>Chính sách khách sạn</h3>

                        </div>
                        <div class="policies">
                            <c:set var="policies" value="${fn:split(hotel.hotel_policy, ';')}" />
                            <c:if test="${not empty fn:trim(policies[0])}">
                                <div class="policy-item">
                                    <h4>Dịch vụ</h4>
                                    <p>${fn:replace(policies[0], '-', '<br>-')}</p>
                                </div>
                            </c:if>
                            <c:if test="${not empty fn:trim(policies[1])}">
                                <div class="policy-item">
                                    <h4>Chính sách nhận trả phòng</h4>
                                    <p>${fn:replace(policies[1], '-', '<br>-')}</p>
                                </div>
                            </c:if>
                            <c:if test="${not empty fn:trim(policies[2])}">
                                <div class="policy-item">
                                    <h4>Chính sách trẻ em</h4>
                                    <p>${fn:replace(policies[2], '-', '<br>-')}</p>
                                </div>
                            </c:if>
                            <c:if test="${not empty fn:trim(policies[3])}">
                                <div class="policy-item">
                                    <h4>Chính sách hoàn hủy</h4>
                                    <p>${fn:replace(policies[3], '-', '<br>-')}</p>
                                </div>
                            </c:if>
                            <c:if test="${not empty fn:trim(policies[4])}">
                                <div class="policy-item">
                                    <h4>Ghi chú</h4>
                                    <p>${fn:replace(policies[4], '-', '<br>-')}</p>
                                </div>
                            </c:if>
                        </div>
                    </div>

                    <div class="section">
                        <div class="section-header">
                            <h3 class="section-title"><i class="fas fa-bed"></i>Thông tin phòng</h3>

                        </div>
                        <table class="rooms-table">
                            <thead>
                                <tr>
                                    <th>Ảnh</th>
                                    <th>Tên phòng</th>
                                    <th>Số người tối đa</th>
                                    <th>Giá/đêm</th>
                                    <th>Số lượng phòng</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${hotel.rooms}" var="room">
                                    <tr>
                                        <td><img src="${room.room_img}" alt="${room.room_name}" class="room-image"></td>
                                        <td>${room.room_name}</td>
                                        <td>
                                            <c:forEach begin="1" end="${room.numPeople}">
                                                <i class='bx bxs-user person-icon'></i>
                                            </c:forEach>
                                        </td>
                                        <td>${room.room_price} VNĐ</td>
                                        <td>${room.numRoom}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>

                    <div class="action-buttons">
                        <button type="button" class="btn btn-danger" onclick="confirmDeny()">
                            <i class='bx bxs-shield-x'></i> Từ chối duyệt
                        </button>
                        <button type="button" class="btn btn-normal" onclick="confirmApprove()">
                            <i class='bx bxs-check-shield'></i> Đồng ý duyệt
                        </button>
                    </div>                            
                </section>
            </section>
        </div>


        <div id="hotelNotification" class="notification" style="display: none;">
            <p>Đã duyệt khách sạn thành công!</p>
            <button onclick="closeNotification()">Đóng</button>
        </div>

        <script>

            function confirmDeny() {
                if (confirm("Bạn có chắc chắn muốn từ chối khách sạn ${hotel.hotel_name} hoạt động ở Hoteloka?")) {
                    window.location.href = "hotel-denied?id=${hotel.hotel_id}";
                }
            }

            function confirmApprove() {
                if (confirm("Bạn có chắc chắn muốn đồng ý cho khách sạn ${hotel.hotel_name} hoạt động bình thường ở Hoteloka?")) {
                    window.location.href = "AcceptHotel?id=${hotel.hotel_id}";
                }
            }

            function closeNotification() {
                document.getElementById('hotelNotification').style.display = 'none';
            }
        </script>
    </body>
</html>