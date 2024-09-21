<%-- 
    Document   : banner1
    Created on : Sep 8, 2024, 3:02:06 PM
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

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/10.0.0/swiper-bundle.min.css" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/10.0.0/swiper-bundle.min.js"></script>

        <link type="text/css" rel="stylesheet" href="css/khachsandanang.css" media="screen">
        <link type="text/css" rel="stylesheet" href="css/local.css" media="screen">
        <link type="text/css" rel="stylesheet" href="css/jquery-ui.css" media="screen">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link href="css/all.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="js/bootstrap.min.js" charset="UTF-8"></script>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" media="screen">
        <script async="" src="js/adsbygoogle.js" crossorigin="anonymous"></script>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <title>Group 1</title>
        <style>
            #home-slide .swiper-pagination {
                margin-bottom: 20px;
            }
            #home-slide .swiper-slide {
                height: 500px
            }
            #home-slide .swiper-slide img {
                width: 100%;
                height: 100%;
                object-fit: cover;
            }
            #image-gallery .swiper-slide {
                height: 0;
                padding-bottom: 52%;
                overflow: hidden
            }
            #image-gallery-thumbs {
                margin-top:5px
            }
            #image-gallery-thumbs .swiper-slide:hover {
                cursor: pointer;
                border-radius: 5px
            }

            #image-gallery-thumbs .swiper-slide {
                height: 50px
            }
            #image-gallery-thumbs .swiper-slide img {
                height: 100%;
                object-fit: cover
            }

        </style>
    </head>
    <body>
        <div class="container-fuild"> 
            <div class="container py-3">
                <div class="row">
                    <h2 class="heading-home"><span>Khách sạn nổi bật</span></h2>
                    <div class="swiper swiper-initialized swiper-horizontal swiper-backface-hidden" id="hot">
                        <div class="swiper-wrapper" id="swiper-wrapper-bc54e5891024985f1" aria-live="off">
                            <c:forEach var="hotel" items="${randomH}" varStatus="status">
                                <div class="swiper-slide" role="group" aria-label="${status.index + 1} / ${hotelList.size()}" data-swiper-slide-index="${status.index}">
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
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                    </div> 
                </div>
            </div>
        </div>

    </body>

    <script>
        var homeSlide = new Swiper("#home-slide", {
            lazy: true,
            slidesPerView: 1,
            spaceBetween: 30,
            // loop: true,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
                dynamicBullets: true,
            },
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            autoplay: {
                delay: 5000,
                disableOnInteraction: false,
            },
        });

        var comment = new Swiper("#comment", {
            slidesPerView: 1,
            spaceBetween: 10,
            lazy: true,
            loop: true,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
                dynamicBullets: true,
            },
            breakpoints: {
                459: {
                    slidesPerView: 1,
                    spaceBetween: 10,
                },
                640: {
                    slidesPerView: 2,
                    spaceBetween: 20,
                },
                768: {
                    slidesPerView: 2,
                    spaceBetween: 40,
                },
                1024: {
                    slidesPerView: 2,
                    spaceBetween: 50,
                },
            },
            autoplay: {
                delay: 5000,
                disableOnInteraction: false,
            },
        });

        var hot = new Swiper("#hot", {
            slidesPerView: 1,
            spaceBetween: 10,
            loop: true,
            lazy: true,
            breakpoints: {
                459: {
                    slidesPerView: 1,
                    spaceBetween: 10,
                },
                640: {
                    slidesPerView: 2,
                    spaceBetween: 20,
                },
                768: {
                    slidesPerView: 3,
                    spaceBetween: 20,
                },
                1024: {
                    slidesPerView: 4,
                    spaceBetween: 20,
                },
            },
            autoplay: {
                delay: 5000,
                disableOnInteraction: false,
            },
            pagination: {
                el: ".swiper-pagination",
                clickable: true, dynamicBullets: true
            },
        });

        var tour = new Swiper("#tour", {
            slidesPerView: 1,
            spaceBetween: 10,
            loop: true,
            lazy: true,
            breakpoints: {
                459: {
                    slidesPerView: 1,
                    spaceBetween: 10,
                },
                640: {
                    slidesPerView: 2,
                    spaceBetween: 20,
                },
                768: {
                    slidesPerView: 2,
                    spaceBetween: 40,
                },
                1024: {
                    slidesPerView: 3,
                    spaceBetween: 50,
                },
            },
            autoplay: {
                delay: 5000,
                disableOnInteraction: false,
            },
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
                dynamicBullets: true
            },
        });


        var thumbs = new Swiper("#image-gallery-thumbs", {
            loop: true,
            spaceBetween: 5,
            slidesPerView: 6,
            freeMode: true,
            watchSlidesProgress: true,
        });
        var gallery = new Swiper("#image-gallery", {
            loop: true,
            // autoHeight:true,
            spaceBetween: 10,
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            thumbs: {
                swiper: thumbs,
            },
        });

        var gallery = new Swiper("#khachhang", {
            loop: true,
            autoHeight: true,
            spaceBetween: 10,
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            thumbs: {
                swiper: thumbs,
            },
        });


        var feedback = new Swiper("#feedback", {
            slidesPerView: 1,
            spaceBetween: 10,
            lazy: true,
            loop: true,
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            autoplay: {
                delay: 5000,
                disableOnInteraction: false,
            },
        });

    </script>
</html>
