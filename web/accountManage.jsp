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

            .user-list {
                background: white;
                border-radius: 20px;
                padding: 2.5rem;
                box-shadow: 0 4px 20px rgba(0,0,0,0.08);
                transition: all 0.3s ease;
            }

            /* Header Styles */
            .user-list h1 {
                font-size: 2rem;
                font-weight: 600;
                text-align: center;
                margin-bottom: 2rem;
                color: #2c3e50;
                position: relative;
                padding-bottom: 15px;
            }

            .user-list h1:after {
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

            /* Back Link */
            .back-link {
                display: inline-flex;
                align-items: center;
                color: #666;
                font-size: 1rem;
                margin-bottom: 1.5rem;
                transition: color 0.3s ease;
            }

            .back-link i {
                margin-right: 0.5rem;
                font-size: 1.2rem;
            }

            .back-link:hover {
                color: #28a745;
            }

            .search {
                margin-bottom: 2rem;
                padding: 1.5rem;
                background: #fff;
                border-radius: 15px;
                box-shadow: 0 2px 10px rgba(0,0,0,0.05);
            }

            .search form {
                display: flex;
                gap: 1.2rem;
                justify-content: center;
                align-items: center;
            }

            /* Custom Select Styling */
            .search select {
                appearance: none;
                -webkit-appearance: none;
                -moz-appearance: none;
                padding: 0.8rem 2.5rem 0.8rem 1rem;
                border-radius: 10px;
                border: 2px solid #e0e0e0;
                font-size: 0.95rem;
                background: white;
                min-width: 150px;
                cursor: pointer;
                color: #333;
                font-weight: 500;
                transition: all 0.3s ease;
                background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' viewBox='0 0 24 24' fill='none' stroke='%23333' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpath d='M6 9l6 6 6-6'/%3E%3C/svg%3E");
                background-repeat: no-repeat;
                background-position: right 0.8rem center;
                background-size: 1rem;
            }

            .search select:hover {
                border-color: #28a745;
                box-shadow: 0 2px 8px rgba(40, 167, 69, 0.1);
                transform: translateY(-1px);
            }

            .search select:focus {
                border-color: #28a745;
                box-shadow: 0 0 0 3px rgba(40, 167, 69, 0.15);
                outline: none;
            }

            /* Search Input Styling */
            .search input {
                padding: 0.8rem 1.2rem;
                border-radius: 10px;
                border: 2px solid #e0e0e0;
                font-size: 0.95rem;
                width: 300px;
                transition: all 0.3s ease;
            }

            .search input:hover {
                border-color: #28a745;
                box-shadow: 0 2px 8px rgba(40, 167, 69, 0.1);
                transform: translateY(-1px);
            }

            .search input:focus {
                border-color: #28a745;
                box-shadow: 0 0 0 3px rgba(40, 167, 69, 0.15);
                outline: none;
            }

            /* Search Button Styling */
            .search button {
                padding: 0.8rem 1.5rem;
                background: linear-gradient(45deg, #28a745, #34d058);
                color: white;
                border-radius: 10px;
                font-size: 0.95rem;
                cursor: pointer;
                transition: all 0.3s ease;
                display: flex;
                align-items: center;
                gap: 0.5rem;
            }

            .search button i {
                font-size: 1.2rem;
            }

            .search button:hover {
                transform: translateY(-2px);
                box-shadow: 0 4px 15px rgba(40, 167, 69, 0.3);
            }

            /* Custom Select Options Styling (when dropdown is open) */
            .search select option {
                padding: 1rem;
                background: white;
                color: #333;
                font-size: 0.95rem;
            }

            .search select option:hover,
            .search select option:focus {
                background-color: #e0ffe0;
            }

            /* Responsive Adjustments */
            @media (max-width: 768px) {
                .search form {
                    flex-direction: column;
                    align-items: stretch;
                }

                .search select,
                .search input,
                .search button {
                    width: 100%;
                    min-width: unset;
                }
            }

            /* Table Styles */
            table {
                width: 100%;
                border-collapse: separate;
                border-spacing: 0;
                margin: 1.5rem 0;
            }

            thead {
                background: linear-gradient(45deg, #28a745, #34d058);
            }

            th {
                color: white;
                font-weight: 600;
                padding: 1.2rem;
                font-size: 0.95rem;
                text-transform: uppercase;
                letter-spacing: 0.5px;
            }

            th:first-child {
                border-top-left-radius: 10px;
            }

            th:last-child {
                border-top-right-radius: 10px;
            }

            td {
                padding: 1rem;
                border-bottom: 1px solid #e9ecef;
                font-size: 0.95rem;
                color: #444;
            }

            tbody tr {
                transition: all 0.3s ease;
                background: white;
            }

            tbody tr:hover {
                background-color: #f8f9fa;
                transform: scale(1.01);
            }

            /* Action Buttons */
            .action-buttons {
                display: flex;
                gap: 0.5rem;
                justify-content: center;
            }

            .ban-button,
            .unban-button {
                padding: 0.6rem 1rem;
                border-radius: 30px;
                font-size: 0.85rem;
                font-weight: 500;
                cursor: pointer;
                transition: all 0.3s ease;
                text-transform: uppercase;
                letter-spacing: 0.5px;
            }

            .ban-button {
                background: linear-gradient(45deg, #dc3545, #ff4d4d);
                color: white;
            }

            .unban-button {
                background: linear-gradient(45deg, #28a745, #34d058);
                color: white;
            }

            .ban-button:hover,
            .unban-button:hover {
                transform: translateY(-2px);
                box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            }

            /* Pagination */
            .pagination {
                display: flex;
                justify-content: center;
                align-items: center;
                gap: 10px;
                margin-top: 2.5rem;
                padding: 1rem 0;
            }

            .pagination a {
                display: flex;
                align-items: center;
                justify-content: center;
                min-width: 45px;
                height: 45px;
                padding: 0.5rem 1rem;
                background: white;
                color: #444;
                font-weight: 500;
                font-size: 1rem;
                border-radius: 10px;
                border: 2px solid #e0ffe0;
                transition: all 0.3s ease;
                text-decoration: none;
                box-shadow: 0 2px 8px rgba(40, 167, 69, 0.1);
            }

            /* Previous/Next buttons */
            .pagination a:first-child,
            .pagination a:last-child {
                background: linear-gradient(45deg, #28a745, #34d058);
                color: white;
                font-weight: 600;
                border: none;
                min-width: 50px;
            }

            /* Hover effects */
            .pagination a:hover {
                transform: translateY(-3px);
                box-shadow: 0 5px 15px rgba(40, 167, 69, 0.2);
                background: linear-gradient(45deg, #e0ffe0, #f0fff0);
                color: #28a745;
                border-color: #28a745;
            }

            .pagination a:first-child:hover,
            .pagination a:last-child:hover {
                background: linear-gradient(45deg, #218838, #28a745);
                color: white;
            }

            /* Active page */
            .pagination a.active {
                background: linear-gradient(45deg, #28a745, #34d058);
                color: white;
                border: none;
                pointer-events: none;
                transform: scale(1.1);
                box-shadow: 0 5px 15px rgba(40, 167, 69, 0.3);
            }

            /* Responsive design */
            @media (max-width: 768px) {
                .pagination {
                    gap: 8px;
                }

                .pagination a {
                    min-width: 40px;
                    height: 40px;
                    padding: 0.4rem 0.8rem;
                    font-size: 0.9rem;
                }
            }

            @media (max-width: 480px) {
                .pagination {
                    gap: 5px;
                }

                .pagination a {
                    min-width: 35px;
                    height: 35px;
                    padding: 0.3rem 0.6rem;
                    font-size: 0.85rem;
                }
            }

            /* Message Styles */
            .message {
                padding: 1rem;
                margin-bottom: 1.5rem;
                border-radius: 8px;
                font-weight: 500;
                text-align: center;
            }

            .message.success {
                background-color: #d4edda;
                color: #28a745;
                border-left: 4px solid #28a745;
            }

            .message.error {
                background-color: #f8d7da;
                color: #dc3545;
                border-left: 4px solid #dc3545;
            }

            /* Responsive Design */
            @media (max-width: 1200px) {
                .main {
                    padding: 1.5rem;
                }

                .user-list {
                    padding: 1.5rem;
                }

                .search input {
                    width: 250px;
                }
            }

            @media (max-width: 768px) {
                table {
                    display: block;
                    overflow-x: auto;
                }

                .search form {
                    flex-wrap: wrap;
                }

                .user-list h1 {
                    font-size: 1.5rem;
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
        <c:if test="${sessionScope.account.acc_type eq 2}">
            <script>
                window.location.href = "userInfo.jsp";
            </script>
        </c:if>


        <div class="container">
            <nav>
                <ul>
                    <li><a href="home" class="logo">
                            <img src="images/logo.png">
                            <h5 class="nav-item">${sessionScope.account.acc_fullname}</h5>
                        </a></li>                      
                    <li><a href="adimInfo.jsp" class="<%= request.getRequestURI().contains("adminInfo.jsp") ? "active" : ""%>">
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
                    <li><a href="AdminChart">
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
                <section class="user">
                    <div class="user-list">
                        <c:if test="${not empty sessionScope.message}">
                            <div class="message success">
                                ${sessionScope.message}
                                <% session.removeAttribute("message"); %>
                            </div>
                        </c:if>
                        <c:if test="${not empty sessionScope.error}">
                            <div class="message error">
                                ${sessionScope.error}
                                <% session.removeAttribute("error");%>
                            </div>
                        </c:if>
                        <a class="back-link" href="adminInfo.jsp"><i class='bx bx-arrow-back'></i> Back</a>
                        <h1>Quản lý tài khoản</h1>
                        <div class="search" style="margin-bottom: 2rem; text-align: center;">
                            <form action="AllAccountServlet" style="display: inline-flex; gap: 1rem; justify-content: center; align-items: center;">
                                <select name="searchType" style="padding: 0.5rem; border-radius: 5px; border: 1px solid #ddd;">
                                    <option value="all" ${searchType == 'all' ? 'selected' : ''}>All</option>
                                    <option value="id" ${searchType == 'id' ? 'selected' : ''}>Acc Id</option>
                                    <option value="email" ${searchType == 'email' ? 'selected' : ''}>Email</option>
                                    <option value="name" ${searchType == 'name' ? 'selected' : ''}>Họ tên</option>
                                    <option value="phone" ${searchType == 'phone' ? 'selected' : ''}>Sđt</option>
                                </select>
                                <input type="text" name="search" value="${searchQuery}" placeholder="Nhập từ khoá tìm kiếm.." style="padding: 0.5rem; border-radius: 5px;
                                       border: 1px solid #ddd; width: 300px;">
                                <button type="submit" style="padding: 0.5rem 1rem; background-color: #4CAF50;
                                        color: white; border: none;
                                        border-radius: 5px; cursor: pointer;">
                                    <i class='bx bx-search'></i>
                                </button>
                            </form>
                        </div>
                        <table>
                            <thead>
                                <tr>
                                    <th style="text-align: center">ID</th>
                                    <th style="text-align: center">Email</th>
                                    <th style="text-align: center">Mật khẩu</th>
                                    <th style="text-align: center">Họ tên</th>
                                    <th style="text-align: center">Ngày sinh</th>
                                    <th style="text-align: center">Giới tính</th>
                                    <th style="text-align: center">Sđt</th>
                                    <th>Loại tài khoản</th>
                                    <th style="text-align: center">Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${sessionScope.allAccount}" var="user">
                                    <c:if test="${user.acc_type ne 0}">
                                        <tr>
                                            <td style="text-align: center">${user.acc_id}</td>
                                            <td style="text-align: center">${user.acc_email}</td>
                                            <td style="text-align: center">**********</td>
                                            <td style="text-align: center">${user.acc_fullname}</td>
                                            <td style="text-align: center">${user.acc_dob}</td>
                                            <td style="text-align: center">${user.acc_gender}</td>
                                            <td style="text-align: center">${user.acc_phone}</td>
                                            <c:if test="${user.acc_type eq 1 || user.acc_type eq 3}">
                                                <td style="text-align: center">Đối tác</td>
                                            </c:if>
                                            <c:if test="${user.acc_type eq 2 || user.acc_type eq 4}">
                                                <td style="text-align: center">Người dùng</td>
                                            </c:if>
                                            <td style="text-align: center">
                                                <div class="action-buttons">
                                                    <c:if test="${user.acc_type eq 2 || user.acc_type eq 4}">
                                                        <button onclick="if (confirm('Bạn có chắc chắn muốn ${user.acc_type == 4 ? 'mở' : 'khoá'} tài khoản ${user.acc_id}?'))
                                                                    window.location.href = 'ban-account?id=${user.acc_id}'"
                                                                class="${user.acc_type == 4 ? 'unban-button' : 'ban-button'}">
                                                            ${user.acc_type == 4 ? 'Mở' : 'Khoá'} tài khoản
                                                        </button>
                                                    </c:if>

                                                    <c:if test="${user.acc_type eq 1 || user.acc_type eq 3}">
                                                        <button onclick="if (confirm('Bạn có chắc chắn muốn ${user.acc_type == 3 ? 'mở' : 'khoá'} tài khoản ${user.acc_id}? Đồng nghĩa với việc khách sạn của họ ${user.acc_type == 3 ? 'Có thể' : 'Không thể'} hoạt động bình thường!'))
                                                                    window.location.href = 'ban-partner?id=${user.acc_id}'"
                                                                class="${user.acc_type == 3 ? 'unban-button' : 'ban-button'}">
                                                            ${user.acc_type == 3 ? 'Mở' : 'Khoá'} tài khoản
                                                        </button>
                                                    </c:if>

                                                </div>
                                            </td>
                                        </tr>
                                    </c:if>
                                </c:forEach>
                            </tbody>
                        </table>
                        <div class="pagination">
                            <c:if test="${currentPage > 1}">
                                <a href="AllAccountServlet?page=${currentPage - 1}&search=${searchQuery}&searchType=${searchType}">&laquo;</a>
                            </c:if>

                            <c:forEach begin="1" end="${totalPages}" var="i">
                                <a href="AllAccountServlet?page=${i}&search=${searchQuery}&searchType=${searchType}"
                                   class="${i == currentPage ? 'active' : ''}">${i}</a>
                            </c:forEach>

                            <c:if test="${currentPage < totalPages}">
                                <a href="AllAccountServlet?page=${currentPage + 1}&search="${searchQuey}&searchType=${searchType}"">&raquo;</a>
                            </c:if>
                        </div>
                    </div>
                </section>
            </section>
        </div>
    </body>
</html>