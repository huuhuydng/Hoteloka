<%-- 
    Document   : header
    Created on : Sep 8, 2024, 12:52:32 PM
    Author     : hadi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
        <script type="text/javascript" src="js/jquery-1.8.3.min.js" charset="UTF-8"></script>
        <script type="text/javascript" src="js/jquery.lazyload.js" charset="UTF-8"></script>
        <script type="text/javascript" src="js/jquery.ui.core.js" charset="UTF-8"></script>
        <script type="text/javascript" src="js/jquery.ui.datepicker.js" charset="UTF-8"></script>
        <script type="text/javascript" src="js/price_format.js" charset="UTF-8"></script>
        <script type="text/javascript" src="js/css3-mediaqueries.js" charset="UTF-8"></script>
        <script type="text/javascript" src="js/html5.js" charset="UTF-8"></script>
        <script type="text/javascript" src="js/hotel.js" charset="UTF-8"></script>

        <link type="text/css" rel="stylesheet" href="css/khachsandanang.css" media="screen">
        <link type="text/css" rel="stylesheet" href="css/local.css" media="screen">
        <link type="text/css" rel="stylesheet" href="css/jquery-ui.css" media="screen">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" integrity="sha384-tViUnnbYAV00FLIhhi3v/dWt3Jxw4gZQcNoSCxCIFNJVCx7/D55/wXsrNIRANwdD" crossorigin="anonymous">

        <link href="css/all.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="js/bootstrap.min.js" charset="UTF-8"></script>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" media="screen">
        <script async="" src="js/adsbygoogle.js" crossorigin="anonymous"></script>

        <title>Group 1</title>

        <style>
            /*---Header---*/
            header {
                float: left;
                width: 100%;
                height: 80px;
                position: fixed;
                padding: 0 100px;
                z-index: 7;
                transition: all .3s;
                background: white;
            }
            header .current {
                color: #0da0f4 !important;
            }
            .fix_top {
                background: white;
                transition: all .3s;
                z-index: 7;
                box-shadow: 0px 8px 8px rgb(0 0 0 / 6%);
                height: 60px;
            }
            .fix_top .menu>li>a {
                color: #333;
                padding: 25px 10px;
            }
            .fix_top .logo img {
                filter: none;
                height: 50px;
            }
            .fix_top .right_menu {
                color: #333;
                font-weight: 500;
                padding: 25px 100px 0 25px;
            }
            .fix_top .open_btn {
                top: 3px;
                transition: all .3s;
            }
            .fix_top .open_btn i {
                color: black;
            }
            .fix_top .menu-seperate {
                color: black;
            }

            .logo {
                float: left;
            }
            .logo img {
                height: 70px;
                transition: all .3s;
                margin-top: 5px;
                position: relative;
            }
            #menu_container {
                float: left;
                width: 100%;
                margin-top: -70px;
                padding: 9px 0;
            }

            .right_menu {
                float: right;
                color: black;
                padding: 15px 15px 0 15px;
            }
            .right_menu i {
                margin-right: 10px;
            }
            .right_menu>span {
                margin-left: 20px;
            }
            .menu {
                list-style: none;
                float: left;
                margin-bottom: 0;
                margin-left: 100px;
            }
            .menu>li {
                float: left;
                list-style: none;
            }
            .menu>li>a {
                padding: 15px 15px;
                font-size: 16px;
                display: block;
                color: black;
                font-weight: 500;
                text-decoration: none;
                transition: color 0.3s;
            }
            .menu>li>a:hover,
            .menu>li>a.active {
                color: #32ad54;
            }
            .menu .menu-seperate {
                color: white;
            }

            .menucon {
                min-width: 140px;
                position: absolute;
                padding: 10px;
                z-index: 999;
                display: none;
                background: white;
                margin-top: 0px;
                box-shadow: 0px 8px 8px rgb(0 0 0 / 6%);
                border-radius: 5px;
            }
            .menucon>li {
                position: relative;
                padding: 1px 2px;
                width: 100%;
                min-width: 150px;
                text-align: left;
                line-height: 25px;
                list-style: none;
            }
            .menucon>li>a {
                padding: 3px 0;
                color: #666;
                text-decoration: none;
            }
            .menucon>li>a:hover {
                color: #f06e00;
            }
            .menucon>li:hover .menulv3 {
                display: block;
            }

            .menucon2>li>a {
                text-decoration: none;
                color: var(--blue);
            }

            .open_btn {
                position: absolute;
                right: 10px;
                top: 15px;
                font-size: 16px;
                z-index: 99999;
                margin: 12px 15px 0 0;
                transition: all .3s;
            }
            .open_btn i {
                color: black;
                cursor: pointer;
            }
            .open_btn:hover i {
                color: var(--pink);
            }
            .close_btn {
                margin: 15px;
                float: left;
                cursor: pointer;
                color: black;
            }
            .close_btn:hover {
                color: var(--pink);
            }

            /*-----Login-----*/
            .login-btn {
                display: inline-block;
                margin-left: 15px;
                padding: 5px 10px;
                color: black;
                text-decoration: none;
                border-radius: 5px;
                transition: color 0.3s;
            }
            .login-btn:hover {
                color: var(--pink);
                background-color: transparent;
            }

            .right_menu a i {
                font-size: 17px;
                color: black;
            }
        </style>
    </head>
    <body>
        <header class="header">
            <div class="logo">
                <a title="GROUP1" href="home"><img src="images/logo.png" alt="Logo"></a>
            </div>

            <div id="menu_container">
                <ul class="menu">
                    <li><a href="home" class="menu-item"><i class="fa fa-home"></i> Trang chủ</a></li>
                    <li><a href="info" class="menu-item"><i class="fa fa-address-card"></i> Giới thiệu</a></li>
                    <li><a href="hotel" class="menu-item"><i class="fa fa-building"></i> Khách sạn</a></li>
                    <li><a href="#" class="menu-item"><i class="fa fa-envelope"></i> Liên hệ</a></li>
                </ul>
                <div class="right_menu">


                    <c:if test="${not empty sessionScope.account}">
                        <a href="userInfo.jsp"><i class="bi bi-person-circle"></i></a>
                        </c:if>
                        <c:if test="${empty sessionScope.account}">
                        <a href="login.jsp" class="login-btn">Đăng nhập</a>
                    </c:if>  

                    <span><i class="fa fa-phone"></i><span>0833100904</span></span>
                </div>
            </div>
        </header>

        <script>
            document.addEventListener('DOMContentLoaded', function () {
                const menuItems = document.querySelectorAll('.menu-item');

                menuItems.forEach(item => {
                    item.addEventListener('click', function (e) {
                        // Remove 'active' class from all menu items
                        menuItems.forEach(i => i.classList.remove('active'));

                        // Add 'active' class to clicked item
                        this.classList.add('active');

                        // Allow default behavior (navigation to servlet)
                    });
                });

                // Set active for current page based on URL
                const currentPath = window.location.pathname;
                menuItems.forEach(item => {
                    if (item.getAttribute('href') === currentPath.split('/').pop()) {
                        item.classList.add('active');
                    }
                });
            });
        </script>
    </body>
</html>