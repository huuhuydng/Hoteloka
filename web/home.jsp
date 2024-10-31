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
  chat-title="HOTELOKA"
  agent-id="e1d6fe55-8de2-4bc0-9d49-de70c1a0e5ed"
  language-code="vi"
></df-messenger>

<style>
  /* Import Google Font */
  @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap');

  /* Định nghĩa các biến màu */
  :root {
    --primary-green: #2ecc71;
    --dark-green: #27ae60;
    --light-green: #e8f8f5;
    --text-dark: #2c3e50;
    --text-light: #34495e;
  }

  df-messenger {
    --df-messenger-bot-message: #e8f8f5;
    --df-messenger-button-titlebar-color: #2ecc71;
    --df-messenger-chat-background-color: #ffffff;
    --df-messenger-font-color: var(--text-dark);
    --df-messenger-send-icon: #2ecc71;
    --df-messenger-user-message: var(--primary-green);  /* Màu nền tin nhắn người dùng */
    z-index: 999;
    position: fixed;
    bottom: 20px;
    right: 20px;
    font-family: 'Roboto', sans-serif;
  }

  /* Tùy chỉnh khung chat */
  df-messenger-chat {
    --df-messenger-message-border-radius: 15px;
    --df-messenger-input-box-shadow: 0 2px 10px rgba(46, 204, 113, 0.1);
    --df-messenger-input-padding: 12px;
    --df-messenger-input-font-size: 15px;
    --df-messenger-input-border-radius: 20px;
    background: #ffffff;
    border-radius: 15px;
    box-shadow: 0 5px 20px rgba(46, 204, 113, 0.15);
  }

  /* Tùy chỉnh thanh tiêu đề */
  df-messenger-titlebar {
    background: #2ecc71 !important;
    padding: 15px !important;
    font-weight: 500 !important;
    font-size: 16px !important;
    letter-spacing: 0.3px;
    color: white !important;
  }

  /* Tùy chỉnh tin nhắn chung */
  df-messenger-message {
    font-size: 14px !important;
    line-height: 1.5 !important;
    padding: 10px 15px !important;
    margin: 5px 0;
    letter-spacing: 0.2px;
  }

  /* Style cho tin nhắn bot */
  df-messenger-message[type="bot"] {
    background-color: var(--light-green) !important;
    border: 1px solid rgba(46, 204, 113, 0.1);
    color: var(--text-dark) !important;
  }

  /* Style mới cho tin nhắn người dùng */
  df-messenger-message[type="user"] {
    background-color: var(--primary-green) !important;
    color: white !important;  /* Màu chữ trắng cho tin nhắn người dùng */
    font-weight: 500 !important;
    box-shadow: 0 2px 5px rgba(46, 204, 113, 0.2);
    border: none !important;
  }

  /* Tùy chỉnh ô nhập liệu */
  df-messenger-user-input {
    font-size: 14px !important;
    padding: 12px 15px !important;
    border: 2px solid transparent;
    transition: all 0.3s ease;
    background: #ffffff;
    color: var(--text-dark);
  }

  df-messenger-user-input:focus {
    border-color: var(--primary-green);
    box-shadow: 0 0 10px rgba(46, 204, 113, 0.2);
  }

  /* Tùy chỉnh placeholder */
  df-messenger-user-input::placeholder {
    color: #95a5a6;
    font-size: 14px;
  }

  /* Tùy chỉnh thanh cuộn */
  df-messenger-chat::-webkit-scrollbar {
    width: 6px;
  }

  df-messenger-chat::-webkit-scrollbar-track {
    background: #f1f1f1;
    border-radius: 3px;
  }

  df-messenger-chat::-webkit-scrollbar-thumb {
    background: var(--primary-green);
    border-radius: 3px;
  }

  /* Hiệu ứng hover cho nút gửi */
  df-messenger-send-icon {
    transition: all 0.3s ease;
  }

  df-messenger-send-icon:hover {
    transform: scale(1.1);
    color: var(--dark-green) !important;
  }

  /* Responsive design */
  @media (max-width: 768px) {
    df-messenger-chat {
      --df-messenger-input-font-size: 14px;
      --df-messenger-message-border-radius: 12px;
    }

    df-messenger-titlebar {
      font-size: 15px !important;
    }
  }
</style>