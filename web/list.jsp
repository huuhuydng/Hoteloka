<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
        <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
        <script type="text/javascript" src="js/jquery.lazyload.js"></script>
        <script type="text/javascript" src="js/jquery.ui.core.js"></script>
        <script type="text/javascript" src="js/jquery.ui.datepicker.js"></script>
        <script type="text/javascript" src="js/price_format.js"></script>
        <script type="text/javascript" src="js/css3-mediaqueries.js"></script>
        <script type="text/javascript" src="js/html5.js"></script>
        <script type="text/javascript" src="js/hotel.js"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/10.0.0/swiper-bundle.min.css" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/10.0.0/swiper-bundle.min.js"></script>

        <link type="text/css" rel="stylesheet" href="css/khachsandanang.css">
        <link type="text/css" rel="stylesheet" href="css/local.css">
        <link type="text/css" rel="stylesheet" href="css/jquery-ui.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link href="css/all.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
        <script async src="js/adsbygoogle.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <title>Group 1</title>
        <style>
            .pagination {
                display: flex;
                list-style-type: none;
                padding: 0;
                justify-content: center;
                margin-top: 20px;
            }
            .pagination li {
                margin: 0 5px;
            }
            .pagination a {
                display: flex;
                align-items: center;
                justify-content: center;
                min-width: 40px;
                height: 40px;
                font-size: 16px;
                color: #00B6F3;
                font-weight: 500;
                text-decoration: none;
                transition: all 0.3s;
                border-radius: 20px;
                background-color: rgba(0,182,143,0.1);
                padding: 0 10px;
            }
            .pagination a:hover,
            .pagination a.active {
                color: white;
                background-color: #00B6F3;
            }
            .pagination .nav-button {
                width: auto;
            }
            .pagination .disabled {
                opacity: 0.5;
                pointer-events: none;
            }
            .pagination i {
                margin: 0 5px;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid">      
            <div class="container py-3">
                <div class="row">
                    <h2 class="heading-home"><span>Tất cả khách sạn</span></h2>
                    <div class="row" id="all-hotel">
                        <c:forEach items="${listH}" var="hotel">
                            <div class="col-sm-3">
                                <div class="hotel">
                                    <div class="img">
                                        <a href="hotel-details?id=${hotel.hotel_id}">
                                            <img src="${hotel.hotel_imagesGeneral}" alt="${hotel.hotel_name}">
                                        </a>
                                    </div>
                                    <div class="info">
                                        <h3 class="title"><a href="hotel-details?id=${hotel.hotel_id}">${hotel.hotel_name}</a></h3>
                                        <span class="map">
                                            <a href="hotels?city=${hotel.hotel_city}">${hotel.hotel_city}</a> • 
                                            <a href="api/viewmap/${hotel.hotel_id}" class="show_map">Bản đồ</a>
                                        </span><br>
                                        <span class="stars">
                                            <c:forEach begin="1" end="${hotel.hotel_star}">
                                                <img alt="" src="images/star.png">
                                            </c:forEach>
                                        </span><br>
                                        <span class="address">
                                            <em>
                                                <c:if test="${not empty hotel.hotel_street}">${hotel.hotel_street}</c:if>
                                                <c:if test="${not empty hotel.hotel_ward}">, ${hotel.hotel_ward}</c:if>
                                                <c:if test="${not empty hotel.hotel_district}">, ${hotel.hotel_district}</c:if>
                                                <c:if test="${not empty hotel.hotel_city}">, ${hotel.hotel_city}</c:if>
                                            </em>
                                        </span>
                                        <a class="readmore" title="Chi tiết" href="hotel-details?id=${hotel.hotel_id}">Chi tiết</a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <div class="pages" id="pagination">
    <ul class="pagination">
        <li>
            <a href="${pageContext.request.contextPath}/${source}?index=1" class="pagination-item nav-button" id="firstPage">
                <i class="fa fa-angle-double-left"></i> Đầu
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/${source}?index=${tag-1}" class="pagination-item nav-button" id="prevPage">
                <i class="fa fa-angle-left"></i> Trước
            </a>
        </li>
        <c:forEach begin="1" end="${endP}" var="i">
            <li>
                <a href="${pageContext.request.contextPath}/${source}?index=${i}" class="pagination-item ${tag == i ? 'active' : ''}">${i}</a>
            </li>
        </c:forEach>
        <li>
            <a href="${pageContext.request.contextPath}/${source}?index=${tag+1}" class="pagination-item nav-button" id="nextPage">
                Sau <i class="fa fa-angle-right"></i>
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/${source}?index=${endP}" class="pagination-item nav-button" id="lastPage">
                Cuối <i class="fa fa-angle-double-right"></i>
            </a>
        </li>
    </ul>
</div>

                    <script>
                        document.addEventListener('DOMContentLoaded', function () {
                            const paginationItems = document.querySelectorAll('.pagination-item');
                            const currentPage = ${tag}; // Assuming 'tag' is the current page number
                            const totalPages = ${endP}; // Assuming 'endP' is the total number of pages

                            const firstPageBtn = document.getElementById('firstPage');
                            const prevPageBtn = document.getElementById('prevPage');
                            const nextPageBtn = document.getElementById('nextPage');
                            const lastPageBtn = document.getElementById('lastPage');

                            // Disable First and Previous buttons on first page
                            if (currentPage === 1) {
                                firstPageBtn.classList.add('disabled');
                                prevPageBtn.classList.add('disabled');
                            }

                            // Disable Next and Last buttons on last page
                            if (currentPage === totalPages) {
                                nextPageBtn.classList.add('disabled');
                                lastPageBtn.classList.add('disabled');
                            }

                            paginationItems.forEach(item => {
                                item.addEventListener('click', function (e) {
                                    if (this.classList.contains('disabled')) {
                                        e.preventDefault();
                                        return;
                                    }
                                    paginationItems.forEach(i => i.classList.remove('active'));
                                    if (!this.classList.contains('nav-button')) {
                                        this.classList.add('active');
                                    }
                                });

                                // Set active class for current page
                                if (parseInt(item.textContent) === currentPage) {
                                    item.classList.add('active');
                                }
                            });
                        });
                    </script>
                </div>
            </div>
        </div>
    </body>
</html>