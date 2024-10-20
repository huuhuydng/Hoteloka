<%-- 
    Document   : test
    Created on : Sep 8, 2024, 1:25:21 PM
    Author     : hadi
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOTELOKA</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
        <!-- Load jQuery and jQuery UI (only once) -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
        <!-- Other CSS and Scripts -->
        <link type="text/css" rel="stylesheet" href="css/khachsandanang.css" media="screen">
        <link type="text/css" rel="stylesheet" href="css/local.css" media="screen">
        <link type="text/css" rel="stylesheet" href="css/jquery-ui.css" media="screen">
        <style>
            .notification {
                position: fixed;
                top: 20px;
                right: 20px;
                color: white;
                padding: 15px;
                border-radius: 5px;
                box-shadow: 0 2px 4px rgba(0,0,0,0.2);
                z-index: 1000;
            }
            .success {
                background-color: #4CAF50;
            }
            .failure {
                background-color: #f44336;
            }
            .notification button {
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
            .success button {
                background-color: #45a049;
            }
            .failure button {
                background-color: #da190b;
            }
        </style>
    </head>
    <body>
        <div id="header_tab">
            <jsp:include page="header.jsp"/>
        </div>
        <div class="clr"></div>
        <div id='banner_tab'>
            <jsp:include page="banner.jsp"/>
            <jsp:include page="banner1.jsp"/>
            <jsp:include page="list.jsp"/>
        </div>
        <div id="footer_tab">
            <jsp:include page="footer.jsp"/>
        </div>
        <div class="clr"></div>
        <div id="bookingSuccessNotification" class="notification success" style="display: none;">
            <p>Đã đặt phòng thành công! Vui lòng kiểm tra thông tin đặt phòng của bạn ở Profile</p>
            <button onclick="closeNotification('bookingSuccessNotification')">Đóng</button>
        </div>
        <div id="bookingFailureNotification" class="notification failure" style="display: none;">
            <p>Đặt phòng không thành công. Vui lòng thử lại sau hoặc liên hệ với chúng tôi để được hỗ trợ.</p>
            <button onclick="closeNotification('bookingFailureNotification')">Đóng</button>
        </div>
        <script>
            function showNotification(id) {
                document.getElementById(id).style.display = 'block';
            }
            function closeNotification(id) {
                document.getElementById(id).style.display = 'none';
            }
            // Kiểm tra xem có thông báo đặt phòng thành công không
            <% if (session.getAttribute("bookingSuccess") != null && (Boolean) session.getAttribute("bookingSuccess")) { %>
            showNotification('bookingSuccessNotification');
            <% session.removeAttribute("bookingSuccess"); %>
            <% } %>
            // Kiểm tra xem có thông báo đặt phòng không thành công không
            <% if (session.getAttribute("bookingFail") != null && (Boolean) session.getAttribute("bookingFail")) { %>
            showNotification('bookingFailureNotification');
            <% session.removeAttribute("bookingFail"); %>
            <% }%>
        </script>
    </body>
</html>
<script src="https://www.gstatic.com/dialogflow-console/fast/messenger/bootstrap.js?v=1"></script>
<df-messenger
  intent="WELCOME"
  chat-title="SIDE-kick"
  agent-id="e1d6fe55-8de2-4bc0-9d49-de70c1a0e5ed"
  language-code="vi"
></df-messenger>