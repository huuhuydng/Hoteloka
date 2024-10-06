<%-- 
    Document   : test
    Created on : Sep 8, 2024, 1:25:21 PM
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
        <div id="bookingNotification" class="notification" style="display: none;">
            <p>Đã đặt phòng thành công! Vui lòng kiểm tra thông tin đặt phòng của bạn ở Profile</p>
            <button onclick="closeNotification()">Đóng</button>
        </div>
        <script>
            function showNotification() {
                document.getElementById('bookingNotification').style.display = 'block';
            }

            function closeNotification() {
                document.getElementById('bookingNotification').style.display = 'none';
            }

            // Kiểm tra xem có thông báo đặt phòng thành công không
            <% if (session.getAttribute("bookingSuccess") != null && (Boolean) session.getAttribute("bookingSuccess")) { %>
            showNotification();
            <% session.removeAttribute("bookingSuccess"); %>
            <% }%>
        </script>
    </body>
</html>
