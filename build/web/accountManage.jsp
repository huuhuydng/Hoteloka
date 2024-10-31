<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <title>Account Management</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }

            body {
                background-color: #f4f6f9;
                color: #333;
                line-height: 1.6;
            }

            .container {
                padding: 2rem;
                max-width: 1490px;
                margin: 0 auto;
                background: white;
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
                border-radius: 10px;
                margin-top: 20px;
                margin-bottom: 20px;
            }

            h1 {
                color: #2c3e50;
                text-align: center;
                margin-bottom: 2rem;
                font-size: 2.5rem;
                font-weight: 600;
            }

            .back-link {
                display: inline-block;
                color: #4CAF50;
                text-decoration: none;
                margin-bottom: 1rem;
                transition: color 0.3s ease;
            }

            .back-link:hover {
                color: #45a049;
            }

            .message {
                padding: 1rem;
                border-radius: 5px;
                margin: 1rem 0;
                text-align: center;
                font-weight: 500;
            }

            .message.success {
                background-color: #d4edda;
                color: #155724;
                border: 1px solid #c3e6cb;
            }

            .message.error {
                background-color: #f8d7da;
                color: #721c24;
                border: 1px solid #f5c6cb;
            }

            table {
                width: 100%;
                border-collapse: separate;
                border-spacing: 0;
                margin: 2rem 0;
                background: white;
                border-radius: 8px;
                overflow: hidden;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            }

            th, td {
                padding: 1rem;
                text-align: left;
                border-bottom: 1px solid #e9ecef;
            }

            th {
                background-color: #4CAF50;
                color: white;
                font-weight: 600;
                text-transform: uppercase;
                font-size: 0.9rem;
                letter-spacing: 0.5px;
            }

            tr:nth-child(even) {
                background-color: #f8f9fa;
            }

            tr:hover {
                background-color: #f2f2f2;
                transition: background-color 0.3s ease;
            }

            .action-buttons {
                display: flex;
                gap: 0.5rem;
                justify-content: center;
            }

            button {
                padding: 0.5rem 1rem;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-weight: 500;
                transition: all 0.3s ease;
                text-transform: uppercase;
                font-size: 0.8rem;
            }

            button:hover {
                transform: translateY(-2px);
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            }

            .ban-button {
                background-color: #FFA500;
                color: white;
            }

            .unban-button {
                background-color: #4CAF50;
                color: white;
            }

            .delete-button {
                background-color: #dc3545;
                color: white;
            }

            .delete-button:hover {
                background-color: #c82333;
            }

            .add-account-container {
                text-align: center;
                margin-top: 2rem;
                padding: 1rem;
            }

            .add-account-link {
                display: inline-block;
                padding: 1rem 2rem;
                background-color: #4CAF50;
                color: white;
                text-decoration: none;
                border-radius: 5px;
                font-weight: 500;
                transition: all 0.3s ease;
                text-transform: uppercase;
                letter-spacing: 1px;
            }

            .add-account-link:hover {
                background-color: #45a049;
                transform: translateY(-2px);
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            }

            .pagination {
                display: flex;
                justify-content: center;
                margin-top: 2rem;
            }

            .pagination a {
                color: black;
                border-radius: 50%;
                float: left;
                padding: 8px 16px;
                text-decoration: none;
                transition: background-color 0.3s;
                border: 1px solid #ddd;
                margin: 0 4px;
            }

            .pagination a.active {
                background-color: #4CAF50;
                color: white;
                border-color: #4CAF50;
            }

            .pagination a:hover:not(.active) {
                background-color: #f1f1f1;
            }

            .pagination a:first-child {
                border-top-left-radius: 5px;
                border-bottom-left-radius: 5px;
            }

            .pagination a:last-child {
                border-top-right-radius: 5px;
                border-bottom-right-radius: 5px;
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
            <c:if test="${not empty sessionScope.message}">
                <div class="message success">
                    ${sessionScope.message}
                    <% session.removeAttribute("message"); %>
                </div>
            </c:if>
            <c:if test="${not empty sessionScope.error}">
                <div class="message error">
                    ${sessionScope.error}
                    <% session.removeAttribute("error"); %>
                </div>
            </c:if>
            <a class="back-link" href="adminInfo.jsp"><i class='bx bx-arrow-back'></i> Back</a>
            <h1>Quản lý tài khoản</h1>
            <div class="search" style="margin-bottom: 2rem; text-align: center;">
                <form action="AllAccountServlet" style="display: inline-flex; gap: 1rem; justify-content: center; align-items: center;">
                    <select name="searchType" style="padding: 0.5rem; border-radius: 5px; border: 1px solid #ddd;">
                        <option value="all" ${searchType == 'all' ? 'selected' : ''}>All</option>
                        <option value="id" ${searchType == 'id' ? 'selected' : ''}>Acc id</option>
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
                                            <button onclick="if (confirm('Bạn có chắc chắn muốn ${user.acc_type == 4 ? 'mở' : 'cấm'} tài khoản ${user.acc_id}?'))
                                                        window.location.href = 'ban-account?id=${user.acc_id}'"
                                                    class="${user.acc_type == 4 ? 'unban-button' : 'ban-button'}">
                                                ${user.acc_type == 4 ? 'Mở' : 'Cấm'} tài khoản
                                            </button>
                                        </c:if>

                                        <c:if test="${user.acc_type eq 1 || user.acc_type eq 3}">
                                            <button onclick="if (confirm('Bạn có chắc chắn muốn ${user.acc_type == 3 ? 'mở' : 'cấm'} tài khoản ${user.acc_id}? Đồng nghĩa với việc khách sạn của họ ${user.acc_type == 3 ? 'Có thể' : 'Không thể'} hoạt động bình thường!'))
                                                        window.location.href = 'ban-partner?id=${user.acc_id}'"
                                                    class="${user.acc_type == 3 ? 'unban-button' : 'ban-button'}">
                                                ${user.acc_type == 3 ? 'Mở' : 'Cấm'} tài khoản
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
    </body>
</html>