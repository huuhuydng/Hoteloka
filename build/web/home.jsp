<%-- 
    Document   : test
    Created on : Sep 8, 2024, 1:25:21 PM
    Author     : hadi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

        <link href="css/all.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="js/bootstrap.min.js" charset="UTF-8"></script>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" media="screen">
        <script async="" src="js/adsbygoogle.js" crossorigin="anonymous"></script>
        <title>Group 1</title>
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
    </body>
</html>
