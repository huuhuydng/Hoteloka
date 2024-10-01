<%-- 
    Document   : banner
    Created on : Sep 8, 2024, 2:23:37 PM
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
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  
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



            .searchbox {
                position: absolute;
                top: -300px;
                left: 0;
                width: 100%;
                z-index: 3;
                background: white;
                border-radius: 10px;
                padding:10px;
                box-shadow: 0px 8px 8px rgb(0 0 0 / 6%)
            }
            .searchbox .table-search {
                border: none;
                width: 100%;
            }
            .searchbox label {
                display: none;
            }
            .searchbox .table-search td {
                border: none
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

            .searchbox select, .searchbox input {
                border: none
            }
            .searchbox .input-group-text {
                border: none
            }
            .searchbox .key {
                background: #eee;
            }

            @media screen and (max-width:767px){
                .searchbox {
                    top: -400px
                }
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
        <div class="swiper swiper-initialihzed swiper-horizontal swiper-backface-hidden" id="home-slide" style="--swiper-pagination-bullet-size:16px; --swiper-navigation-color:white; --swiper-pagination-color:white">
            <div class="swiper-wrapper" id="swiper-wrapper-600376c23ffebd9b" aria-live="off" style="transition-duration: 0ms; transform: translate3d(0px, 0px, 0px); transition-delay: 0ms;">
                <div class="swiper-slide swiper-slide-active" role="group" aria-label="1 / 2" style="width: 1354px; margin-right: 30px;">
                    <a title="slide1" href="">
                        <img alt="slide1" src="https://khachsandanang.com.vn/data/sl/slide1.jpg" loading="lazy">

                    </a>
                </div>
                <div class="swiper-slide swiper-slide-next" role="group" aria-label="2 / 2" style="width: 1354px; margin-right: 30px;">
                    <a title="slide2" href="">
                        <img alt="slide2" src="https://khachsandanang.com.vn/data/sl/slide2.jpg" loading="lazy">

                    </a>
                </div>
            </div>
            <div class="swiper-button-next" tabindex="0" role="button" aria-label="Next slide" aria-controls="swiper-wrapper-600376c23ffebd9b" aria-disabled="false"></div>
            <div class="swiper-button-prev swiper-button-disabled" tabindex="-1" role="button" aria-label="Previous slide" aria-controls="swiper-wrapper-600376c23ffebd9b" aria-disabled="true"></div>
            <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets swiper-pagination-horizontal swiper-pagination-bullets-dynamic" style="width: 120px;"><span class="swiper-pagination-bullet swiper-pagination-bullet-active swiper-pagination-bullet-active-main" tabindex="0" role="button" aria-label="Go to slide 1" style="left: 12px;" aria-current="true"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active-next" tabindex="0" role="button" aria-label="Go to slide 2" style="left: 12px;"></span></div>
            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div><div class="google-auto-placed" style="width: 100%; height: auto; clear: both; text-align: center;"><ins data-ad-format="auto" class="adsbygoogle adsbygoogle-noablate" data-ad-client="ca-pub-8635360583374491" data-adsbygoogle-status="done" style="display: block; margin: 10px auto; background-color: transparent; height: 280px;" data-ad-status="filled"><div id="aswift_1_host" style="border: none; height: 280px; width: 1200px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-block; overflow: visible;"><iframe id="aswift_1" name="aswift_1" browsingtopics="true" style="left:0;position:absolute;top:0;border:0;width:1200px;height:280px;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" width="1200" height="280" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allow="attribution-reporting; run-ad-auction" src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-8635360583374491&amp;output=html&amp;h=280&amp;adk=3809598800&amp;adf=54630664&amp;pi=t.aa~a.714188037~rp.4&amp;w=1200&amp;abgtt=6&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1725762455&amp;rafmt=1&amp;to=qs&amp;pwprc=2647023221&amp;format=1200x280&amp;url=https%3A%2F%2Fkhachsandanang.com.vn%2F&amp;fwr=0&amp;pra=3&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;fa=40&amp;uach=WyJtYWNPUyIsIjE1LjAuMCIsImFybSIsIiIsIjEyOC4wLjY2MTMuMTIwIixudWxsLDAsbnVsbCwiNjQiLFtbIkNocm9taXVtIiwiMTI4LjAuNjYxMy4xMjAiXSxbIk5vdDtBPUJyYW5kIiwiMjQuMC4wLjAiXSxbIkdvb2dsZSBDaHJvbWUiLCIxMjguMC42NjEzLjEyMCJdXSwwXQ..&amp;dt=1725762455265&amp;bpp=1&amp;bdt=23&amp;idt=30&amp;shv=r20240904&amp;mjsv=m202409030101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Df0a15a04eb58910d%3AT%3D1725762277%3ART%3D1725762277%3AS%3DALNI_MYsSQikCLBxwgVufPrD5GFhlMTW7Q&amp;gpic=UID%3D00000ef372a2eb6e%3AT%3D1725762277%3ART%3D1725762277%3AS%3DALNI_MZkgEWjMdZub-yiFGlgQ8WrJJ5g0g&amp;eo_id_str=ID%3Dab3603c34199b8e8%3AT%3D1725762277%3ART%3D1725762277%3AS%3DAA-Afjb_VB_dwcYkIIV3hq8uVhCR&amp;prev_fmts=0x0&amp;nras=2&amp;correlator=1227414102788&amp;frm=20&amp;pv=1&amp;u_tz=420&amp;u_his=4&amp;u_h=982&amp;u_w=1512&amp;u_ah=950&amp;u_aw=1512&amp;u_cd=30&amp;u_sd=2&amp;dmc=8&amp;adx=-16232&amp;ady=510&amp;biw=1502&amp;bih=857&amp;scr_x=0&amp;scr_y=0&amp;eid=44759876%2C44759927%2C44759837%2C31086547%2C31086638%2C31086709%2C42532524%2C44795922%2C95331687%2C95336912%2C95338227%2C95341662%2C95340844&amp;oid=2&amp;pvsid=2673683751786071&amp;tmod=2015047405&amp;uas=0&amp;nvt=1&amp;ref=https%3A%2F%2Fkhachsandanang.com.vn%2Fgioi-thieu.html&amp;fc=1920&amp;brdim=0%2C125%2C0%2C125%2C1512%2C32%2C1512%2C857%2C1512%2C857&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=128&amp;bc=31&amp;bz=1&amp;td=1&amp;tdf=2&amp;psd=W251bGwsbnVsbCxudWxsLDNd&amp;nt=1&amp;ifi=2&amp;uci=a!2&amp;fsb=1&amp;dtd=32" data-google-container-id="a!2" tabindex="0" title="Advertisement" aria-label="Advertisement" data-google-query-id="CNLlgJGmsogDFV7tFgUditYVBg" data-load-complete="true"></iframe></div></ins></div>

        <div class="container" style="z-index:6; clear: both; position: relative;">
            <div class="searchbox">
                <h2 class="pt-1"><span>Tìm kiếm khách sạn</span></h2>


                <form action="search?index=1" method="post">
                    <div class="hidden">
                        <input type="hidden" name="token" value="4da432ec08763d652367d13663781d3a">
                    </div>              <div class="container">
                        <div class="row" >
                            <div class="col-md mb-2">
                                <label class="form-label">Khách sạn</label>
                                <input type="text" name="search" class="key form-control" aria-label="Tên khách sạn" placeholder="Tên khách sạn">
                            </div>
                            <div class="col-md mb-2">
                                <div class="input-group">
                                    <input type="text" name="n_begin" id="n_begin" class="form-control" placeholder="Ngày đến">
                                    <span class="input-group-text"><i class="fa fa-calendar-alt"></i></span>
                                </div>
                            </div>

                            <div class="col-md mb-2">
                                <div class="input-group">
                                    <input type="text" name="n_end" id="n_end" class="form-control" placeholder="Ngày đi">
                                    <span class="input-group-text"><i class="fa fa-calendar-alt"></i></span>
                                </div>
                            </div>
                            <div class="col-md-1 mb-2">
                                <button type="submit" aria-label="Tìm kiếm " id="change_date"><i class="fa fa-search"></i></button>   

                            </div>

                        </div>
                    </div>


                </form>            </div>
        </div>

    </body>
</script><link rel="stylesheet" href="https://khachsandanang.com.vn/templates/swiper/swiper-bundle.min.css">
<script src="https://khachsandanang.com.vn/templates/swiper/swiper-bundle.min.js"></script>

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

    $(document).ready(function () {
        // Ensure jQuery UI is loaded
        if ($.datepicker) {
            $("#n_begin, #n_end").datepicker({
                dateFormat: "dd-mm-yy",
                minDate: 0,
                changeMonth: true,
                changeYear: true
            });

            $("#n_begin").datepicker("option", "onSelect", function (selectedDate) {
                var minDate = $(this).datepicker('getDate');
                minDate.setDate(minDate.getDate() + 1);
                $("#n_end").datepicker("option", "minDate", minDate);
            });

            $("#n_end").datepicker("option", "minDate", 1);

            // Initialize datepickers with placeholder text
            $("#n_begin").attr("placeholder", "Ngày đến");
            $("#n_end").attr("placeholder", "Ngày đi");

            // Remove the readonly attribute
            $("#n_begin, #n_end").removeAttr("readonly");

            console.log("Datepickers initialized");
        } else {
            console.error("jQuery UI Datepicker not loaded");
        }
    });

</script>
</html>
