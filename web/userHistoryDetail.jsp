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

            nav {
                position: sticky;
                top: 0;
                bottom: 0;
                height: 100vh;
                left: 0;
                width: 90px;
                background: #fff;
                overflow: hidden;
                transition: width 1s;
            }

            nav:hover {
                width: 280px;
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
                width: 70px;
                height: 40px;
                top: 20px;
                font-size: 20px;
                text-align: center;
            }

            .nav-item {
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
                    <li><a href="#" class="logo">
                            <img src="images/logo.png">
                            <h5 class="nav-item">${sessionScope.account.acc_fullname}</h5>
                        </a></li>
                    <li><a href="userInfo.jsp">
                            <i class='bx bxs-user-detail'></i>
                            <span style="margin-bottom: 20px" class="nav-item">User Setting</span>
                        </a></li>
                    <li><a href="user-history" class="<%= request.getRequestURI().contains("userHistoryDetail.jsp") ? "active" : ""%>">
                            <i class='bx bxs-category' ></i>
                            <span style="margin-bottom: 20px" class="nav-item">Booking</span>
                        </a></li>
                    <li><a href="#">
                            <i class='bx bx-message-detail' ></i>
                            <span style="margin-bottom: 20px" class="nav-item">Message</span>
                        </a></li>
                    <li><a href="javascript:void(0);" onclick="showOverlay()">
                            <i class='bx bxs-group'></i>
                            <span style="margin-bottom: 20px" class="nav-item">Become Partner</span>
                        </a></li>
                    <li><a href="javascript:history.back()">
                            <i class='bx bx-arrow-back' ></i>
                            <span style="margin-bottom: 20px" class="nav-item">Return</span>
                        </a></li>
                    <li><a href="LogoutServlet" class="logout">
                            <i class='bx bx-log-out'></i>
                            <span style="margin-bottom: 22px" class="nav-item">Log out</span>
                        </a></li>
                </ul>
            </nav>
            <section class="main">
                <section class="history-detail">
                    <div class="history-detail">
                        <h1>Room Detail</h1>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Room</th>
                                    <th>Image</th>
                                    <th>Price</th>
                                    <th>Capacity</th>
                                    <th>Quantity</th>
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
                                    </tr>   
                                </c:forEach>
                            </tbody>                          
                        </table>
                    </div>
                </section>
            </section>
        </div>
        <div class="overlay" id="overlay">
            <div class="popup">
                <h2>Do you want to become our Partner ?</h2>
                <p class="highlight-email">${sessionScope.account.acc_fullname}</p>
                <div class="action-buttons">
                    <form action="hotelInputInfo.jsp">
                        <button type="submit" class="yes" onclick="showOverlay()">Yes</button>
                    </form>
                    <form action="user-history" method="get">
                        <button type="submit" class="no" onclick="showOverlay()">No</button>
                    </form>
                </div>
            </div>
        </div>

        <script>
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
                alert('Thank you for becoming our partner!');
            }
        </script>
    </body>
</html>