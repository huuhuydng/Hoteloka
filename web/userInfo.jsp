<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

            .info-item p {
                margin: 0;
                color: #777;
                font-size: 14px;
            }
            
            .info-value{
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

            .action-buttons form {
                flex: 1;
                display: flex;
                justify-content: center;
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
                background-color: #ff6666; /* Màu đỏ cho nút No */
                color: #fff;
            }

            .action-buttons .no:hover {
                background-color: #ff4d4d; /* Màu đỏ nhạt hơn khi hover */
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

            .notification {
                position: fixed;
                top: 20px;
                right: 20px;
                background-color: #4CAF50;
                color: white;
                padding: 15px;
                border-radius: 5px;
                box-shadow: 0 2px 4px rgba(0,0,0,0.2);
                z-index: 1000;
            }
            .notification button {
                background-color: #45a049;
                border: none;
                color: white;
                padding: 5px 10px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 14px;
                margin-top: 10px;
                cursor: pointer;
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
        <c:if test="${sessionScope.account.acc_type eq 1}">
            <script>
                window.location.href = "partnerInfo.jsp";
            </script>
        </c:if>

        <div class="container">
            <nav>
                <ul>
                    <li><a href="home" class="logo">
                            <img src="images/logo.png">
                            <h5 class="nav-item">${sessionScope.account.acc_fullname}</h5>
                        </a></li>
                    <li><a href="userInfo.jsp" class="<%= request.getRequestURI().contains("userInfo.jsp") ? "active" : ""%>">
                            <i class='bx bxs-user-detail'></i>
                            <span style="margin-bottom: 20px" class="nav-item">Thông tin tài khoản</span>
                        </a></li>
                    <li><a href="user-history">
                            <i class='bx bxs-category'></i>
                            <span style="margin-bottom: 20px" class="nav-item">Đơn phòng</span>
                        </a></li>
                    <li><a href="#">
                            <i class='bx bx-message-detail'></i>
                            <span style="margin-bottom: 20px" class="nav-item">Tin nhắn</span>
                        </a></li>
                    <li><a href="javascript:void(0);" onclick="showOverlay()">
                            <i class='bx bxs-group'></i>
                            <span style="margin-bottom: 20px" class="nav-item">Đăng kí khách sạn</span>
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
                <section class="user">
                    <div class="user-list">
                        <div class="user-info">
                            <h2>THÔNG TIN TÀI KHOẢN</h2>
                            <div class="info-item">
                                <label>Họ tên</label>
                                <p>${sessionScope.account.acc_fullname}</p>
                            </div>
                            <div class="info-item">
                                <label>Giới tính</label>
                                <div class="info-value">
                                    <c:choose>
                                        <c:when test="${sessionScope.account.acc_gender eq 'Male'}">Nam</c:when>
                                        <c:when test="${sessionScope.account.acc_gender eq 'Female'}">Nữ</c:when>
                                        <c:otherwise>${sessionScope.account.acc_gender}</c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                            <div class="info-item">
                                <label>Email</label>
                                <p>${sessionScope.account.acc_email}</p>

                            </div>
                            <div class="info-item">
                                <label>Ngày sinh</label>
                                <p>${sessionScope.account.acc_dob}</p>
                            </div>
                            <div class="info-item">
                                <label>Điện thoại</label>
                                <p>${sessionScope.account.acc_phone}</p>
                            </div>
                            <div class="info-item">
                                <label>Mật khẩu</label>
                                <p>*********</p>
                            </div>
                        </div>
                        <div class="action-buttons">
                            <form action="updateUser.jsp">
                                <button type="submit" class="update">Cập nhật thông tin</button>
                            </form>
                            <form action="confirmDelete.jsp">
                                <button type="submit" class="delete">Xoá tài khoản</button>
                            </form>
                        </div>
                    </div>
                </section>
            </section>
        </div>
        <!--Overlay for Become Partner Confirmation-->
        <div class="overlay" id="overlay">
            <div class="popup">
                <h2>BẠN CÓ MUỐN TRỞ THÀNH ĐỐI TÁC CỦA CHÚNG TÔI KHÔNG?</h2>
                <p class="highlight-email">${sessionScope.account.acc_fullname}</p>
                <div class="action-buttons">
                    <form action="addhotel">
                        <button type="submit" class="yes" onclick="showOverlay()">CÓ</button>
                    </form>
                    <form action="userInfo.jsp" method="get">
                        <button type="submit" class="no" onclick="showOverlay()">KHÔNG, CẢM ƠN</button>
                    </form>
                </div>
            </div>
        </div>

        <div id="hotelNotification" class="notification" style="display: none;">
            <p>Đã thêm khách sạn thành công! Chúc mừng bạn đã trở thành một đối tác của chúng tôi, bạn có thể quản lý khách sạn của mình ở Profile</p>
            <button onclick="closeNotification()">Đóng</button>
        </div>

        <script>
            function showNotification() {
                document.getElementById('hotelNotification').style.display = 'block';
            }

            function closeNotification() {
                document.getElementById('hotelNotification').style.display = 'none';
            }

            // Kiểm tra xem có thông báo đặt phòng thành công không
            <% if (session.getAttribute("hotelSuccess") != null && (Boolean) session.getAttribute("hotelSuccess")) { %>
            showNotification();
            <% session.removeAttribute("hotelSuccess"); %>
            <% }%>

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
                alert('Cảm ơn vì đã trở thành đối tác của chúng tôi!');
            }
        </script>
    </body>
</html>