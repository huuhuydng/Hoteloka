<%-- 
    Document   : hotel
    Created on : Sep 13, 2024, 8:51:13 AM
    Author     : hadi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="header_tab">
            <jsp:include page="header.jsp"/>
        </div>
        <div class="clr"></div>
         <div id='banner_tab'>
            <jsp:include page="banner.jsp"/>
            <jsp:include page="search.jsp"/>
        </div>
        <div id="footer_tab">
            <jsp:include page="footer.jsp"/>
        </div>
        <div class="clr"></div>
    </body>
</html>
