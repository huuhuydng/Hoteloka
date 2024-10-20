<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/10.0.0/swiper-bundle.min.css" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/10.0.0/swiper-bundle.min.js"></script>
        <link type="text/css" rel="stylesheet" href="css/khachsandanang.css" media="screen">
        <link type="text/css" rel="stylesheet" href="css/local.css" media="screen">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/all.css" rel="stylesheet" type="text/css">
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" media="screen">
        <script type="text/javascript" src="js/bootstrap.min.js" charset="UTF-8"></script>

        <title>Group 1</title>

        <style>
            #home-slide .swiper-pagination {
                margin-bottom: 20px;
            }
            #home-slide .swiper-slide {
                height: 500px;
            }
            #home-slide .swiper-slide img {
                width: 100%;
                height: 100%;
                object-fit: cover;
            }

            .searchbox {
                position: absolute;
                top: -300px;
                left: 0;
                width: 100%;
                z-index: 3;
                background: white;
                border-radius: 10px;
                padding: 10px;
                box-shadow: 0px 8px 8px rgb(0 0 0 / 6%);
            }
            .searchbox .table-search {
                border: none;
                width: 100%;
            }
            .searchbox label {
                display: none;
            }
            .searchbox .table-search td {
                border: none;
            }
            .searchbox h2 {
                font-size: 18px;
                width: 100%;
                text-align: center;
                border-bottom: 1px solid #f1f1f1;
                padding-bottom: 10px;
                margin-bottom: 20px;
            }
            .searchbox h2 span {
                border-bottom: 3px solid var(--pink);
                padding-bottom: 8px;
            }
            #change_date {
                background: var(--pink);
                color: white;
                text-align: center;
                padding: 8px;
                width: 100%;
                border: none;
                border-radius: 10px;
                height: 38px;
            }
            .searchbox input {
                background: #eee !important;
                border: none !important;
                border-radius: 5px !important;
            }

            #n_begin, #n_end {
                padding: 8px 12px;
                height: auto; 
            }

            #n_begin:focus, #n_end:focus {
                box-shadow: none !important;
                outline: none !important;
            }

            @media screen and (max-width: 767px) {
                .searchbox {
                    top: -400px;
                }
            }
            #image-gallery .swiper-slide {
                height: 0;
                padding-bottom: 52%;
                overflow: hidden;
            }
            #image-gallery-thumbs {
                margin-top: 5px;
            }
            #image-gallery-thumbs .swiper-slide:hover {
                cursor: pointer;
                border-radius: 5px;
            }
            #image-gallery-thumbs .swiper-slide {
                height: 50px;
            }
            #image-gallery-thumbs .swiper-slide img {
                height: 100%;
                object-fit: cover;
            }
        </style>
    </head>
    <body>
        <!-- Swiper Section -->
        <div class="swiper swiper-initialihzed swiper-horizontal swiper-backface-hidden" id="home-slide" style="--swiper-pagination-bullet-size:16px; --swiper-navigation-color:white; --swiper-pagination-color:white">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <a title="slide1" href="">
                        <img alt="slide1" src="https://khachsandanang.com.vn/data/sl/slide1.jpg" loading="lazy">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a title="slide2" href="">
                        <img alt="slide2" src="https://khachsandanang.com.vn/data/sl/slide2.jpg" loading="lazy">
                    </a>
                </div>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-pagination"></div>
        </div>

        <!-- Search Box -->
        <div class="container" style="z-index:6; clear: both; position: relative;">
            <div class="searchbox">
                <h2 class="pt-1"><span>Tìm kiếm khách sạn</span></h2>
                <form action="search?index=1" method="post">
                    <div class="hidden">
                        <input type="hidden" name="token" value="4da432ec08763d652367d13663781d3a">
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md mb-2">
                                <label class="form-label">Khách sạn</label>
                                <input type="text" name="search" class="key form-control" aria-label="Tên khách sạn" placeholder="Tên khách sạn">
                            </div>
                            <div class="col-md mb-2">
                                <label for="n_begin">Ngày đến:</label>
                                <input type="text" name="n_begin" id="n_begin" class="form-control" placeholder="Ngày đến">
                            </div>
                            <div class="col-md mb-2">
                                <label for="n_end">Ngày đi:</label>
                                <input type="text" name="n_end" id="n_end" class="form-control" placeholder="Ngày đi">
                            </div>
                            <div class="col-md-1 mb-2">
                                <button type="submit" aria-label="Tìm kiếm" id="change_date"><i class="fa fa-search"></i></button>   
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <script>
            $(document).ready(function () {
                var sessionCheckIn = '<%= session.getAttribute("checkIn") != null ? session.getAttribute("checkIn").toString() : ""%>';
                var sessionCheckOut = '<%= session.getAttribute("checkOut") != null ? session.getAttribute("checkOut").toString() : ""%>';

                var today = new Date();
                var tomorrow = new Date();
                tomorrow.setDate(today.getDate() + 1);

                // Format ngày theo dd-mm-yy
                function formatDate(date) {
                    var day = String(date.getDate()).padStart(2, '0');
                    var month = String(date.getMonth() + 1).padStart(2, '0');
                    var year = date.getFullYear();
                    return day + '-' + month + '-' + year;
                }

                $("#n_begin").val(sessionCheckIn ? sessionCheckIn : formatDate(today));
                $("#n_end").val(sessionCheckOut ? sessionCheckOut : formatDate(tomorrow));

                if ($.datepicker) {
                    $("#n_begin").datepicker({
                        dateFormat: "dd-mm-yy",
                        minDate: 0,
                        changeMonth: true,
                        changeYear: true,
                        onSelect: function (selectedDate) {
                            var minDate = $(this).datepicker('getDate');
                            minDate.setDate(minDate.getDate() + 1); 
                            $("#n_end").datepicker("option", "minDate", minDate);
                        }
                    });

                    $("#n_end").datepicker({
                        dateFormat: "dd-mm-yy",
                        minDate: 1, 
                        changeMonth: true,
                        changeYear: true
                    });

                    console.log("Datepickers initialized");
                } else {
                    console.error("jQuery UI Datepicker not loaded");
                }

                var homeSlide = new Swiper("#home-slide", {
                    lazy: true,
                    slidesPerView: 1,
                    spaceBetween: 30,
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
            });
        </script>
    </body>
</html>
