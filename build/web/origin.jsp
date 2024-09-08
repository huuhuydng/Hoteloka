<%-- 
    Document   : home
    Created on : Sep 8, 2024, 12:40:58 PM
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
    <header class="">
    


        <div class="logo">
            <a title="Phan Gia Huy" href="https://khachsandanang.com.vn/"><img src="https://khachsandanang.com.vn/templates/images/logo.png"></a>
        </div>

    <div class="clearfix"></div>
    <div id="menu_container">

        <ul class="menu">

            <li><a class="active" href="https://khachsandanang.com.vn/"><i class="fa fa-home"></i> Trang chủ</a></li>
            <li><a href="https://khachsandanang.com.vn/gioi-thieu.html"><i class="fa fa-address-card"></i> Giới thiệu</a></li>
            <li><a href="https://khachsandanang.com.vn/khach-san-da-nang.html"><i class="fa fa-building"></i> Khách sạn</a></li>

            <li><a href="https://khachsandanang.com.vn/phong-hoi-nghi-hoi-thao.html"><i class="fa fa-building"></i> Phòng hội nghị - hội thảo</a></li>
            <li><a href="https://khachsandanang.com.vn/thong-tin-du-lich.html"><i class="fa fa-book"></i> Thông tin du lịch</a></li>
            <li><a href="https://khachsandanang.com.vn/lien-he.html"><i class="fa fa-envelope"></i> Liên hệ</a></li>
        </ul>

        <div class="contact-us">
            <span><i class="fa fa-phone"></i><span>0899767588 </span></span>

        </div>

        <div class="open_btn">
            <i class="fa fa-bars fa-2x"></i>
        </div>



        <div class="clearfix"></div>

    </div>


</header>

<style>


            /*---Header---*/
            header {
                float:left;
                width:100vw;
                height:80px;
                position: fixed;
                padding: 0 100px;
                z-index: 7;
                transition: all .3s;
                background: white
            }
            header .current {
                color:#0da0f4 !important;
            }
            .fix_top {
                background: white;
                transition: all .3s;
                z-index: 7;
                box-shadow: 0px 8px 8px rgb(0 0 0 / 6%);
                height: 60px;
            }
            .fix_top .menu>li {
            }
            .fix_top .menu>li>a {
                color: #333;
                padding:25px 10px
            }
            .fix_top .logo img {
                filter: none;
                height: 50px;
            }
            .fix_top .contact-us {
                color: #333;
                font-weight: 500;
                padding: 25px 100px 0 25px
            }
            .fix_top .open_btn {
                top: 3px;
                transition: all .3s;
            }
            .fix_top .open_btn i {
                color: black
            }
            .fix_top .menu-seperate {
                color: black
            }

            .logo {
                float:left;
            }
            .logo img {
                height:70px;
                transition:all .3s;
                margin-top: 5px;
                position:relative;
            }
            #menu_container {
                float:left;
                width:100%;
                margin-top: -70px;
                padding:9px 0
            }

            .contact-us {
                float: right;
                color: black;
                padding: 15px 15px 0 15px
            }
            .contact-us i {
                margin-right: 10px
            }
            .contact-us>span {
                margin-left: 20px
            }
            .menu {
                list-style:none;
                float:left;
                margin-bottom:0;
                margin-left: 100px
            }
            .menu>li {
                float:left;
                list-style: none;
            }
            .menu>li>a {
                padding:15px 15px;
                font-size: 16px;
                display:block;
                color:black;
                font-weight: 500;
                text-decoration: none;
            }
            .menu .active,.menu>li>a:hover {
                color:var(--pink);
            }
            .menu>li:hover > .menucon {
                display:block;
                transition:all .3s
            }
            .menu .menu-seperate {
                color: white
            }


            .menucon {
                min-width:140px;
                position:absolute;
                padding:10px;
                z-index:999;
                display:none;
                background:white;
                margin-top:0px;
                box-shadow: 0px 8px 8px rgb(0 0 0 / 6%);
                border-radius: 5px;
            }
            .menucon>li {
                position:relative;
                padding:1px 2px;
                width:100%;
                min-width:150px;
                text-align:left;
                line-height: 25px;
                list-style: none;
            }
            .menucon>li>a {
                padding:3px 0;
                color:#666;
                text-decoration: none;
            }
            .menucon>li>a:hover {
                color: #f06e00;
            }
            .menucon>li:hover .menulv3 {
                display:block
            }

            .menucon2>li>a {
                text-decoration: none;
                color: var(--blue)
            }

            .open_btn {
                position: absolute;
                right: 10px;
                top: 15px;
                font-size:16px;
                z-index: 99999;
                margin:12px 15px 0 0;
                transition: all .3s;
            }
            .open_btn i {
                color:black;
                cursor: pointer
            }
            .open_btn:hover i{
                color:var(--pink);
            }
            .close_btn {
                margin:15px;
                float:left;
                cursor: pointer;
                color: black
            }
            .close_btn:hover {
                color:var(--pink)
            }

            /*-----Menu mobile-----*/
            .menu_mobile {
                right:-100%;
                width:300px;
                top:0;
                transition:all .3s;
                height:100%;
                background:white;
                float:right;
                position:fixed;
                z-index:99999999;
                overflow:auto
            }
            .show {
                right:0;
                transition:all .3s;
                box-shadow: 0 0 0 10000px rgba(0,0,0,.3);
                /* for real browsers */
                box-shadow: 0 0 0 100vmax rgba(0,0,0,.3);
            }


            .menu_mobile a {
                color:#666
            }
            .menu_mobile>ul {
                width:100%;
                float:left;
                font-size:16px;
                padding:15px;
                list-style: none
            }

            .menu_mobile>ul>li>a {
                display:block;
                margin-bottom:-1px;
                width:100%;
                padding:15px 0;
            }
            .menu_mobile>ul>li>a i {
                width: 30px;
                color: var(--pink)
            }
            .menu_mobile>ul>li>a:hover, .menu_mobile .active  {
                background: #edf6f9;
                text-decoration:none;
                width:100%;
                color:var(--blue)
            }
            .menu_mobile>ul>li>ul {
                margin-left:10px;
            }
            .menu_mobile>ul>li>ul>li>a {
                color:#999
            }

            /*-----Media 767px-----*/
            @media screen and (max-width:1366px) {
                .menu>li>a {
                    padding: 15px 10px
                }
                .contact-us {
                    display: none;
                }
            }


            /*-----Media 767px-----*/
            @media screen and (max-width:991px) {
                header {
                    padding-left: 10px;
                    padding-right: 10px;
                }
                .menu {
                    display: none;
                }
                .open_btn {
                    display:block
                }
            }

            /*-----Media 767px-----*/
            @media screen and (max-width:767px) {


            }

            /*-----Media 767px-----*/
            @media screen and (max-width:500px) {
                .contact-us {
                    display: none;
                }

            }
</style>


<div class="swiper swiper-initialized swiper-horizontal swiper-backface-hidden" id="home-slide" style="--swiper-pagination-bullet-size:16px; --swiper-navigation-color:white; --swiper-pagination-color:white">
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

</style>


<div class="container" style="z-index:6; clear: both; position: relative;">
      <div class="searchbox">
        <h2 class="pt-1"><span>Tìm kiếm khách sạn</span></h2>


              <form action="https://khachsandanang.com.vn/home/search" method="post" accept-charset="utf-8">
<div class="hidden">
<input type="hidden" name="token" value="4da432ec08763d652367d13663781d3a">
</div>              <div class="container">
            <div class="row">
                <div class="col-md mb-2">
                  <label class="form-label">Tỉnh/Thành phố</label>
                  <div class="input-group">
                        <select name="city_id" class="form-control" aria-label="Tỉnh thành">


                            <option value="1">Đà Nẵng</option>
                                                    </select>
                    </div>
                </div>
                <div class="col-md mb-2">
                  <label class="form-label">Khách sạn</label>
                  <input type="text" name="key" class="key form-control" aria-label="Tên khách sạn" placeholder="Tên khách sạn">
                </div>
                <div class="col-md mb-2">
                  <label class="form-label">Ngày đến</label>
                  <div class="input-group">
                    <input type="text" name="n_begin" aria-label="Ngày đến" id="n_begin" class="form-control hasDatepicker" readonly="readonly" value="08-09-2024">
                    <span class="input-group-text"><i class="fa fa-calendar-alt"></i></span>
                  </div>
                </div>

                <div class="col-md mb-2">
                  <label class="form-label">Ngày đi</label>
                  <div class="input-group">
                    <input type="text" name="n_end" aria-label="Ngày đi" id="n_end" class="form-control hasDatepicker" readonly="readonly" value="09-09-2024">
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







<div class="clearfix"></div>

            <div class="container-fuild" id="home">

<div class="hotel-filter-button"><span>Lọc khách sạn</span></div>
<div class="hotel-filter">



    <script type="text/javascript">
        var uri_page = 'https://khachsandanang.com.vn/khach-san.html'; </script>
<div class="mod">

    <h3 class="mt">Hạng khách sạn</h3>
    <div class="filter-search modc">
        <ul class="stars_otp">
                        <li>
                <a href="javascript:;" data_id="5" class="hotp ">
                    <span class="stars" style="float: left;width: 100px;">
                                                <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                            </span>
                </a>
            </li>
                        <li>
                <a href="javascript:;" data_id="4" class="hotp ">
                    <span class="stars" style="float: left;width: 100px;">
                                                <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                            </span>
                </a>
            </li>
                        <li>
                <a href="javascript:;" data_id="3" class="hotp ">
                    <span class="stars" style="float: left;width: 100px;">
                                                <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                            </span>
                </a>
            </li>
                        <li>
                <a href="javascript:;" data_id="2" class="hotp ">
                    <span class="stars" style="float: left;width: 100px;">
                                                <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                            </span>
                </a>
            </li>
                        <li>
                <a href="javascript:;" data_id="1" class="hotp ">
                    <span class="stars" style="float: left;width: 100px;">
                                                <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                            </span>
                </a>
            </li>
                    </ul>
    </div>

                    <div class="otp">
        <h3 class="mt">Tiện nghi khách sạn <i id_div="div_1" class="up"></i></h3>
        <div id="div_1" class="filter-search modc" style="display: none;">
            <ul>
                                <li><a href="javascript:;" data_id="5" class="hotp ">Câu lạc bộ đêm</a></li>
                                <li><a href="javascript:;" data_id="6" class="hotp ">Cho phép mang theo vật nuôi</a></li>
                                <li><a href="javascript:;" data_id="7" class="hotp ">Cho thuê xe đạp</a></li>
                                <li><a href="javascript:;" data_id="8" class="hotp ">Cửa hàng lưu niệm</a></li>
                                <li><a href="javascript:;" data_id="9" class="hotp ">Dịch vụ ăn tại phòng 24 giờ</a></li>
                                <li><a href="javascript:;" data_id="10" class="hotp ">Dịch vụ du lịch</a></li>
                                <li><a href="javascript:;" data_id="11" class="hotp ">Dịch vụ đưa đón</a></li>
                                <li><a href="javascript:;" data_id="12" class="hotp ">Dịch vụ giặt là/giặt khô</a></li>
                                <li><a href="javascript:;" data_id="13" class="hotp ">Dịch vụ Internet</a></li>
                                <li><a href="javascript:;" data_id="14" class="hotp ">Dịch vụ làm đẹp</a></li>
                                <li><a href="javascript:;" data_id="15" class="hotp ">Dịch vụ trông trẻ</a></li>
                                <li><a href="javascript:;" data_id="16" class="hotp ">Đưa đón khách sạn/sân bay</a></li>
                                <li><a href="javascript:;" data_id="17" class="hotp ">Két sắt</a></li>
                                <li><a href="javascript:;" data_id="18" class="hotp ">Người vận chuyển hành lý</a></li>
                                <li><a href="javascript:;" data_id="19" class="hotp ">Nhà hàng</a></li>
                                <li><a href="javascript:;" data_id="20" class="hotp ">Phòng gia đình</a></li>
                                <li><a href="javascript:;" data_id="21" class="hotp ">Phòng hút thuốc</a></li>
                                <li><a href="javascript:;" data_id="22" class="hotp ">Phục vụ ăn tại phòng</a></li>
                                <li><a href="javascript:;" data_id="23" class="hotp ">Quán bar</a></li>
                                <li><a href="javascript:;" data_id="24" class="hotp ">Quán bar cạnh bể bơi</a></li>
                                <li><a href="javascript:;" data_id="25" class="hotp ">Quán cà phê</a></li>
                                <li><a href="javascript:;" data_id="26" class="hotp ">Sòng bài</a></li>
                                <li><a href="javascript:;" data_id="27" class="hotp ">Tầng cao cấp</a></li>
                                <li><a href="javascript:;" data_id="28" class="hotp ">Thang máy</a></li>
                                <li><a href="javascript:;" data_id="29" class="hotp ">Thiết bị cho người tàn tật</a></li>
                                <li><a href="javascript:;" data_id="30" class="hotp ">Thiết bị phòng họp</a></li>
                                <li><a href="javascript:;" data_id="31" class="hotp ">Wi-Fi ở khu vực công cộng</a></li>
                            </ul>
        </div>
    </div>
        <div class="otp">
        <h3 class="mt">Loại Khách sạn <i id_div="div_56" class="up"></i></h3>
        <div id="div_56" class="filter-search modc" style="display: none;">
            <ul>
                                <li><a href="javascript:;" data_id="57" class="hotp ">Resort</a></li>
                                <li><a href="javascript:;" data_id="58" class="hotp ">Khách sạn</a></li>
                                <li><a href="javascript:;" data_id="59" class="hotp ">Nhà nghỉ</a></li>
                                <li><a href="javascript:;" data_id="60" class="hotp ">Căn hộ</a></li>
                            </ul>
        </div>
    </div>
        <div class="otp">
        <h3 class="mt">Thể thao và giải trí <i id_div="div_2" class="up"></i></h3>
        <div id="div_2" class="filter-search modc" style="display: none;">
            <ul>
                                <li><a href="javascript:;" data_id="32" class="hotp ">Bãi biển riêng</a></li>
                                <li><a href="javascript:;" data_id="33" class="hotp ">Bể bơi (trẻ em)</a></li>
                                <li><a href="javascript:;" data_id="34" class="hotp ">Bể bơi trong nhà</a></li>
                                <li><a href="javascript:;" data_id="35" class="hotp ">Bể bơi ngoài trời</a></li>
                                <li><a href="javascript:;" data_id="36" class="hotp ">Bể sục</a></li>
                                <li><a href="javascript:;" data_id="37" class="hotp ">Câu lạc bộ trẻ em</a></li>
                                <li><a href="javascript:;" data_id="38" class="hotp ">Mát xa</a></li>
                                <li><a href="javascript:;" data_id="39" class="hotp ">Phòng tắm hơi</a></li>
                                <li><a href="javascript:;" data_id="40" class="hotp ">Phòng thể dục</a></li>
                                <li><a href="javascript:;" data_id="41" class="hotp ">Phòng trò chơi</a></li>
                                <li><a href="javascript:;" data_id="42" class="hotp ">Sân chơi golf (trong vòng 3km)</a></li>
                                <li><a href="javascript:;" data_id="43" class="hotp ">Sân chơi squash</a></li>
                                <li><a href="javascript:;" data_id="44" class="hotp ">Sân gôn (tại chỗ)</a></li>
                                <li><a href="javascript:;" data_id="45" class="hotp ">Sân tennis</a></li>
                                <li><a href="javascript:;" data_id="46" class="hotp ">Spa</a></li>
                                <li><a href="javascript:;" data_id="47" class="hotp ">Tắm hơi</a></li>
                                <li><a href="javascript:;" data_id="48" class="hotp ">Tắm nước khoáng nóng</a></li>
                                <li><a href="javascript:;" data_id="49" class="hotp ">Thể thao dưới nước (có động cơ)</a></li>
                                <li><a href="javascript:;" data_id="50" class="hotp ">Thể thao dưới nước (không có động cơ)</a></li>
                                <li><a href="javascript:;" data_id="51" class="hotp ">Vườn</a></li>
                            </ul>
        </div>
    </div>
        <div class="otp">
        <h3 class="mt">Truy cập Internet trong phòng <i id_div="div_3" class="up"></i></h3>
        <div id="div_3" class="filter-search modc" style="display: none;">
            <ul>
                                <li><a href="javascript:;" data_id="52" class="hotp ">Truy cập mạng LAN và WiFi miễn phí </a></li>
                            </ul>
        </div>
    </div>
        <div class="otp">
        <h3 class="mt">Đậu xe <i id_div="div_4" class="up"></i></h3>
        <div id="div_4" class="filter-search modc" style="display: none;">
            <ul>
                                <li><a href="javascript:;" data_id="53" class="hotp ">Bãi đỗ xe</a></li>
                                <li><a href="javascript:;" data_id="54" class="hotp ">Dịch vụ trông xe</a></li>
                            </ul>
        </div>
    </div>
    </div>

             <div class="">


            <div class="module-content">
                                                    <p><strong><a href="https://danatravel.vn/tour-hang-ngay/tour-du-lich-cu-lao-cham.html" target="_blank" title="tour cù lao chàm 1 ngày">Tour Cù Lao Chàm 1 ngày</a></strong>,&nbsp;<a href="https://danatravel.vn/tour-du-lich/tour-da-nang-hue-trong-ngay.html" target="_blank">Tour Đà Nẵng Huế</a>, <a href="https://danatravel.vn/tour-du-lich/tour-da-nang-hoi-an.html" target="_blank">Tour Đà Nẵng Hội An</a>, <strong><a href="https://danatravel.vn/tour-du-lich/tour-ghep-da-nang-3-ngay-2-dem.html" target="_blank" title="Tour Đà Nẵng 3 ngày 2 đêm">Tour Đà Nẵng 3 ngày 2 đêm</a></strong>,&nbsp;<a href="https://danatravel.vn/tour-da-nang/tour-da-nang-5-ngay-4-dem.html" target="_blank" title="Tour Đà Nẵng 5 ngày 4 đêm">Tour Đà Nẵng 5 ngày 4 đêm</a>, <a href="http://thuexeotodanang.com.vn/thue-xe-du-lich/cho-thue-xe-16-cho.html" target="_blank" title="Thuê xe 16 chỗ đà nẵng">Thuê xe 16 chỗ Đà Nẵng</a>, <a href="https://danatravel.vn/tour-du-lich/tour-chua-huong-1-ngay.html">tour chùa hương 1 ngày</a>,<strong>&nbsp;<a href="https://danatravel.vn/tour-hang-ngay/tour-du-lich-ba-na.html" title="tour bà nà hill"><span style="color:#FF8C00">tour bà nà hill</span></a><span style="color:#FF8C00">,</span> <a href="https://danatravel.vn/tour-du-lich/tour-du-lich-ba-na-1-ngay-gia-re.html">tour bà nà giá rẻ</a>, <a href="https://danatravel.vn/tour-du-lich/tour-ba-na-hang-ngay.html">tour bà nà 1 ngày</a>, </strong><a href="https://danatravel.vn/tour-du-lich/tour-du-lich-ha-noi-di-mai-chau-moc-chau-2-ngay-1-dem.html" title="tour mộc châu 2 ngày 1 đêm">tour Mộc Châu 2 ngày 1 đêm</a>,&nbsp;</p>

            </div>
        </div>              
                 <div class="">


            <div class="module-content">
                                    <div class="width100" style="overflow:hidden; margin-top:10px">
<div class="fb-page" data-href="https://www.facebook.com/PhongKhachSanDaNang" data-width="500px" data-height="500px" data-tabs="timeline" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
    <blockquote cite="https://www.facebook.com/PhongKhachSanDaNang" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/PhongKhachSanDaNang">Facebook</a></blockquote>
</div>
</div>



            </div>
        </div>              

</div>

<div class="container-fuild"> 
    <div style="color-scheme: initial !important; forced-color-adjust: initial !important; mask: initial !important; math-depth: initial !important; position: initial !important; position-anchor: initial !important; text-size-adjust: initial !important; appearance: initial !important; color: initial !important; font: initial !important; font-palette: initial !important; font-synthesis: initial !important; inset-area: initial !important; text-orientation: initial !important; text-rendering: initial !important; text-spacing-trim: initial !important; -webkit-font-smoothing: initial !important; -webkit-locale: initial !important; -webkit-text-orientation: initial !important; -webkit-writing-mode: initial !important; writing-mode: initial !important; zoom: initial !important; accent-color: initial !important; place-content: initial !important; place-items: initial !important; place-self: initial !important; alignment-baseline: initial !important; anchor-name: initial !important; animation-composition: initial !important; animation: initial !important; app-region: initial !important; aspect-ratio: initial !important; backdrop-filter: initial !important; backface-visibility: initial !important; background: initial !important; background-blend-mode: initial !important; baseline-shift: initial !important; baseline-source: initial !important; block-size: initial !important; border-block: initial !important; border: initial !important; border-radius: initial !important; border-collapse: initial !important; border-end-end-radius: initial !important; border-end-start-radius: initial !important; border-inline: initial !important; border-start-end-radius: initial !important; border-start-start-radius: initial !important; inset: initial !important; box-shadow: initial !important; box-sizing: initial !important; break-after: initial !important; break-before: initial !important; break-inside: initial !important; buffered-rendering: initial !important; caption-side: initial !important; caret-color: initial !important; clear: initial !important; clip: initial !important; clip-path: initial !important; clip-rule: initial !important; color-interpolation: initial !important; color-interpolation-filters: initial !important; color-rendering: initial !important; columns: initial !important; column-fill: initial !important; gap: initial !important; column-rule: initial !important; column-span: initial !important; contain: initial !important; contain-intrinsic-block-size: initial !important; contain-intrinsic-size: initial !important; contain-intrinsic-inline-size: initial !important; container: initial !important; content: initial !important; content-visibility: initial !important; counter-increment: initial !important; counter-reset: initial !important; counter-set: initial !important; cursor: initial !important; cx: initial !important; cy: initial !important; d: initial !important; display: initial !important; dominant-baseline: initial !important; empty-cells: initial !important; field-sizing: initial !important; fill: initial !important; fill-opacity: initial !important; fill-rule: initial !important; filter: initial !important; flex: initial !important; flex-flow: initial !important; float: initial !important; flood-color: initial !important; flood-opacity: initial !important; grid: initial !important; grid-area: initial !important; height: initial !important; hyphenate-character: initial !important; hyphenate-limit-chars: initial !important; hyphens: initial !important; image-orientation: initial !important; image-rendering: initial !important; initial-letter: initial !important; inline-size: initial !important; inset-block: initial !important; inset-inline: initial !important; isolation: initial !important; letter-spacing: initial !important; lighting-color: initial !important; line-break: initial !important; list-style: initial !important; margin-block: initial !important; margin: initial !important; margin-inline: initial !important; marker: initial !important; mask-type: initial !important; math-shift: initial !important; math-style: initial !important; max-block-size: initial !important; max-height: initial !important; max-inline-size: initial !important; max-width: initial !important; min-block-size: initial !important; min-height: initial !important; min-inline-size: initial !important; min-width: initial !important; mix-blend-mode: initial !important; object-fit: initial !important; object-position: initial !important; object-view-box: initial !important; offset: initial !important; opacity: initial !important; order: initial !important; orphans: initial !important; outline: initial !important; outline-offset: initial !important; overflow-anchor: initial !important; overflow-clip-margin: initial !important; overflow-wrap: initial !important; overflow: initial !important; overlay: initial !important; overscroll-behavior-block: initial !important; overscroll-behavior-inline: initial !important; overscroll-behavior: initial !important; padding-block: initial !important; padding: initial !important; padding-inline: initial !important; page: initial !important; page-orientation: initial !important; paint-order: initial !important; perspective: initial !important; perspective-origin: initial !important; pointer-events: initial !important; position-try: initial !important; position-visibility: initial !important; quotes: initial !important; r: initial !important; resize: initial !important; rotate: initial !important; ruby-align: initial !important; ruby-position: initial !important; rx: initial !important; ry: initial !important; scale: initial !important; scroll-behavior: initial !important; scroll-margin-block: initial !important; scroll-margin: initial !important; scroll-margin-inline: initial !important; scroll-padding-block: initial !important; scroll-padding: initial !important; scroll-padding-inline: initial !important; scroll-snap-align: initial !important; scroll-snap-stop: initial !important; scroll-snap-type: initial !important; scroll-timeline: initial !important; scrollbar-color: initial !important; scrollbar-gutter: initial !important; scrollbar-width: initial !important; shape-image-threshold: initial !important; shape-margin: initial !important; shape-outside: initial !important; shape-rendering: initial !important; size: initial !important; speak: initial !important; stop-color: initial !important; stop-opacity: initial !important; stroke: initial !important; stroke-dasharray: initial !important; stroke-dashoffset: initial !important; stroke-linecap: initial !important; stroke-linejoin: initial !important; stroke-miterlimit: initial !important; stroke-opacity: initial !important; stroke-width: initial !important; tab-size: initial !important; table-layout: initial !important; text-align: initial !important; text-align-last: initial !important; text-anchor: initial !important; text-combine-upright: initial !important; text-decoration: initial !important; text-decoration-skip-ink: initial !important; text-emphasis: initial !important; text-emphasis-position: initial !important; text-indent: initial !important; text-overflow: initial !important; text-shadow: initial !important; text-transform: initial !important; text-underline-offset: initial !important; text-underline-position: initial !important; white-space: initial !important; timeline-scope: initial !important; touch-action: initial !important; transform: initial !important; transform-box: initial !important; transform-origin: initial !important; transform-style: initial !important; transition: initial !important; translate: initial !important; user-select: initial !important; vector-effect: initial !important; vertical-align: initial !important; view-timeline: initial !important; view-transition-class: initial !important; view-transition-name: initial !important; visibility: initial !important; border-spacing: initial !important; -webkit-box-align: initial !important; -webkit-box-decoration-break: initial !important; -webkit-box-direction: initial !important; -webkit-box-flex: initial !important; -webkit-box-ordinal-group: initial !important; -webkit-box-orient: initial !important; -webkit-box-pack: initial !important; -webkit-box-reflect: initial !important; -webkit-line-break: initial !important; -webkit-line-clamp: initial !important; -webkit-mask-box-image: initial !important; -webkit-print-color-adjust: initial !important; -webkit-rtl-ordering: initial !important; -webkit-ruby-position: initial !important; -webkit-tap-highlight-color: initial !important; -webkit-text-combine: initial !important; -webkit-text-decorations-in-effect: initial !important; -webkit-text-fill-color: unset !important; -webkit-text-security: initial !important; -webkit-text-stroke: initial !important; -webkit-user-drag: initial !important; widows: initial !important; width: initial !important; will-change: initial !important; word-break: initial !important; word-spacing: initial !important; x: initial !important; y: initial !important; z-index: initial !important;"></div><div class="container py-3">


        <div class="row">
            <h2 class="heading-home"><span>Khách sạn nổi bật</span></h2>

            <div class="swiper swiper-initialized swiper-horizontal swiper-backface-hidden" id="hot">
                <div class="swiper-wrapper" id="swiper-wrapper-bc54e5891024985f1" aria-live="off" style="transition-duration: 300ms; transform: translate3d(-290px, 0px, 0px);">








                <div class="swiper-slide swiper-slide-prev" role="group" aria-label="4 / 5" data-swiper-slide-index="3" style="width: 270px; margin-right: 20px;">
                        <div class="hotel">
                            <div class="img">
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang/king-house-villa-410.html">
                                <img original="https://khachsandanang.com.vn/data/hotel/300/king-1587018746.jpg" src="https://khachsandanang.com.vn/data/hotel/300/king-1587018746.jpg" alt="KING HOUSE VILLA">
                                </a>

                            </div>
                            <div class="info">
                                <h3 class="title"><a href="https://khachsandanang.com.vn/khach-san-da-nang/king-house-villa-410.html">KING HOUSE VILLA</a></h3>
                                <span class="map"><a href="https://khachsandanang.com.vn/khach-san-da-nang.html">Đà Nẵng</a>  •  <a href="https://khachsandanang.com.vn/api/viewmap/410.html" class="show_map">Bản đồ</a></span><br>
                                <span class="stars">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                    </span><br>
                                <span class="address">
                                    <em>25 Mỹ Khê 1, Phước Mỹ, Sơn Trà, TP Đà Nẵng</em>
                                </span>

                                <a class="readmore" title="Book now" href="https://khachsandanang.com.vn/khach-san-da-nang/king-house-villa-410.html">Chi tiết</a>
                                <span class="price">
                                    Giá: <span class="price_day">750.000</span> đ                                </span>
                            </div>

                        </div>
                    </div><div class="swiper-slide swiper-slide-active" role="group" aria-label="5 / 5" data-swiper-slide-index="4" style="width: 270px; margin-right: 20px;">
                        <div class="hotel">
                            <div class="img">
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-royal-lotus-250.html">
                                <img original="https://khachsandanang.com.vn/data/hotel/300/royal-lotus1-1562896238.jpg" src="https://khachsandanang.com.vn/data/hotel/300/royal-lotus1-1562896238.jpg" alt="Khách sạn Royal Lotus">
                                </a>

                            </div>
                            <div class="info">
                                <h3 class="title"><a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-royal-lotus-250.html">Khách sạn Royal Lotus</a></h3>
                                <span class="map"><a href="https://khachsandanang.com.vn/khach-san-da-nang.html">Đà Nẵng</a>  •  <a href="https://khachsandanang.com.vn/api/viewmap/250.html" class="show_map">Bản đồ</a></span><br>
                                <span class="stars">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                    </span><br>
                                <span class="address">
                                    <em> 120 Nguyễn Văn Thoại, Bắc Mỹ An, Ngũ Hành Sơn, Đà Nẵng, Việt Nam</em>
                                </span>

                                <a class="readmore" title="Book now" href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-royal-lotus-250.html">Chi tiết</a>
                                <span class="price">
                                    Giá: <span class="price_day">1.640.000</span> đ                                </span>
                            </div>

                        </div>
                    </div><div class="swiper-slide swiper-slide-next" role="group" aria-label="1 / 5" data-swiper-slide-index="0" style="width: 270px; margin-right: 20px;">
                        <div class="hotel">
                            <div class="img">
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang/maximilan-danang-beach-hotel-403.html">
                                <img original="https://khachsandanang.com.vn/data/hotel/300/nen-1586512515.jpg" src="https://khachsandanang.com.vn/data/hotel/300/nen-1586512515.jpg" alt="MAXIMILAN DANANG BEACH HOTEL">
                                </a>

                            </div>
                            <div class="info">
                                <h3 class="title"><a href="https://khachsandanang.com.vn/khach-san-da-nang/maximilan-danang-beach-hotel-403.html">MAXIMILAN DANANG BEACH HOTEL</a></h3>
                                <span class="map"><a href="https://khachsandanang.com.vn/khach-san-da-nang.html">Đà Nẵng</a>  •  <a href="https://khachsandanang.com.vn/api/viewmap/403.html" class="show_map">Bản đồ</a></span><br>
                                <span class="stars">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                    </span><br>
                                <span class="address">
                                    <em>222 Võ Nguyên Giáp, Sơn Trà, <a href="#" class="google-anno" style="border: 0px !important; box-shadow: none !important; display: inline !important; float: none !important; margin: 0px !important; outline: 0px !important; padding: 0px !important; text-decoration: none !important; fill: currentcolor !important;"><svg viewBox="100 -1000 840 840" width="calc(14px - 2px)" height="14px" style="color-scheme: initial !important; forced-color-adjust: initial !important; mask: initial !important; math-depth: initial !important; position: initial !important; position-anchor: initial !important; text-size-adjust: initial !important; appearance: initial !important; color: inherit !important; font: initial !important; font-palette: initial !important; font-synthesis: initial !important; inset-area: initial !important; text-orientation: initial !important; text-rendering: initial !important; text-spacing-trim: initial !important; -webkit-font-smoothing: initial !important; -webkit-locale: initial !important; -webkit-text-orientation: initial !important; -webkit-writing-mode: initial !important; writing-mode: initial !important; zoom: initial !important; accent-color: initial !important; place-content: initial !important; place-items: initial !important; place-self: initial !important; alignment-baseline: initial !important; anchor-name: initial !important; animation-composition: initial !important; animation: initial !important; app-region: initial !important; aspect-ratio: initial !important; backdrop-filter: initial !important; backface-visibility: initial !important; background: initial !important; background-blend-mode: initial !important; baseline-shift: initial !important; baseline-source: initial !important; block-size: initial !important; border-block: initial !important; border: 0px !important; border-radius: initial !important; border-collapse: initial !important; border-end-end-radius: initial !important; border-end-start-radius: initial !important; border-inline: initial !important; border-start-end-radius: initial !important; border-start-start-radius: initial !important; inset: initial !important; box-shadow: none !important; box-sizing: initial !important; break-after: initial !important; break-before: initial !important; break-inside: initial !important; buffered-rendering: initial !important; caption-side: initial !important; caret-color: initial !important; clear: initial !important; clip: initial !important; clip-path: initial !important; clip-rule: initial !important; color-interpolation: initial !important; color-interpolation-filters: initial !important; color-rendering: initial !important; columns: initial !important; column-fill: initial !important; gap: initial !important; column-rule: initial !important; column-span: initial !important; contain: initial !important; contain-intrinsic-block-size: initial !important; contain-intrinsic-size: initial !important; contain-intrinsic-inline-size: initial !important; container: initial !important; content: initial !important; content-visibility: initial !important; counter-increment: initial !important; counter-reset: initial !important; counter-set: initial !important; cursor: inherit !important; cx: initial !important; cy: initial !important; d: initial !important; display: inline !important; dominant-baseline: initial !important; empty-cells: initial !important; field-sizing: initial !important; fill: currentcolor !important; fill-opacity: initial !important; fill-rule: initial !important; filter: initial !important; flex: initial !important; flex-flow: initial !important; float: none !important; flood-color: initial !important; flood-opacity: initial !important; grid: initial !important; grid-area: initial !important; height: initial !important; hyphenate-character: initial !important; hyphenate-limit-chars: initial !important; hyphens: initial !important; image-orientation: initial !important; image-rendering: initial !important; initial-letter: initial !important; inline-size: initial !important; inset-block: initial !important; inset-inline: initial !important; isolation: initial !important; letter-spacing: initial !important; lighting-color: initial !important; line-break: initial !important; list-style: initial !important; margin-block: initial !important; margin: 0px !important; margin-inline: initial !important; marker: initial !important; mask-type: initial !important; math-shift: initial !important; math-style: initial !important; max-block-size: initial !important; max-height: initial !important; max-inline-size: initial !important; max-width: initial !important; min-block-size: initial !important; min-height: initial !important; min-inline-size: initial !important; min-width: initial !important; mix-blend-mode: initial !important; object-fit: initial !important; object-position: initial !important; object-view-box: initial !important; offset: initial !important; opacity: initial !important; order: initial !important; orphans: initial !important; outline: 0px !important; outline-offset: initial !important; overflow-anchor: initial !important; overflow-clip-margin: initial !important; overflow-wrap: initial !important; overflow: initial !important; overlay: initial !important; overscroll-behavior-block: initial !important; overscroll-behavior-inline: initial !important; overscroll-behavior: initial !important; padding-block: initial !important; padding: 0px !important; padding-inline: initial !important; page: initial !important; page-orientation: initial !important; paint-order: initial !important; perspective: initial !important; perspective-origin: initial !important; pointer-events: initial !important; position-try: initial !important; position-visibility: initial !important; quotes: initial !important; r: initial !important; resize: initial !important; rotate: initial !important; ruby-align: initial !important; ruby-position: initial !important; rx: initial !important; ry: initial !important; scale: initial !important; scroll-behavior: initial !important; scroll-margin-block: initial !important; scroll-margin: initial !important; scroll-margin-inline: initial !important; scroll-padding-block: initial !important; scroll-padding: initial !important; scroll-padding-inline: initial !important; scroll-snap-align: initial !important; scroll-snap-stop: initial !important; scroll-snap-type: initial !important; scroll-timeline: initial !important; scrollbar-color: initial !important; scrollbar-gutter: initial !important; scrollbar-width: initial !important; shape-image-threshold: initial !important; shape-margin: initial !important; shape-outside: initial !important; shape-rendering: initial !important; size: initial !important; speak: initial !important; stop-color: initial !important; stop-opacity: initial !important; stroke: initial !important; stroke-dasharray: initial !important; stroke-dashoffset: initial !important; stroke-linecap: initial !important; stroke-linejoin: initial !important; stroke-miterlimit: initial !important; stroke-opacity: initial !important; stroke-width: initial !important; tab-size: initial !important; table-layout: initial !important; text-align: initial !important; text-align-last: initial !important; text-anchor: initial !important; text-combine-upright: initial !important; text-decoration: initial !important; text-decoration-skip-ink: initial !important; text-emphasis: initial !important; text-emphasis-position: initial !important; text-indent: initial !important; text-overflow: initial !important; text-shadow: initial !important; text-transform: initial !important; text-underline-offset: initial !important; text-underline-position: initial !important; white-space: initial !important; timeline-scope: initial !important; touch-action: initial !important; transform: initial !important; transform-box: initial !important; transform-origin: initial !important; transform-style: initial !important; transition: initial !important; translate: initial !important; user-select: initial !important; vector-effect: initial !important; vertical-align: initial !important; view-timeline: initial !important; view-transition-class: initial !important; view-transition-name: initial !important; visibility: initial !important; border-spacing: initial !important; -webkit-box-align: initial !important; -webkit-box-decoration-break: initial !important; -webkit-box-direction: initial !important; -webkit-box-flex: initial !important; -webkit-box-ordinal-group: initial !important; -webkit-box-orient: initial !important; -webkit-box-pack: initial !important; -webkit-box-reflect: initial !important; -webkit-line-break: initial !important; -webkit-line-clamp: initial !important; -webkit-mask-box-image: initial !important; -webkit-print-color-adjust: initial !important; -webkit-rtl-ordering: initial !important; -webkit-ruby-position: initial !important; -webkit-tap-highlight-color: initial !important; -webkit-text-combine: initial !important; -webkit-text-decorations-in-effect: initial !important; -webkit-text-fill-color: unset !important; -webkit-text-security: initial !important; -webkit-text-stroke: initial !important; -webkit-user-drag: initial !important; widows: initial !important; width: initial !important; will-change: initial !important; word-break: initial !important; word-spacing: initial !important; x: initial !important; y: initial !important; z-index: initial !important;"><path d="m784-120-252-252q-30 24-69 38t-83 14q-109 0-184.5-75.5t-75.5-184.5q0-109 75.5-184.5t184.5-75.5q109 0 184.5 75.5t75.5 184.5q0 44-14 83t-38 69l252 252-56 56zm-404-280q75 0 127.5-52.5t52.5-127.5q0-75-52.5-127.5t-127.5-52.5q-75 0-127.5 52.5t-52.5 127.5q0 75 52.5 127.5t127.5 52.5z"></path></svg>&nbsp;<span class="google-anno-t" style="border: 0px !important; box-shadow: none !important; display: inline !important; float: none !important; margin: 0px !important; outline: 0px !important; padding: 0px !important; text-decoration: underline dotted !important; color: inherit !important; font-family: inherit !important; font-size: inherit !important; font-style: inherit !important; font-weight: inherit !important;">Đà Nẵng</span></a></em>
                                </span>

                                <a class="readmore" title="Book now" href="https://khachsandanang.com.vn/khach-san-da-nang/maximilan-danang-beach-hotel-403.html">Chi tiết</a>
                                <span class="price">
                                    Giá: <span class="price_day">1.350.000</span> đ                                </span>
                            </div>

                        </div>
                    </div><div class="swiper-slide" role="group" aria-label="2 / 5" data-swiper-slide-index="1" style="width: 270px; margin-right: 20px;">
                        <div class="hotel">
                            <div class="img">
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-muong-thanh-da-nang-114.html">
                                <img original="https://khachsandanang.com.vn/data/hotel/300/muong-thanh1-1562894290.jpg" src="https://khachsandanang.com.vn/data/hotel/300/muong-thanh1-1562894290.jpg" alt="Khách sạn Mường Thanh Đà Nẵng">
                                </a>

                            </div>
                            <div class="info">
                                <h3 class="title"><a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-muong-thanh-da-nang-114.html">Khách sạn Mường Thanh Đà Nẵng</a></h3>
                                <span class="map"><a href="https://khachsandanang.com.vn/khach-san-da-nang.html">Đà Nẵng</a>  •  <a href="https://khachsandanang.com.vn/api/viewmap/114.html" class="show_map">Bản đồ</a></span><br>
                                <span class="stars">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                    </span><br>
                                <span class="address">
                                    <em>962 Ngô Quyền, Q. Sơn Trà, <a href="#" class="google-anno" style="border: 0px !important; box-shadow: none !important; display: inline !important; float: none !important; margin: 0px !important; outline: 0px !important; padding: 0px !important; text-decoration: none !important; fill: currentcolor !important;"><svg viewBox="100 -1000 840 840" width="calc(14px - 2px)" height="14px" style="color-scheme: initial !important; forced-color-adjust: initial !important; mask: initial !important; math-depth: initial !important; position: initial !important; position-anchor: initial !important; text-size-adjust: initial !important; appearance: initial !important; color: inherit !important; font: initial !important; font-palette: initial !important; font-synthesis: initial !important; inset-area: initial !important; text-orientation: initial !important; text-rendering: initial !important; text-spacing-trim: initial !important; -webkit-font-smoothing: initial !important; -webkit-locale: initial !important; -webkit-text-orientation: initial !important; -webkit-writing-mode: initial !important; writing-mode: initial !important; zoom: initial !important; accent-color: initial !important; place-content: initial !important; place-items: initial !important; place-self: initial !important; alignment-baseline: initial !important; anchor-name: initial !important; animation-composition: initial !important; animation: initial !important; app-region: initial !important; aspect-ratio: initial !important; backdrop-filter: initial !important; backface-visibility: initial !important; background: initial !important; background-blend-mode: initial !important; baseline-shift: initial !important; baseline-source: initial !important; block-size: initial !important; border-block: initial !important; border: 0px !important; border-radius: initial !important; border-collapse: initial !important; border-end-end-radius: initial !important; border-end-start-radius: initial !important; border-inline: initial !important; border-start-end-radius: initial !important; border-start-start-radius: initial !important; inset: initial !important; box-shadow: none !important; box-sizing: initial !important; break-after: initial !important; break-before: initial !important; break-inside: initial !important; buffered-rendering: initial !important; caption-side: initial !important; caret-color: initial !important; clear: initial !important; clip: initial !important; clip-path: initial !important; clip-rule: initial !important; color-interpolation: initial !important; color-interpolation-filters: initial !important; color-rendering: initial !important; columns: initial !important; column-fill: initial !important; gap: initial !important; column-rule: initial !important; column-span: initial !important; contain: initial !important; contain-intrinsic-block-size: initial !important; contain-intrinsic-size: initial !important; contain-intrinsic-inline-size: initial !important; container: initial !important; content: initial !important; content-visibility: initial !important; counter-increment: initial !important; counter-reset: initial !important; counter-set: initial !important; cursor: inherit !important; cx: initial !important; cy: initial !important; d: initial !important; display: inline !important; dominant-baseline: initial !important; empty-cells: initial !important; field-sizing: initial !important; fill: currentcolor !important; fill-opacity: initial !important; fill-rule: initial !important; filter: initial !important; flex: initial !important; flex-flow: initial !important; float: none !important; flood-color: initial !important; flood-opacity: initial !important; grid: initial !important; grid-area: initial !important; height: initial !important; hyphenate-character: initial !important; hyphenate-limit-chars: initial !important; hyphens: initial !important; image-orientation: initial !important; image-rendering: initial !important; initial-letter: initial !important; inline-size: initial !important; inset-block: initial !important; inset-inline: initial !important; isolation: initial !important; letter-spacing: initial !important; lighting-color: initial !important; line-break: initial !important; list-style: initial !important; margin-block: initial !important; margin: 0px !important; margin-inline: initial !important; marker: initial !important; mask-type: initial !important; math-shift: initial !important; math-style: initial !important; max-block-size: initial !important; max-height: initial !important; max-inline-size: initial !important; max-width: initial !important; min-block-size: initial !important; min-height: initial !important; min-inline-size: initial !important; min-width: initial !important; mix-blend-mode: initial !important; object-fit: initial !important; object-position: initial !important; object-view-box: initial !important; offset: initial !important; opacity: initial !important; order: initial !important; orphans: initial !important; outline: 0px !important; outline-offset: initial !important; overflow-anchor: initial !important; overflow-clip-margin: initial !important; overflow-wrap: initial !important; overflow: initial !important; overlay: initial !important; overscroll-behavior-block: initial !important; overscroll-behavior-inline: initial !important; overscroll-behavior: initial !important; padding-block: initial !important; padding: 0px !important; padding-inline: initial !important; page: initial !important; page-orientation: initial !important; paint-order: initial !important; perspective: initial !important; perspective-origin: initial !important; pointer-events: initial !important; position-try: initial !important; position-visibility: initial !important; quotes: initial !important; r: initial !important; resize: initial !important; rotate: initial !important; ruby-align: initial !important; ruby-position: initial !important; rx: initial !important; ry: initial !important; scale: initial !important; scroll-behavior: initial !important; scroll-margin-block: initial !important; scroll-margin: initial !important; scroll-margin-inline: initial !important; scroll-padding-block: initial !important; scroll-padding: initial !important; scroll-padding-inline: initial !important; scroll-snap-align: initial !important; scroll-snap-stop: initial !important; scroll-snap-type: initial !important; scroll-timeline: initial !important; scrollbar-color: initial !important; scrollbar-gutter: initial !important; scrollbar-width: initial !important; shape-image-threshold: initial !important; shape-margin: initial !important; shape-outside: initial !important; shape-rendering: initial !important; size: initial !important; speak: initial !important; stop-color: initial !important; stop-opacity: initial !important; stroke: initial !important; stroke-dasharray: initial !important; stroke-dashoffset: initial !important; stroke-linecap: initial !important; stroke-linejoin: initial !important; stroke-miterlimit: initial !important; stroke-opacity: initial !important; stroke-width: initial !important; tab-size: initial !important; table-layout: initial !important; text-align: initial !important; text-align-last: initial !important; text-anchor: initial !important; text-combine-upright: initial !important; text-decoration: initial !important; text-decoration-skip-ink: initial !important; text-emphasis: initial !important; text-emphasis-position: initial !important; text-indent: initial !important; text-overflow: initial !important; text-shadow: initial !important; text-transform: initial !important; text-underline-offset: initial !important; text-underline-position: initial !important; white-space: initial !important; timeline-scope: initial !important; touch-action: initial !important; transform: initial !important; transform-box: initial !important; transform-origin: initial !important; transform-style: initial !important; transition: initial !important; translate: initial !important; user-select: initial !important; vector-effect: initial !important; vertical-align: initial !important; view-timeline: initial !important; view-transition-class: initial !important; view-transition-name: initial !important; visibility: initial !important; border-spacing: initial !important; -webkit-box-align: initial !important; -webkit-box-decoration-break: initial !important; -webkit-box-direction: initial !important; -webkit-box-flex: initial !important; -webkit-box-ordinal-group: initial !important; -webkit-box-orient: initial !important; -webkit-box-pack: initial !important; -webkit-box-reflect: initial !important; -webkit-line-break: initial !important; -webkit-line-clamp: initial !important; -webkit-mask-box-image: initial !important; -webkit-print-color-adjust: initial !important; -webkit-rtl-ordering: initial !important; -webkit-ruby-position: initial !important; -webkit-tap-highlight-color: initial !important; -webkit-text-combine: initial !important; -webkit-text-decorations-in-effect: initial !important; -webkit-text-fill-color: unset !important; -webkit-text-security: initial !important; -webkit-text-stroke: initial !important; -webkit-user-drag: initial !important; widows: initial !important; width: initial !important; will-change: initial !important; word-break: initial !important; word-spacing: initial !important; x: initial !important; y: initial !important; z-index: initial !important;"><path d="m784-120-252-252q-30 24-69 38t-83 14q-109 0-184.5-75.5t-75.5-184.5q0-109 75.5-184.5t184.5-75.5q109 0 184.5 75.5t75.5 184.5q0 44-14 83t-38 69l252 252-56 56zm-404-280q75 0 127.5-52.5t52.5-127.5q0-75-52.5-127.5t-127.5-52.5q-75 0-127.5 52.5t-52.5 127.5q0 75 52.5 127.5t127.5 52.5z"></path></svg>&nbsp;<span class="google-anno-t" style="border: 0px !important; box-shadow: none !important; display: inline !important; float: none !important; margin: 0px !important; outline: 0px !important; padding: 0px !important; text-decoration: underline dotted !important; color: inherit !important; font-family: inherit !important; font-size: inherit !important; font-style: inherit !important; font-weight: inherit !important;">Tp Đà Nẵng</span></a></em>
                                </span>

                                <a class="readmore" title="Book now" href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-muong-thanh-da-nang-114.html">Chi tiết</a>
                                <span class="price">
                                    Giá: <span class="price_day">1.200.000</span> đ                                </span>
                            </div>

                        </div>
                    </div><div class="swiper-slide" role="group" aria-label="3 / 5" data-swiper-slide-index="2" style="width: 270px; margin-right: 20px;">
                        <div class="hotel">
                            <div class="img">
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang/crowne-plaza-danang-433.html">
                                <img original="https://khachsandanang.com.vn/data/hotel/300/hinh-046-1611365906.jpg" src="https://khachsandanang.com.vn/data/hotel/300/hinh-046-1611365906.jpg" alt="CROWNE PLAZA DANANG">
                                </a>

                            </div>
                            <div class="info">
                                <h3 class="title"><a href="https://khachsandanang.com.vn/khach-san-da-nang/crowne-plaza-danang-433.html">CROWNE PLAZA DANANG</a></h3>
                                <span class="map"><a href="https://khachsandanang.com.vn/khach-san-da-nang.html">Đà Nẵng</a>  •  <a href="https://khachsandanang.com.vn/api/viewmap/433.html" class="show_map">Bản đồ</a></span><br>
                                <span class="stars">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                    </span><br>
                                <span class="address">
                                    <em> 8 Võ Nguyên Giáp, Ngũ Hành Sơn, Đà Nẵng</em>
                                </span>

                                <a class="readmore" title="Book now" href="https://khachsandanang.com.vn/khach-san-da-nang/crowne-plaza-danang-433.html">Chi tiết</a>
                                <span class="price">
                                    Giá: <span class="price_day">2.300.000</span> đ                                </span>
                            </div>

                        </div>
                    </div></div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets swiper-pagination-horizontal swiper-pagination-bullets-dynamic" style="width: 80px;"><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 1" style="left: -32px;"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 2" style="left: -32px;"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active-prev-prev" tabindex="0" role="button" aria-label="Go to slide 3" style="left: -32px;"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active-prev" tabindex="0" role="button" aria-label="Go to slide 4" style="left: -32px;"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active swiper-pagination-bullet-active-main" tabindex="0" role="button" aria-label="Go to slide 5" style="left: -32px;" aria-current="true"></span></div>
            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div> 

        </div>
    </div>
</div>

<div class="container-fuild">      
    <div class="container py-3">

        <div class="row">
            <h2 class="heading-home"><span>Tất cả khách sạn</span></h2>
                <div class="row" id="all-hotel">

                    <div class="col-sm-3">
                        <div class="hotel">
                            <div class="img">
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang/dong-duong-hotel-suites-420.html">
                                <img original="https://khachsandanang.com.vn/data/hotel/300/dong-1588082950.jpg" src="https://khachsandanang.com.vn/data/hotel/300/dong-1588082950.jpg" alt="Dong Duong Hotel &amp; Suites">
                                </a>

                            </div>
                            <div class="info">
                                <h3 class="title"><a href="https://khachsandanang.com.vn/khach-san-da-nang/dong-duong-hotel-suites-420.html">Dong Duong Hotel &amp; Suites</a></h3>
                                <span class="map"><a href="https://khachsandanang.com.vn/khach-san-da-nang.html">Đà Nẵng</a>  •  <a href="https://khachsandanang.com.vn/api/viewmap/420.html" class="show_map">Bản đồ</a></span><br>
                                <span class="stars">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                    </span><br>
                                <span class="address">
                                    <em>62 Thái Phiên, Phường Phước Ninh, Quận Hải Châu, Thành phố Đà Nẵng</em>
                                </span>

                                <a class="readmore" title="Book now" href="https://khachsandanang.com.vn/khach-san-da-nang/dong-duong-hotel-suites-420.html">Chi tiết</a>
                                <span class="price">
                                    Giá: <span class="price_day">1.050.000</span> đ                                </span>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-3">
                        <div class="hotel">
                            <div class="img">
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang/senorita-boutique-hotel-421.html">
                                <img original="https://khachsandanang.com.vn/data/hotel/300/sen-1588085221.jpg" src="https://khachsandanang.com.vn/data/hotel/300/sen-1588085221.jpg" alt="SENORITA BOUTIQUE HOTEL">
                                </a>

                            </div>
                            <div class="info">
                                <h3 class="title"><a href="https://khachsandanang.com.vn/khach-san-da-nang/senorita-boutique-hotel-421.html">SENORITA BOUTIQUE HOTEL</a></h3>
                                <span class="map"><a href="https://khachsandanang.com.vn/khach-san-da-nang.html">Đà Nẵng</a>  •  <a href="https://khachsandanang.com.vn/api/viewmap/421.html" class="show_map">Bản đồ</a></span><br>
                                <span class="stars">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                    </span><br>
                                <span class="address">
                                    <em>89 Trần Bạch Đằng, Ngũ Hành Sơn, Đà Nẵng</em>
                                </span>

                                <a class="readmore" title="Book now" href="https://khachsandanang.com.vn/khach-san-da-nang/senorita-boutique-hotel-421.html">Chi tiết</a>
                                <span class="price">
                                    Giá: <span class="price_day">900.000</span> đ                                </span>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-3">
                        <div class="hotel">
                            <div class="img">
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-tabino-danang-422.html">
                                <img original="https://khachsandanang.com.vn/data/hotel/300/tabino-1588087279.jpg" src="https://khachsandanang.com.vn/data/hotel/300/tabino-1588087279.jpg" alt="Khách sạn Tabino Danang">
                                </a>

                            </div>
                            <div class="info">
                                <h3 class="title"><a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-tabino-danang-422.html">Khách sạn Tabino Danang</a></h3>
                                <span class="map"><a href="https://khachsandanang.com.vn/khach-san-da-nang.html">Đà Nẵng</a>  •  <a href="https://khachsandanang.com.vn/api/viewmap/422.html" class="show_map">Bản đồ</a></span><br>
                                <span class="stars">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                    </span><br>
                                <span class="address">
                                    <em>147-149 đường Trần Hưng Đạo, phường Nại Hiên Đông, quận Sơn Trà, TP.Đà Nẵng</em>
                                </span>

                                <a class="readmore" title="Book now" href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-tabino-danang-422.html">Chi tiết</a>
                                <span class="price">
                                    Giá: <span class="price_day">650.000</span> đ                                </span>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-3">
                        <div class="hotel">
                            <div class="img">
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang/everland-danang-beach-423.html">
                                <img original="https://khachsandanang.com.vn/data/hotel/300/ever-1588135559.jpg" src="https://khachsandanang.com.vn/data/hotel/300/ever-1588135559.jpg" alt="EVERLAND DANANG BEACH">
                                </a>

                            </div>
                            <div class="info">
                                <h3 class="title"><a href="https://khachsandanang.com.vn/khach-san-da-nang/everland-danang-beach-423.html">EVERLAND DANANG BEACH</a></h3>
                                <span class="map"><a href="https://khachsandanang.com.vn/khach-san-da-nang.html">Đà Nẵng</a>  •  <a href="https://khachsandanang.com.vn/api/viewmap/423.html" class="show_map">Bản đồ</a></span><br>
                                <span class="stars">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                    </span><br>
                                <span class="address">
                                    <em>Lô 22 đường Morrison, Quận Sơn Trà, Đà Nẵng</em>
                                </span>

                                <a class="readmore" title="Book now" href="https://khachsandanang.com.vn/khach-san-da-nang/everland-danang-beach-423.html">Chi tiết</a>
                                <span class="price">
                                    Giá: <span class="price_day">650.000</span> đ                                </span>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-3">
                        <div class="hotel">
                            <div class="img">
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang/grand-ocean-luxury-boutique-da-nang-430.html">
                                <img original="https://khachsandanang.com.vn/data/hotel/300/twin-1611046039.jpg" src="https://khachsandanang.com.vn/data/hotel/300/twin-1611046039.jpg" alt="GRAND OCEAN LUXURY BOUTIQUE ĐÀ NẴNG">
                                </a>

                            </div>
                            <div class="info">
                                <h3 class="title"><a href="https://khachsandanang.com.vn/khach-san-da-nang/grand-ocean-luxury-boutique-da-nang-430.html">GRAND OCEAN LUXURY BOUTIQUE ĐÀ NẴNG</a></h3>
                                <span class="map"><a href="https://khachsandanang.com.vn/khach-san-da-nang.html">Đà Nẵng</a>  •  <a href="https://khachsandanang.com.vn/api/viewmap/430.html" class="show_map">Bản đồ</a></span><br>
                                <span class="stars">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                    </span><br>
                                <span class="address">
                                    <em>27-29 Phan Liêm, Ngũ Hành Sơn, Đà Nẵng</em>
                                </span>

                                <a class="readmore" title="Book now" href="https://khachsandanang.com.vn/khach-san-da-nang/grand-ocean-luxury-boutique-da-nang-430.html">Chi tiết</a>
                                <span class="price">
                                    Giá: <span class="price_day">450</span> đ                                </span>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-3">
                        <div class="hotel">
                            <div class="img">
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-flower-da-nang-452.html">
                                <img original="https://khachsandanang.com.vn/data/hotel/300/pool-hotel-danang-1611905003.jpg" src="https://khachsandanang.com.vn/data/hotel/300/pool-hotel-danang-1611905003.jpg" alt="Khách Sạn Flower Đà Nẵng">
                                </a>

                            </div>
                            <div class="info">
                                <h3 class="title"><a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-flower-da-nang-452.html">Khách Sạn Flower Đà Nẵng</a></h3>
                                <span class="map"><a href="https://khachsandanang.com.vn/khach-san-da-nang.html">Đà Nẵng</a>  •  <a href="https://khachsandanang.com.vn/api/viewmap/452.html" class="show_map">Bản đồ</a></span><br>
                                <span class="stars">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                    </span><br>
                                <span class="address">
                                    <em>Số 33 Đỗ Bá, Q. Ngũ Hành Sơn, TP.Đà Nẵng, Việt Nam</em>
                                </span>

                                <a class="readmore" title="Book now" href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-flower-da-nang-452.html">Chi tiết</a>
                                <span class="price">
                                    Giá: <span class="price_day">600.000</span> đ                                </span>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-3">
                        <div class="hotel">
                            <div class="img">
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-pharaoh-boutique-hotel-danang-432.html">
                                <img original="https://khachsandanang.com.vn/data/hotel/300/500677372074cb3e29be7k-1611297499.jpg" src="https://khachsandanang.com.vn/data/hotel/300/500677372074cb3e29be7k-1611297499.jpg" alt="Khách sạn Pharaoh Boutique Hotel Danang">
                                </a>

                            </div>
                            <div class="info">
                                <h3 class="title"><a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-pharaoh-boutique-hotel-danang-432.html">Khách sạn Pharaoh Boutique Hotel Danang</a></h3>
                                <span class="map"><a href="https://khachsandanang.com.vn/khach-san-da-nang.html">Đà Nẵng</a>  •  <a href="https://khachsandanang.com.vn/api/viewmap/432.html" class="show_map">Bản đồ</a></span><br>
                                <span class="stars">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                    </span><br>
                                <span class="address">
                                    <em> Số 25 Lý Thánh Tông, P.An Hải Bắc, Q.Sơn Trà, Tp. Đà Nẵng.</em>
                                </span>

                                <a class="readmore" title="Book now" href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-pharaoh-boutique-hotel-danang-432.html">Chi tiết</a>
                                <span class="price">
                                    Giá: <span class="price_day">515.000</span> đ                                </span>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-3">
                        <div class="hotel">
                            <div class="img">
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang/crowne-plaza-danang-433.html">
                                <img original="https://khachsandanang.com.vn/data/hotel/300/hinh-046-1611365906.jpg" src="https://khachsandanang.com.vn/data/hotel/300/hinh-046-1611365906.jpg" alt="CROWNE PLAZA DANANG">
                                </a>

                            </div>
                            <div class="info">
                                <h3 class="title"><a href="https://khachsandanang.com.vn/khach-san-da-nang/crowne-plaza-danang-433.html">CROWNE PLAZA DANANG</a></h3>
                                <span class="map"><a href="https://khachsandanang.com.vn/khach-san-da-nang.html">Đà Nẵng</a>  •  <a href="https://khachsandanang.com.vn/api/viewmap/433.html" class="show_map">Bản đồ</a></span><br>
                                <span class="stars">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                    </span><br>
                                <span class="address">
                                    <em> 8 Võ Nguyên Giáp, Ngũ Hành Sơn, Đà Nẵng</em>
                                </span>

                                <a class="readmore" title="Book now" href="https://khachsandanang.com.vn/khach-san-da-nang/crowne-plaza-danang-433.html">Chi tiết</a>
                                <span class="price">
                                    Giá: <span class="price_day">2.300.000</span> đ                                </span>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-3">
                        <div class="hotel">
                            <div class="img">
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang/sandy-beach-non-nuoc-resort-436.html">
                                <img original="https://khachsandanang.com.vn/data/hotel/300/hinh-334-1611503044.jpg" src="https://khachsandanang.com.vn/data/hotel/300/hinh-334-1611503044.jpg" alt="SANDY BEACH NON NUOC RESORT">
                                </a>

                            </div>
                            <div class="info">
                                <h3 class="title"><a href="https://khachsandanang.com.vn/khach-san-da-nang/sandy-beach-non-nuoc-resort-436.html">SANDY BEACH NON NUOC RESORT</a></h3>
                                <span class="map"><a href="https://khachsandanang.com.vn/khach-san-da-nang.html">Đà Nẵng</a>  •  <a href="https://khachsandanang.com.vn/api/viewmap/436.html" class="show_map">Bản đồ</a></span><br>
                                <span class="stars">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                    </span><br>
                                <span class="address">
                                    <em>21 Trường Sa, Phường Hòa Hải, Quận Ngũ Hành Sơn, Tp. Đà Nẵng</em>
                                </span>

                                <a class="readmore" title="Book now" href="https://khachsandanang.com.vn/khach-san-da-nang/sandy-beach-non-nuoc-resort-436.html">Chi tiết</a>
                                <span class="price">
                                    Giá: <span class="price_day">Liên hệ</span>                                 </span>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-3">
                        <div class="hotel">
                            <div class="img">
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang/calix-hotel-434.html">
                                <img original="https://khachsandanang.com.vn/data/hotel/300/hiinh-666-1611373218.jpg" src="https://khachsandanang.com.vn/data/hotel/300/hiinh-666-1611373218.jpg" alt=" CALIX HOTEL">
                                </a>

                            </div>
                            <div class="info">
                                <h3 class="title"><a href="https://khachsandanang.com.vn/khach-san-da-nang/calix-hotel-434.html"> CALIX HOTEL</a></h3>
                                <span class="map"><a href="https://khachsandanang.com.vn/khach-san-da-nang.html">Đà Nẵng</a>  •  <a href="https://khachsandanang.com.vn/api/viewmap/434.html" class="show_map">Bản đồ</a></span><br>
                                <span class="stars">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                    </span><br>
                                <span class="address">
                                    <em>171 - 173 Võ Văn Kiệt, Sơn Trà, Đà Nẵng</em>
                                </span>

                                <a class="readmore" title="Book now" href="https://khachsandanang.com.vn/khach-san-da-nang/calix-hotel-434.html">Chi tiết</a>
                                <span class="price">
                                    Giá: <span class="price_day">450.000</span> đ                                </span>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-3">
                        <div class="hotel">
                            <div class="img">
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang/fivitel-danang-435.html">
                                <img original="https://khachsandanang.com.vn/data/hotel/300/773404524011d7e3648ade7937e2026e-1611560299.jpg" src="https://khachsandanang.com.vn/data/hotel/300/773404524011d7e3648ade7937e2026e-1611560299.jpg" alt="Fivitel Danang">
                                </a>

                            </div>
                            <div class="info">
                                <h3 class="title"><a href="https://khachsandanang.com.vn/khach-san-da-nang/fivitel-danang-435.html">Fivitel Danang</a></h3>
                                <span class="map"><a href="https://khachsandanang.com.vn/khach-san-da-nang.html">Đà Nẵng</a>  •  <a href="https://khachsandanang.com.vn/api/viewmap/435.html" class="show_map">Bản đồ</a></span><br>
                                <span class="stars">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                    </span><br>
                                <span class="address">
                                    <em>388 Trần Hưng Đạo, An Hải Tây, Sơn Trà, Đà Nẵng</em>
                                </span>

                                <a class="readmore" title="Book now" href="https://khachsandanang.com.vn/khach-san-da-nang/fivitel-danang-435.html">Chi tiết</a>
                                <span class="price">
                                    Giá: <span class="price_day">Liên hệ</span>                                 </span>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-3">
                        <div class="hotel">
                            <div class="img">
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang/amunra-hotel-danang-437.html">
                                <img original="https://khachsandanang.com.vn/data/hotel/300/amunra-2-scaled-1611558486.jpg" src="https://khachsandanang.com.vn/data/hotel/300/amunra-2-scaled-1611558486.jpg" alt="Amunra Hotel Danang">
                                </a>

                            </div>
                            <div class="info">
                                <h3 class="title"><a href="https://khachsandanang.com.vn/khach-san-da-nang/amunra-hotel-danang-437.html">Amunra Hotel Danang</a></h3>
                                <span class="map"><a href="https://khachsandanang.com.vn/khach-san-da-nang.html">Đà Nẵng</a>  •  <a href="https://khachsandanang.com.vn/api/viewmap/437.html" class="show_map">Bản đồ</a></span><br>
                                <span class="stars">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                    </span><br>
                                <span class="address">
                                    <em>143 Hà Bổng, Sơn Trà, Đà Nẵng, Việt Nam </em>
                                </span>

                                <a class="readmore" title="Book now" href="https://khachsandanang.com.vn/khach-san-da-nang/amunra-hotel-danang-437.html">Chi tiết</a>
                                <span class="price">
                                    Giá: <span class="price_day">300.000</span> đ                                </span>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-3">
                        <div class="hotel">
                            <div class="img">
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang/haian-riverfront-hotel-danang-440.html">
                                <img original="https://khachsandanang.com.vn/data/hotel/300/270526959-1611566640.jpg" src="https://khachsandanang.com.vn/data/hotel/300/270526959-1611566640.jpg" alt="Haian Riverfront Hotel Danang">
                                </a>

                            </div>
                            <div class="info">
                                <h3 class="title"><a href="https://khachsandanang.com.vn/khach-san-da-nang/haian-riverfront-hotel-danang-440.html">Haian Riverfront Hotel Danang</a></h3>
                                <span class="map"><a href="https://khachsandanang.com.vn/khach-san-da-nang.html">Đà Nẵng</a>  •  <a href="https://khachsandanang.com.vn/api/viewmap/440.html" class="show_map">Bản đồ</a></span><br>
                                <span class="stars">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                    </span><br>
                                <span class="address">
                                    <em>182 Bạch Đằng , Đà Nẵng, Việt Nam</em>
                                </span>

                                <a class="readmore" title="Book now" href="https://khachsandanang.com.vn/khach-san-da-nang/haian-riverfront-hotel-danang-440.html">Chi tiết</a>
                                <span class="price">
                                    Giá: <span class="price_day">1.470.000</span> đ                                </span>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-3">
                        <div class="hotel">
                            <div class="img">
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang/mandila-beach-hotel-danang-439.html">
                                <img original="https://khachsandanang.com.vn/data/hotel/300/hinh-465-1611567426.jpg" src="https://khachsandanang.com.vn/data/hotel/300/hinh-465-1611567426.jpg" alt="MANDILA BEACH HOTEL DANANG">
                                </a>

                            </div>
                            <div class="info">
                                <h3 class="title"><a href="https://khachsandanang.com.vn/khach-san-da-nang/mandila-beach-hotel-danang-439.html">MANDILA BEACH HOTEL DANANG</a></h3>
                                <span class="map"><a href="https://khachsandanang.com.vn/khach-san-da-nang.html">Đà Nẵng</a>  •  <a href="https://khachsandanang.com.vn/api/viewmap/439.html" class="show_map">Bản đồ</a></span><br>
                                <span class="stars">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                    </span><br>
                                <span class="address">
                                    <em>218 Võ Nguyên Giáp, Phước Mỹ, Sơn Trà, Đà Nẵng</em>
                                </span>

                                <a class="readmore" title="Book now" href="https://khachsandanang.com.vn/khach-san-da-nang/mandila-beach-hotel-danang-439.html">Chi tiết</a>
                                <span class="price">
                                    Giá: <span class="price_day">800.000</span> đ                                </span>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-3">
                        <div class="hotel">
                            <div class="img">
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang/canvas-danang-beach-hotel-443.html">
                                <img original="https://khachsandanang.com.vn/data/hotel/300/7914485226249493676216355711099493315772416n-1611630179.jpg" src="https://khachsandanang.com.vn/data/hotel/300/7914485226249493676216355711099493315772416n-1611630179.jpg" alt=" Canvas Danang Beach Hotel">
                                </a>

                            </div>
                            <div class="info">
                                <h3 class="title"><a href="https://khachsandanang.com.vn/khach-san-da-nang/canvas-danang-beach-hotel-443.html"> Canvas Danang Beach Hotel</a></h3>
                                <span class="map"><a href="https://khachsandanang.com.vn/khach-san-da-nang.html">Đà Nẵng</a>  •  <a href="https://khachsandanang.com.vn/api/viewmap/443.html" class="show_map">Bản đồ</a></span><br>
                                <span class="stars">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                    </span><br>
                                <span class="address">
                                    <em>234 Võ Nguyên Giáp, Phường Phước Mỹ, Quận Sơn Trà, Đà Nẵng, Việt Nam</em>
                                </span>

                                <a class="readmore" title="Book now" href="https://khachsandanang.com.vn/khach-san-da-nang/canvas-danang-beach-hotel-443.html">Chi tiết</a>
                                <span class="price">
                                    Giá: <span class="price_day">700.000</span> đ                                </span>
                            </div>

                        </div>
                    </div>


                    <div class="col-sm-3">
                        <div class="hotel">
                            <div class="img">
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-stella-maris-beach-danang-442.html">
                                <img original="https://khachsandanang.com.vn/data/hotel/300/khach-san-stella-maris-da-nang-5-800x450-1611590299.png" src="https://khachsandanang.com.vn/data/hotel/300/khach-san-stella-maris-da-nang-5-800x450-1611590299.png" alt="KHÁCH SẠN STELLA MARIS BEACH DANANG">
                                </a>

                            </div>
                            <div class="info">
                                <h3 class="title"><a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-stella-maris-beach-danang-442.html">KHÁCH SẠN STELLA MARIS BEACH DANANG</a></h3>
                                <span class="map"><a href="https://khachsandanang.com.vn/khach-san-da-nang.html">Đà Nẵng</a>  •  <a href="https://khachsandanang.com.vn/api/viewmap/442.html" class="show_map">Bản đồ</a></span><br>
                                <span class="stars">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                        <img alt="" src="https://khachsandanang.com.vn/templates/images/star.png">
                                                                    </span><br>
                                <span class="address">
                                    <em>03 Võ Văn Kiêt, Phường Phước Mỹ, Quận Sơn Trà, TP. Đà Nẵng</em>
                                </span>

                                <a class="readmore" title="Book now" href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-stella-maris-beach-danang-442.html">Chi tiết</a>
                                <span class="price">
                                    Giá: <span class="price_day">1.450.000</span> đ                                </span>
                            </div>

                        </div>
                    </div>

                                </div>
            <div class="pages" id="pagination"><span class="pagebar-mainbody">&nbsp;<span class="pagebar-selections"><span class="current">1</span></span>&nbsp;<a href="https://khachsandanang.com.vn/khach-san/16.html">2</a>&nbsp;<a href="https://khachsandanang.com.vn/khach-san/32.html">3</a>&nbsp;<a href="https://khachsandanang.com.vn/khach-san/48.html">4</a>&nbsp;<a href="https://khachsandanang.com.vn/khach-san/64.html">5</a>&nbsp;<a href="https://khachsandanang.com.vn/khach-san/80.html">6</a>&nbsp;<a href="https://khachsandanang.com.vn/khach-san/16.html"><span class="next">» Next</span></a>&nbsp;&nbsp;<a href="https://khachsandanang.com.vn/khach-san/320.html"><span class="last">» Last</span></a></span></div>


    </div>

 </div>
</div>




<!-- 
<script type='text/javascript'>
   $(document).ready(function(){

     // $('#pagination').on('click','a',function(e){
     //   e.preventDefault(); 
     //   // var pagno = $(this).attr('data-ci-pagination-page');
     //   var pagno = $('#pagination a').html();
     //   loadPagination(pagno);
     // });

     // loadPagination(0);

     $('#pagination').on('click','a',function(e){
       e.preventDefault(); 
       // var pagno = $(this).attr('data-ci-pagination-page');
       var pagno = $('#pagination a').html();
       loadPagination(pagno);
     });

     loadPagination(0);



    function loadPagination(pagno){
       $.ajax({
         url: base_url + 'home/loadrecord/'+pagno,
         type: 'get',
         dataType: 'json',
         success: function(data){
            $('#pagination').html(data.pagination);
            createTable(data.html,data.row);
         }
       });
    }

    function createTable(html,sno){
        sno = Number(sno);
        $('#all-hotel').empty();

        $('#all-hotel').append(html);
      }

    });

    </script> -->     
    </div><ins class="adsbygoogle adsbygoogle-noablate" data-adsbygoogle-status="done" style="display: none !important;" data-ad-status="unfilled"><div id="aswift_0_host" style="border: none; height: 0px; width: 0px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-block;"><iframe id="aswift_0" name="aswift_0" browsingtopics="true" style="left:0;position:absolute;top:0;border:0;width:undefinedpx;height:undefinedpx;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allow="attribution-reporting; run-ad-auction" src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-8635360583374491&amp;output=html&amp;adk=1812271804&amp;adf=3025194257&amp;abgtt=6&amp;lmt=1725762455&amp;plat=3%3A16%2C9%3A134250504%2C16%3A8388608%2C17%3A32%2C24%3A32%2C25%3A32%2C30%3A1081344%2C32%3A32%2C41%3A32%2C42%3A32&amp;plas=474x768_r&amp;format=0x0&amp;url=https%3A%2F%2Fkhachsandanang.com.vn%2F&amp;pra=5&amp;wgl=1&amp;aihb=0&amp;asro=0&amp;ailel=1~2~4~6~7~8~9~10~11~12~13~14~15~16~17~18~19~20~21~24~29~30~34&amp;aiael=1~2~4~6~7~8~9~10~11~12~13~14~15~16~17~18~19~20~21~24~29~30~34&amp;aifxl=29_18~30_19&amp;aiixl=29_5~30_6&amp;aslmct=0.7&amp;asamct=0.7&amp;itsi=0&amp;aiombap=1&amp;uach=WyJtYWNPUyIsIjE1LjAuMCIsImFybSIsIiIsIjEyOC4wLjY2MTMuMTIwIixudWxsLDAsbnVsbCwiNjQiLFtbIkNocm9taXVtIiwiMTI4LjAuNjYxMy4xMjAiXSxbIk5vdDtBPUJyYW5kIiwiMjQuMC4wLjAiXSxbIkdvb2dsZSBDaHJvbWUiLCIxMjguMC42NjEzLjEyMCJdXSwwXQ..&amp;dt=1725762455261&amp;bpp=4&amp;bdt=18&amp;idt=8&amp;shv=r20240904&amp;mjsv=m202409030101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Df0a15a04eb58910d%3AT%3D1725762277%3ART%3D1725762277%3AS%3DALNI_MYsSQikCLBxwgVufPrD5GFhlMTW7Q&amp;gpic=UID%3D00000ef372a2eb6e%3AT%3D1725762277%3ART%3D1725762277%3AS%3DALNI_MZkgEWjMdZub-yiFGlgQ8WrJJ5g0g&amp;eo_id_str=ID%3Dab3603c34199b8e8%3AT%3D1725762277%3ART%3D1725762277%3AS%3DAA-Afjb_VB_dwcYkIIV3hq8uVhCR&amp;nras=1&amp;correlator=1227414102788&amp;frm=20&amp;pv=2&amp;u_tz=420&amp;u_his=4&amp;u_h=982&amp;u_w=1512&amp;u_ah=950&amp;u_aw=1512&amp;u_cd=30&amp;u_sd=2&amp;dmc=8&amp;adx=-12245933&amp;ady=-12245933&amp;biw=1502&amp;bih=857&amp;scr_x=0&amp;scr_y=0&amp;eid=44759876%2C44759927%2C44759837%2C31086547%2C31086638%2C31086709%2C42532524%2C44795922%2C95331687%2C95336912%2C95338227%2C95341662%2C95340844&amp;oid=2&amp;pvsid=2673683751786071&amp;tmod=2015047405&amp;uas=0&amp;nvt=1&amp;fsapi=1&amp;ref=https%3A%2F%2Fkhachsandanang.com.vn%2Fgioi-thieu.html&amp;fc=1920&amp;brdim=0%2C125%2C0%2C125%2C1512%2C32%2C1512%2C857%2C1512%2C857&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=32768&amp;bc=31&amp;bz=1&amp;td=1&amp;tdf=2&amp;psd=W251bGwsbnVsbCxudWxsLDNd&amp;nt=1&amp;ifi=1&amp;uci=a!1&amp;fsb=1&amp;dtd=15" data-google-container-id="a!1" tabindex="0" title="Advertisement" aria-label="Advertisement" data-load-complete="true"></iframe></div></ins>
    <footer>
	<div class="container-fuild py-3">
		<div class="container ">

			<ul class="menuf row row-cols-2 row-cols-sm-3 row-cols-md-6">
			 <li><a href="https://khachsandanang.com.vn/"> Trang chủ </a></li>
                <li><a href="https://khachsandanang.com.vn/gioi-thieu.html">Giới thiệu</a></li>
                <li><a href="https://khachsandanang.com.vn/huong-dan-thanh-toan.html">Hướng dẫn thanh toán</a></li>
                <li><a href="https://khachsandanang.com.vn/chinh-sach-quy-dinh.html">Chính sách - Quy định</a></li>

                <li><a href="https://phongvedanang.com" target="_blank">Phòng vé Máy bay</a></li>
                <li><a style="background: none;" href="https://khachsandanang.com.vn/lien-he.html">Liên hệ</a></li>
			</ul>

		</div>

		<div class="clearfix"></div>
	</div>

	<div class="container-fuild footer-blue" style="background: var(--blue)">
		<div class="container py-3" style="position: relative;">


	        <div id="footer-c">

	            <div>
	                            <div class="">


            <div class="module-content">
                                                    <h3>ĐẶT PHÒNG KHÁCH SẠN - DANATRAVEL</h3>

<div class="row">
<div class="col-lg-6 col-md-6">
<p><strong>TRỤ SỞ&nbsp;ĐÀ NẴNG</strong></p>

<p>36 Nguyễn Thuật, P.&nbsp;Hòa An, Q.&nbsp;Cẩm Lệ, Tp&nbsp;Đà Nẵng<br>
Điện thoại:<strong>&nbsp;</strong><a href="tel:02363767588">02363767588</a>,<br>
Hotline:&nbsp;<a href="tel:0966767588">0966 767588</a><br>
<strong>Phản ánh&nbsp;dịch vụ: </strong><a href="tel:0777577555">0777 577 555</a><br>
<strong>Số GPKD:</strong>&nbsp;0401369718&nbsp;<br>
<strong>Số GPKD LH Quốc tế:&nbsp;</strong>48-392/2023/CDLQGVN-GPLHQT<br>
<strong>Email:&nbsp;</strong>booking@danatravel.vn;<br>
<strong>Website:&nbsp;</strong><a href="http://www.khachsandanang.com.vn" style="line-height: 1.6em;" target="_blank">www.khachsandanang.com.vn</a>, <a href="https://danatravel.vn/">https://danatravel.vn/</a>, <a href="http://phongvedanang.com" target="_blank">phongvedanang.com</a><br>
Copyright © 2010&nbsp;- 2022&nbsp;<a href="http://www.khachsandanang.com.vn" style="line-height: 20.8px;"><strong>www.khachsandanang.com.vn</strong></a>. All rights reserved.</p>

<p>&nbsp;</p>
</div>

<div class="col-lg-6 col-md-6">
<p><strong>VĂN PHÒNG HỒ CHÍ MINH:</strong></p>

<p>Tầng 2, 25 Đào Duy Anh, P. 9, Phú Nhuận, TP. HCM<br>
Hotline:<strong>&nbsp;</strong><a href="tel:0899767588">0899 767588</a></p>

<p><strong>VĂN PHÒNG&nbsp;HÀ NỘI:</strong></p>

<p>37 Hồng Tiến, Long Biên, Hà Nội<br>
Hotline: <a href="tel:0796767588">0796&nbsp;767588</a></p>

<p><strong>VĂN PHÒNG PHÚ QUỐC:</strong></p>

<p>Đường Trần Hưng Đạo, Dương Đông, Phú Quốc<br>
Hotline:&nbsp;<a href="tel:0899767588">0899767588</a></p>
</div>
</div>

            </div>
        </div>              
    	            </div>

	            <div align="center">
<div class="hitsonline">
    <p style="font-size: 25px; font-weight: bold; letter-spacing: 5px; color: #FFF; margin-right: -5px; text-shadow: 1px 1px 0 #212121">09472584</p>
    <p style="padding-top: 5px;">Online: <span>37</span></p>    

<a href="https://www.dmca.com/Protection/Status.aspx?ID=249ddc78-420d-4a09-a825-36fc729e4a0b&amp;refurl=https://khachsandanang.com.vn/" target="_blank" title="DMCA.com Protection Status" class="dmca-badge"> <img src="//images.dmca.com/Badges/dmca_protected_sml_120m.png?ID=249ddc78-420d-4a09-a825-36fc729e4a0b" alt="DMCA.com Protection Status"></a> <script src="//images.dmca.com/Badges/DMCABadgeHelper.min.js"> </script>
</div> 
	            <div class="clearfix"></div>


	        </div>

		</div>
		<div class="clearfix"></div>	
	</div>
</div>
	<div class="container-fuild py-3">
		<div class="container">
			<div class="tags">
                            <div class="">


            <div class="module-content">

            </div>
        </div>              
                </div> 
        </div>
        <div class="clearfix"></div>
	</div>
</footer>


<script>
$(".hotel-filter-button").click(function(){
    $(".hotel-filter-button").toggleClass("hotel-filte r-button-expand");
    $(".hotel-filter").toggleClass("hotel-filter-expand");
});

$(".open_btn").click(function(){
    $(".menu_mobile").addClass("show");
}); 

$(".close_btn").click(function(){
    $(".menu_mobile").removeClass("show");
});

//  ---------------------submenu mobile----------------------
    $(".menu_mobile .open").click(function () {
    $(this).parent().find(".open").hide();
    $(this).parent().find(".exit").show();
    $(this).parent().find(".menu_mobile_con").slideDown();
});

$(".menu_mobile .exit").click(function () {
    $(this).parent().find(".exit").hide();
    $(this).parent().find(".open").show();
    $(this).parent().find(".menu_mobile_con").slideUp();
});


</script>



<link rel="stylesheet" type="text/css" href="https://khachsandanang.com.vn/templates/fancybox3/jquery.fancybox.css">

<script src="https://khachsandanang.com.vn/templates/fancybox3/jquery.fancybox.js" type="text/javascript"></script>

<script>
// Options for all groups
$('[data-fancybox^="gallery"]').fancybox({
            thumbs : {
            autoStart : true
    },
            buttons : [
                    'zoom',
                    'close'
            ]
});

</script><link rel="stylesheet" href="https://khachsandanang.com.vn/templates/swiper/swiper-bundle.min.css">
<script src="https://khachsandanang.com.vn/templates/swiper/swiper-bundle.min.js"></script>

<script>
    var homeSlide = new Swiper("#home-slide", {
            lazy:true,
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
            lazy:true,
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
            lazy:true,
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
                    clickable: true,     dynamicBullets:true
            },
    });
    
 var tour = new Swiper("#tour", {
            slidesPerView: 1,
            spaceBetween: 10,
    loop: true,
            lazy:true,
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
                    dynamicBullets:true
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
            autoHeight:true,
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
            lazy:true,
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

<style>

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
</style><script src="https://sp.zalo.me/plugins/sdk.js"></script><div id="app" class="zs"></div>



<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div><ins class="adsbygoogle adsbygoogle-noablate" data-adsbygoogle-status="done" data-anchor-status="displayed" style="display: none; width: 100% !important; height: 95px !important; bottom: 0px; clear: none !important; float: none !important; left: 0px; margin: 0px !important; max-height: none !important; max-width: none !important; opacity: 1; overflow: visible !important; padding: 0px !important; position: fixed; right: auto !important; top: auto !important; vertical-align: baseline !important; visibility: visible !important; z-index: 2147483647; background: rgb(250, 250, 250) !important;" data-ad-status="filled" data-anchor-shown="true"><div class="grippy-host"></div><div id="aswift_2_host" style="border: none !important; height: 90px !important; width: 100% !important; margin: 0px !important; padding: 0px !important; position: relative !important; visibility: visible !important; background-color: transparent !important; display: inline-block !important; inset: auto !important; clear: none !important; float: none !important; max-height: none !important; max-width: none !important; opacity: 1 !important; overflow: visible !important; vertical-align: baseline !important; z-index: auto !important;"><iframe id="aswift_2" name="aswift_2" browsingtopics="true" style="width: 728px !important; height: 90px !important; display: block; margin: 0px auto;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" width="728" height="90" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allow="attribution-reporting; run-ad-auction" src="https://googleads.g.doubleclick.net/pagead/html/r20240904/r20110914/zrt_lookup_fy2021.html#RS-0-&amp;adk=1812271801&amp;client=ca-pub-8635360583374491&amp;fa=1&amp;ifi=3&amp;uci=a!3&amp;btvi=1" data-google-container-id="a!3" tabindex="0" title="Advertisement" aria-label="Advertisement" data-google-query-id="CN3V_5CmsogDFd3iFgUd5QkkKw" data-load-complete="true"></iframe></div></ins><ins class="adsbygoogle adsbygoogle-noablate" data-adsbygoogle-status="done" data-side-rail-status="idle" style="display: none !important; z-index: 2147483647 !important; margin: 0px !important; padding: 0px !important; position: fixed !important; right: 383px !important; top: 362px !important; overflow: visible !important; opacity: 0 !important; transition: 500ms ease-in !important;" data-ad-status="filled"><div id="aswift_3_host" style="border: none; height: 600px; width: 160px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-block;"><iframe id="aswift_3" name="aswift_3" browsingtopics="true" style="width:160px !IMPORTANT;height:600px !IMPORTANT" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" width="160" height="600" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allow="attribution-reporting; run-ad-auction" src="https://googleads.g.doubleclick.net/pagead/html/r20240904/r20110914/zrt_lookup_fy2021.html#RS-1-&amp;adk=1812271804&amp;client=ca-pub-8635360583374491&amp;fa=4&amp;ifi=4&amp;uci=a!4&amp;btvi=2" data-google-container-id="a!4" tabindex="0" title="Advertisement" aria-label="Advertisement" data-google-query-id="CN_V_5CmsogDFd3iFgUd5QkkKw" data-load-complete="true"></iframe></div><span class="right-side-rail-edge" style="background: rgb(250, 250, 250) !important; position: absolute !important; left: 0px !important; top: 600px !important; width: 160px !important; height: 5px !important; box-shadow: rgba(0, 0, 0, 0.5) 0px 1px 5px -1px, rgba(0, 0, 0, 0.1) 0px -1px 2px -1px !important;"></span><span class="right-side-rail-dismiss-btn" style="background: rgb(250, 250, 250) !important; position: absolute !important; left: 55px !important; right: 55px !important; top: 605px !important; box-shadow: rgba(0, 0, 0, 0.5) 0px 1px 5px -1px, rgba(0, 0, 0, 0.1) 0px -1px 2px -1px !important;"><svg style="position: absolute !important; top: 0px !important; display: block !important; width: 50px !important; height: 30px !important; margin-top: -5px !important; transform: none !important; pointer-events: initial !important;"><defs><filter id="right-side-rail-drop-shadow" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB"><feComponentTransfer in="SourceAlpha" result="TransferredAlpha"><feFuncR type="discrete" tableValues="0.5"></feFuncR><feFuncG type="discrete" tableValues="0.5"></feFuncG><feFuncB type="discrete" tableValues="0.5"></feFuncB></feComponentTransfer><feGaussianBlur in="TransferredAlpha" stdDeviation="2"></feGaussianBlur><feOffset dx="0" dy="0" result="offsetblur"></feOffset><feMerge><feMergeNode></feMergeNode><feMergeNode in="SourceGraphic"></feMergeNode></feMerge></filter></defs><path d="M5,5 L5,17 A8,8 0 0,0 13,25 L37,25 A8,8 0 0,0 45,17 L45,5 Z" stroke="#FAFAFA" stroke-width="1" fill="#FAFAFA" style="filter: url(&quot;#right-side-rail-drop-shadow&quot;);"></path><rect x="0" y="0" width="50" height="5" style="fill: rgb(250, 250, 250);"></rect><g stroke="#616161" stroke-width="2px" stroke-linecap="square"><line x1="18" y1="18" x2="25" y2="12"></line><line x1="25" y1="12" x2="32" y2="18"></line></g></svg></span></ins><div id="google-anno-sa" dir="ltr" tabindex="0" style="color-scheme: initial !important; forced-color-adjust: initial !important; mask: initial !important; math-depth: initial !important; position: fixed !important; position-anchor: initial !important; text-size-adjust: initial !important; appearance: initial !important; color: initial !important; font: initial !important; font-palette: initial !important; font-synthesis: initial !important; inset-area: initial !important; text-orientation: initial !important; text-rendering: initial !important; text-spacing-trim: initial !important; -webkit-font-smoothing: initial !important; -webkit-locale: initial !important; -webkit-text-orientation: initial !important; -webkit-writing-mode: initial !important; writing-mode: initial !important; zoom: initial !important; accent-color: initial !important; place-content: initial !important; place-items: initial !important; place-self: initial !important; alignment-baseline: initial !important; anchor-name: initial !important; animation-composition: initial !important; animation: initial !important; app-region: initial !important; aspect-ratio: initial !important; backdrop-filter: initial !important; backface-visibility: initial !important; background: rgb(255, 255, 255) !important; background-blend-mode: initial !important; baseline-shift: initial !important; baseline-source: initial !important; block-size: initial !important; border-block: initial !important; border: 0px !important; border-radius: 16px !important; border-collapse: initial !important; border-end-end-radius: initial !important; border-end-start-radius: initial !important; border-inline: initial !important; border-start-end-radius: initial !important; border-start-start-radius: initial !important; bottom: 22.5703px !important; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 2px, rgba(0, 0, 0, 0.15) 0px 1px 3px 1px !important; box-sizing: initial !important; break-after: initial !important; break-before: initial !important; break-inside: initial !important; buffered-rendering: initial !important; caption-side: initial !important; caret-color: initial !important; clear: initial !important; clip: initial !important; clip-path: initial !important; clip-rule: initial !important; color-interpolation: initial !important; color-interpolation-filters: initial !important; color-rendering: initial !important; columns: initial !important; column-fill: initial !important; gap: initial !important; column-rule: initial !important; column-span: initial !important; contain: initial !important; contain-intrinsic-block-size: initial !important; contain-intrinsic-size: initial !important; contain-intrinsic-inline-size: initial !important; container: initial !important; content: initial !important; content-visibility: initial !important; counter-increment: initial !important; counter-reset: initial !important; counter-set: initial !important; cursor: initial !important; cx: initial !important; cy: initial !important; d: initial !important; display: initial !important; dominant-baseline: initial !important; empty-cells: initial !important; field-sizing: initial !important; fill: white !important; fill-opacity: initial !important; fill-rule: initial !important; filter: initial !important; flex: initial !important; flex-flow: initial !important; float: initial !important; flood-color: initial !important; flood-opacity: initial !important; grid: initial !important; grid-area: initial !important; height: 50px !important; hyphenate-character: initial !important; hyphenate-limit-chars: initial !important; hyphens: initial !important; image-orientation: initial !important; image-rendering: initial !important; initial-letter: initial !important; inline-size: initial !important; inset-block: initial !important; inset-inline: initial !important; isolation: initial !important; left: 992.3px !important; letter-spacing: initial !important; lighting-color: initial !important; line-break: initial !important; list-style: initial !important; margin-block: initial !important; margin: initial !important; margin-inline: initial !important; marker: initial !important; mask-type: initial !important; math-shift: initial !important; math-style: initial !important; max-block-size: initial !important; max-height: initial !important; max-inline-size: initial !important; max-width: initial !important; min-block-size: initial !important; min-height: initial !important; min-inline-size: initial !important; min-width: initial !important; mix-blend-mode: initial !important; object-fit: initial !important; object-position: initial !important; object-view-box: initial !important; offset: initial !important; opacity: initial !important; order: initial !important; orphans: initial !important; outline: initial !important; outline-offset: initial !important; overflow-anchor: initial !important; overflow-clip-margin: initial !important; overflow-wrap: initial !important; overflow: initial !important; overlay: initial !important; overscroll-behavior-block: initial !important; overscroll-behavior-inline: initial !important; overscroll-behavior: initial !important; padding-block: initial !important; padding: initial !important; padding-inline: initial !important; page: initial !important; page-orientation: initial !important; paint-order: initial !important; perspective: initial !important; perspective-origin: initial !important; pointer-events: initial !important; position-try: initial !important; position-visibility: initial !important; quotes: initial !important; r: initial !important; resize: initial !important; right: 16px !important; rotate: initial !important; ruby-align: initial !important; ruby-position: initial !important; rx: initial !important; ry: initial !important; scale: initial !important; scroll-behavior: initial !important; scroll-margin-block: initial !important; scroll-margin: initial !important; scroll-margin-inline: initial !important; scroll-padding-block: initial !important; scroll-padding: initial !important; scroll-padding-inline: initial !important; scroll-snap-align: initial !important; scroll-snap-stop: initial !important; scroll-snap-type: initial !important; scroll-timeline: initial !important; scrollbar-color: initial !important; scrollbar-gutter: initial !important; scrollbar-width: initial !important; shape-image-threshold: initial !important; shape-margin: initial !important; shape-outside: initial !important; shape-rendering: initial !important; size: initial !important; speak: initial !important; stop-color: initial !important; stop-opacity: initial !important; stroke: initial !important; stroke-dasharray: initial !important; stroke-dashoffset: initial !important; stroke-linecap: initial !important; stroke-linejoin: initial !important; stroke-miterlimit: initial !important; stroke-opacity: initial !important; stroke-width: initial !important; tab-size: initial !important; table-layout: initial !important; text-align: center !important; text-align-last: initial !important; text-anchor: initial !important; text-combine-upright: initial !important; text-decoration: initial !important; text-decoration-skip-ink: initial !important; text-emphasis: initial !important; text-emphasis-position: initial !important; text-indent: initial !important; text-overflow: initial !important; text-shadow: initial !important; text-transform: initial !important; text-underline-offset: initial !important; text-underline-position: initial !important; white-space: initial !important; timeline-scope: initial !important; top: initial !important; touch-action: initial !important; transform: initial !important; transform-box: initial !important; transform-origin: initial !important; transform-style: initial !important; transition: initial !important; translate: initial !important; user-select: initial !important; vector-effect: initial !important; vertical-align: initial !important; view-timeline: initial !important; view-transition-class: initial !important; view-transition-name: initial !important; visibility: initial !important; border-spacing: initial !important; -webkit-box-align: initial !important; -webkit-box-decoration-break: initial !important; -webkit-box-direction: initial !important; -webkit-box-flex: initial !important; -webkit-box-ordinal-group: initial !important; -webkit-box-orient: initial !important; -webkit-box-pack: initial !important; -webkit-box-reflect: initial !important; -webkit-line-break: initial !important; -webkit-line-clamp: initial !important; -webkit-mask-box-image: initial !important; -webkit-print-color-adjust: initial !important; -webkit-rtl-ordering: initial !important; -webkit-ruby-position: initial !important; -webkit-tap-highlight-color: initial !important; -webkit-text-combine: initial !important; -webkit-text-decorations-in-effect: initial !important; -webkit-text-fill-color: unset !important; -webkit-text-security: initial !important; -webkit-text-stroke: initial !important; -webkit-user-drag: initial !important; widows: initial !important; width: initial !important; will-change: initial !important; word-break: initial !important; word-spacing: initial !important; x: initial !important; y: initial !important; z-index: 1000 !important;"><span style="color-scheme: initial !important; forced-color-adjust: initial !important; mask: initial !important; math-depth: initial !important; position: absolute !important; position-anchor: initial !important; text-size-adjust: initial !important; appearance: initial !important; color: rgb(26, 115, 232) !important; font: initial !important; font-palette: initial !important; font-synthesis: initial !important; inset-area: initial !important; text-orientation: initial !important; text-rendering: initial !important; text-spacing-trim: initial !important; -webkit-font-smoothing: initial !important; -webkit-locale: initial !important; -webkit-text-orientation: initial !important; -webkit-writing-mode: initial !important; writing-mode: initial !important; zoom: initial !important; accent-color: initial !important; place-content: initial !important; place-items: initial !important; place-self: initial !important; alignment-baseline: initial !important; anchor-name: initial !important; animation-composition: initial !important; animation: initial !important; app-region: initial !important; aspect-ratio: initial !important; backdrop-filter: initial !important; backface-visibility: initial !important; background: initial !important; background-blend-mode: initial !important; baseline-shift: initial !important; baseline-source: initial !important; block-size: initial !important; border-block: initial !important; border: 0px !important; border-radius: initial !important; border-collapse: initial !important; border-end-end-radius: initial !important; border-end-start-radius: initial !important; border-inline: initial !important; border-start-end-radius: initial !important; border-start-start-radius: initial !important; inset: 2.5px 12px 2.5px 50px !important; box-shadow: none !important; box-sizing: initial !important; break-after: initial !important; break-before: initial !important; break-inside: initial !important; buffered-rendering: initial !important; caption-side: initial !important; caret-color: initial !important; clear: initial !important; clip: initial !important; clip-path: initial !important; clip-rule: initial !important; color-interpolation: initial !important; color-interpolation-filters: initial !important; color-rendering: initial !important; columns: initial !important; column-fill: initial !important; gap: initial !important; column-rule: initial !important; column-span: initial !important; contain: initial !important; contain-intrinsic-block-size: initial !important; contain-intrinsic-size: initial !important; contain-intrinsic-inline-size: initial !important; container: initial !important; content: initial !important; content-visibility: initial !important; counter-increment: initial !important; counter-reset: initial !important; counter-set: initial !important; cursor: pointer !important; cx: initial !important; cy: initial !important; d: initial !important; display: flex !important; dominant-baseline: initial !important; empty-cells: initial !important; field-sizing: initial !important; fill: initial !important; fill-opacity: initial !important; fill-rule: initial !important; filter: initial !important; flex: initial !important; flex-direction: row !important; flex-wrap: initial !important; float: none !important; flood-color: initial !important; flood-opacity: initial !important; grid: initial !important; grid-area: initial !important; height: initial !important; hyphenate-character: initial !important; hyphenate-limit-chars: initial !important; hyphens: initial !important; image-orientation: initial !important; image-rendering: initial !important; initial-letter: initial !important; inline-size: initial !important; inset-block: initial !important; inset-inline: initial !important; isolation: initial !important; letter-spacing: initial !important; lighting-color: initial !important; line-break: initial !important; list-style: initial !important; margin-block: initial !important; margin: 0px !important; margin-inline: initial !important; marker: initial !important; mask-type: initial !important; math-shift: initial !important; math-style: initial !important; max-block-size: initial !important; max-height: initial !important; max-inline-size: initial !important; max-width: initial !important; min-block-size: initial !important; min-height: initial !important; min-inline-size: initial !important; min-width: initial !important; mix-blend-mode: initial !important; object-fit: initial !important; object-position: initial !important; object-view-box: initial !important; offset: initial !important; opacity: initial !important; order: initial !important; orphans: initial !important; outline: 0px !important; outline-offset: initial !important; overflow-anchor: initial !important; overflow-clip-margin: initial !important; overflow-wrap: initial !important; overflow: initial !important; overlay: initial !important; overscroll-behavior-block: initial !important; overscroll-behavior-inline: initial !important; overscroll-behavior: initial !important; padding-block: initial !important; padding: 0px !important; padding-inline: initial !important; page: initial !important; page-orientation: initial !important; paint-order: initial !important; perspective: initial !important; perspective-origin: initial !important; pointer-events: initial !important; position-try: initial !important; position-visibility: initial !important; quotes: initial !important; r: initial !important; resize: initial !important; rotate: initial !important; ruby-align: initial !important; ruby-position: initial !important; rx: initial !important; ry: initial !important; scale: initial !important; scroll-behavior: initial !important; scroll-margin-block: initial !important; scroll-margin: initial !important; scroll-margin-inline: initial !important; scroll-padding-block: initial !important; scroll-padding: initial !important; scroll-padding-inline: initial !important; scroll-snap-align: initial !important; scroll-snap-stop: initial !important; scroll-snap-type: initial !important; scroll-timeline: initial !important; scrollbar-color: initial !important; scrollbar-gutter: initial !important; scrollbar-width: initial !important; shape-image-threshold: initial !important; shape-margin: initial !important; shape-outside: initial !important; shape-rendering: initial !important; size: initial !important; speak: initial !important; stop-color: initial !important; stop-opacity: initial !important; stroke: initial !important; stroke-dasharray: initial !important; stroke-dashoffset: initial !important; stroke-linecap: initial !important; stroke-linejoin: initial !important; stroke-miterlimit: initial !important; stroke-opacity: initial !important; stroke-width: initial !important; tab-size: initial !important; table-layout: initial !important; text-align: initial !important; text-align-last: initial !important; text-anchor: initial !important; text-combine-upright: initial !important; text-decoration: initial !important; text-decoration-skip-ink: initial !important; text-emphasis: initial !important; text-emphasis-position: initial !important; text-indent: initial !important; text-overflow: initial !important; text-shadow: initial !important; text-transform: initial !important; text-underline-offset: initial !important; text-underline-position: initial !important; white-space: initial !important; timeline-scope: initial !important; touch-action: initial !important; transform: initial !important; transform-box: initial !important; transform-origin: initial !important; transform-style: initial !important; transition: width 5s !important; translate: initial !important; user-select: initial !important; vector-effect: initial !important; vertical-align: initial !important; view-timeline: initial !important; view-transition-class: initial !important; view-transition-name: initial !important; visibility: initial !important; border-spacing: initial !important; -webkit-box-align: initial !important; -webkit-box-decoration-break: initial !important; -webkit-box-direction: initial !important; -webkit-box-flex: initial !important; -webkit-box-ordinal-group: initial !important; -webkit-box-orient: initial !important; -webkit-box-pack: initial !important; -webkit-box-reflect: initial !important; -webkit-line-break: initial !important; -webkit-line-clamp: initial !important; -webkit-mask-box-image: initial !important; -webkit-print-color-adjust: initial !important; -webkit-rtl-ordering: initial !important; -webkit-ruby-position: initial !important; -webkit-tap-highlight-color: initial !important; -webkit-text-combine: initial !important; -webkit-text-decorations-in-effect: initial !important; -webkit-text-fill-color: unset !important; -webkit-text-security: initial !important; -webkit-text-stroke: initial !important; -webkit-user-drag: initial !important; widows: initial !important; width: initial !important; will-change: initial !important; word-break: initial !important; word-spacing: initial !important; x: initial !important; y: initial !important; z-index: initial !important;"><span style="display: inline-block !important; cursor: inherit !important; margin-left: 4px !important; margin-right: 6px !important; margin-top: 12px !important;"><svg viewBox="0 -960 960 960" width="20px" height="20px" class="google-anno-sa-intent-icon" style="color-scheme: initial !important; forced-color-adjust: initial !important; mask: initial !important; math-depth: initial !important; position: initial !important; position-anchor: initial !important; text-size-adjust: initial !important; appearance: initial !important; color: initial !important; font: initial !important; font-palette: initial !important; font-synthesis: initial !important; inset-area: initial !important; text-orientation: initial !important; text-rendering: initial !important; text-spacing-trim: initial !important; -webkit-font-smoothing: initial !important; -webkit-locale: initial !important; -webkit-text-orientation: initial !important; -webkit-writing-mode: initial !important; writing-mode: initial !important; zoom: initial !important; accent-color: initial !important; place-content: initial !important; place-items: initial !important; place-self: initial !important; alignment-baseline: initial !important; anchor-name: initial !important; animation-composition: initial !important; animation: initial !important; app-region: initial !important; aspect-ratio: initial !important; backdrop-filter: initial !important; backface-visibility: initial !important; background: initial !important; background-blend-mode: initial !important; baseline-shift: initial !important; baseline-source: initial !important; block-size: initial !important; border-block: initial !important; border: 0px !important; border-radius: initial !important; border-collapse: initial !important; border-end-end-radius: initial !important; border-end-start-radius: initial !important; border-inline: initial !important; border-start-end-radius: initial !important; border-start-start-radius: initial !important; inset: initial !important; box-shadow: none !important; box-sizing: initial !important; break-after: initial !important; break-before: initial !important; break-inside: initial !important; buffered-rendering: initial !important; caption-side: initial !important; caret-color: initial !important; clear: initial !important; clip: initial !important; clip-path: initial !important; clip-rule: initial !important; color-interpolation: initial !important; color-interpolation-filters: initial !important; color-rendering: initial !important; columns: initial !important; column-fill: initial !important; gap: initial !important; column-rule: initial !important; column-span: initial !important; contain: initial !important; contain-intrinsic-block-size: initial !important; contain-intrinsic-size: initial !important; contain-intrinsic-inline-size: initial !important; container: initial !important; content: initial !important; content-visibility: initial !important; counter-increment: initial !important; counter-reset: initial !important; counter-set: initial !important; cursor: inherit !important; cx: initial !important; cy: initial !important; d: initial !important; display: inline !important; dominant-baseline: initial !important; empty-cells: initial !important; field-sizing: initial !important; fill: rgb(26, 115, 232) !important; fill-opacity: initial !important; fill-rule: initial !important; filter: initial !important; flex: initial !important; flex-flow: initial !important; float: none !important; flood-color: initial !important; flood-opacity: initial !important; grid: initial !important; grid-area: initial !important; height: initial !important; hyphenate-character: initial !important; hyphenate-limit-chars: initial !important; hyphens: initial !important; image-orientation: initial !important; image-rendering: initial !important; initial-letter: initial !important; inline-size: initial !important; inset-block: initial !important; inset-inline: initial !important; isolation: initial !important; letter-spacing: initial !important; lighting-color: initial !important; line-break: initial !important; list-style: initial !important; margin-block: initial !important; margin: 0px !important; margin-inline: initial !important; marker: initial !important; mask-type: initial !important; math-shift: initial !important; math-style: initial !important; max-block-size: initial !important; max-height: initial !important; max-inline-size: initial !important; max-width: initial !important; min-block-size: initial !important; min-height: initial !important; min-inline-size: initial !important; min-width: initial !important; mix-blend-mode: initial !important; object-fit: initial !important; object-position: initial !important; object-view-box: initial !important; offset: initial !important; opacity: initial !important; order: initial !important; orphans: initial !important; outline: 0px !important; outline-offset: initial !important; overflow-anchor: initial !important; overflow-clip-margin: initial !important; overflow-wrap: initial !important; overflow: initial !important; overlay: initial !important; overscroll-behavior-block: initial !important; overscroll-behavior-inline: initial !important; overscroll-behavior: initial !important; padding-block: initial !important; padding: 0px !important; padding-inline: initial !important; page: initial !important; page-orientation: initial !important; paint-order: initial !important; perspective: initial !important; perspective-origin: initial !important; pointer-events: initial !important; position-try: initial !important; position-visibility: initial !important; quotes: initial !important; r: initial !important; resize: initial !important; rotate: initial !important; ruby-align: initial !important; ruby-position: initial !important; rx: initial !important; ry: initial !important; scale: initial !important; scroll-behavior: initial !important; scroll-margin-block: initial !important; scroll-margin: initial !important; scroll-margin-inline: initial !important; scroll-padding-block: initial !important; scroll-padding: initial !important; scroll-padding-inline: initial !important; scroll-snap-align: initial !important; scroll-snap-stop: initial !important; scroll-snap-type: initial !important; scroll-timeline: initial !important; scrollbar-color: initial !important; scrollbar-gutter: initial !important; scrollbar-width: initial !important; shape-image-threshold: initial !important; shape-margin: initial !important; shape-outside: initial !important; shape-rendering: initial !important; size: initial !important; speak: initial !important; stop-color: initial !important; stop-opacity: initial !important; stroke: initial !important; stroke-dasharray: initial !important; stroke-dashoffset: initial !important; stroke-linecap: initial !important; stroke-linejoin: initial !important; stroke-miterlimit: initial !important; stroke-opacity: initial !important; stroke-width: initial !important; tab-size: initial !important; table-layout: initial !important; text-align: initial !important; text-align-last: initial !important; text-anchor: initial !important; text-combine-upright: initial !important; text-decoration: initial !important; text-decoration-skip-ink: initial !important; text-emphasis: initial !important; text-emphasis-position: initial !important; text-indent: initial !important; text-overflow: initial !important; text-shadow: initial !important; text-transform: initial !important; text-underline-offset: initial !important; text-underline-position: initial !important; white-space: initial !important; timeline-scope: initial !important; touch-action: initial !important; transform: initial !important; transform-box: initial !important; transform-origin: initial !important; transform-style: initial !important; transition: initial !important; translate: initial !important; user-select: initial !important; vector-effect: initial !important; vertical-align: initial !important; view-timeline: initial !important; view-transition-class: initial !important; view-transition-name: initial !important; visibility: initial !important; border-spacing: initial !important; -webkit-box-align: initial !important; -webkit-box-decoration-break: initial !important; -webkit-box-direction: initial !important; -webkit-box-flex: initial !important; -webkit-box-ordinal-group: initial !important; -webkit-box-orient: initial !important; -webkit-box-pack: initial !important; -webkit-box-reflect: initial !important; -webkit-line-break: initial !important; -webkit-line-clamp: initial !important; -webkit-mask-box-image: initial !important; -webkit-print-color-adjust: initial !important; -webkit-rtl-ordering: initial !important; -webkit-ruby-position: initial !important; -webkit-tap-highlight-color: initial !important; -webkit-text-combine: initial !important; -webkit-text-decorations-in-effect: initial !important; -webkit-text-fill-color: unset !important; -webkit-text-security: initial !important; -webkit-text-stroke: initial !important; -webkit-user-drag: initial !important; widows: initial !important; width: initial !important; will-change: initial !important; word-break: initial !important; word-spacing: initial !important; x: initial !important; y: initial !important; z-index: initial !important;"><path d="M503-104q-24 24-57 24t-57-24L103-390q-23-23-23-56.5t23-56.5l352-353q11-11 26-17.5t32-6.5h286q33 0 56.5 23.5T879-800v286q0 17-6.5 32T855-456L503-104Zm196-536q25 0 42.5-17.5T759-700q0-25-17.5-42.5T699-760q-25 0-42.5 17.5T639-700q0 25 17.5 42.5T699-640ZM446-160l353-354v-286H513L160-446l286 286Zm353-640Z"></path></svg></span><span class="google-anno-sa-qtx google-anno-skip" tabindex="0" role="link" aria-live="polite" aria-label="Chuyển đến các lựa chọn mua sắm của Amunra Hotel Đà Nẵng" style="color-scheme: initial !important; forced-color-adjust: initial !important; mask: initial !important; math-depth: initial !important; position: initial !important; position-anchor: initial !important; text-size-adjust: initial !important; appearance: initial !important; color: rgb(26, 115, 232) !important; font-family: Roboto !important; font-feature-settings: initial !important; font-kerning: initial !important; font-optical-sizing: initial !important; font-palette: initial !important; font-size: 16px !important; font-size-adjust: initial !important; font-stretch: initial !important; font-style: normal !important; font-synthesis: initial !important; font-variant: initial !important; font-variation-settings: initial !important; font-weight: 400 !important; inset-area: initial !important; text-orientation: initial !important; text-rendering: initial !important; text-spacing-trim: initial !important; -webkit-font-smoothing: initial !important; -webkit-locale: initial !important; -webkit-text-orientation: initial !important; -webkit-writing-mode: initial !important; writing-mode: initial !important; zoom: initial !important; accent-color: initial !important; place-content: initial !important; align-items: center !important; place-self: initial !important; alignment-baseline: initial !important; anchor-name: initial !important; animation-composition: initial !important; animation: initial !important; app-region: initial !important; aspect-ratio: initial !important; backdrop-filter: initial !important; backface-visibility: initial !important; background: initial !important; background-blend-mode: initial !important; baseline-shift: initial !important; baseline-source: initial !important; block-size: initial !important; border-block: initial !important; border: initial !important; border-radius: initial !important; border-collapse: initial !important; border-end-end-radius: initial !important; border-end-start-radius: initial !important; border-inline: initial !important; border-start-end-radius: initial !important; border-start-start-radius: initial !important; inset: initial !important; box-shadow: initial !important; box-sizing: initial !important; break-after: initial !important; break-before: initial !important; break-inside: initial !important; buffered-rendering: initial !important; caption-side: initial !important; caret-color: initial !important; clear: initial !important; clip: initial !important; clip-path: initial !important; clip-rule: initial !important; color-interpolation: initial !important; color-interpolation-filters: initial !important; color-rendering: initial !important; columns: initial !important; column-fill: initial !important; gap: initial !important; column-rule: initial !important; column-span: initial !important; contain: initial !important; contain-intrinsic-block-size: initial !important; contain-intrinsic-size: initial !important; contain-intrinsic-inline-size: initial !important; container: initial !important; content: initial !important; content-visibility: initial !important; counter-increment: initial !important; counter-reset: initial !important; counter-set: initial !important; cursor: inherit !important; cx: initial !important; cy: initial !important; d: initial !important; display: initial !important; dominant-baseline: initial !important; empty-cells: initial !important; field-sizing: initial !important; fill: initial !important; fill-opacity: initial !important; fill-rule: initial !important; filter: initial !important; flex: initial !important; flex-flow: initial !important; float: initial !important; flood-color: initial !important; flood-opacity: initial !important; grid: initial !important; grid-area: initial !important; height: 40px !important; hyphenate-character: initial !important; hyphenate-limit-chars: initial !important; hyphens: initial !important; image-orientation: initial !important; image-rendering: initial !important; initial-letter: initial !important; inline-size: initial !important; inset-block: initial !important; inset-inline: initial !important; isolation: initial !important; justify-items: initial !important; letter-spacing: initial !important; lighting-color: initial !important; line-break: initial !important; line-height: 44px !important; list-style: initial !important; margin-block: initial !important; margin: initial !important; margin-inline: initial !important; marker: initial !important; mask-type: initial !important; math-shift: initial !important; math-style: initial !important; max-block-size: initial !important; max-height: initial !important; max-inline-size: initial !important; max-width: initial !important; min-block-size: initial !important; min-height: initial !important; min-inline-size: initial !important; min-width: initial !important; mix-blend-mode: initial !important; object-fit: initial !important; object-position: initial !important; object-view-box: initial !important; offset: initial !important; opacity: initial !important; order: initial !important; orphans: initial !important; outline: initial !important; outline-offset: initial !important; overflow-anchor: initial !important; overflow-clip-margin: initial !important; overflow-wrap: initial !important; overflow: hidden !important; overlay: initial !important; overscroll-behavior-block: initial !important; overscroll-behavior-inline: initial !important; overscroll-behavior: initial !important; padding-block: initial !important; padding: initial !important; padding-inline: initial !important; page: initial !important; page-orientation: initial !important; paint-order: initial !important; perspective: initial !important; perspective-origin: initial !important; pointer-events: initial !important; position-try: initial !important; position-visibility: initial !important; quotes: initial !important; r: initial !important; resize: initial !important; rotate: initial !important; ruby-align: initial !important; ruby-position: initial !important; rx: initial !important; ry: initial !important; scale: initial !important; scroll-behavior: initial !important; scroll-margin-block: initial !important; scroll-margin: initial !important; scroll-margin-inline: initial !important; scroll-padding-block: initial !important; scroll-padding: initial !important; scroll-padding-inline: initial !important; scroll-snap-align: initial !important; scroll-snap-stop: initial !important; scroll-snap-type: initial !important; scroll-timeline: initial !important; scrollbar-color: initial !important; scrollbar-gutter: initial !important; scrollbar-width: initial !important; shape-image-threshold: initial !important; shape-margin: initial !important; shape-outside: initial !important; shape-rendering: initial !important; size: initial !important; speak: initial !important; stop-color: initial !important; stop-opacity: initial !important; stroke: initial !important; stroke-dasharray: initial !important; stroke-dashoffset: initial !important; stroke-linecap: initial !important; stroke-linejoin: initial !important; stroke-miterlimit: initial !important; stroke-opacity: initial !important; stroke-width: initial !important; tab-size: initial !important; table-layout: initial !important; text-align: initial !important; text-align-last: initial !important; text-anchor: initial !important; text-combine-upright: initial !important; text-decoration: initial !important; text-decoration-skip-ink: initial !important; text-emphasis: initial !important; text-emphasis-position: initial !important; text-indent: initial !important; text-overflow: ellipsis !important; text-shadow: initial !important; text-transform: initial !important; text-underline-offset: initial !important; text-underline-position: initial !important; white-space: nowrap !important; timeline-scope: initial !important; touch-action: initial !important; transform: initial !important; transform-box: initial !important; transform-origin: initial !important; transform-style: initial !important; transition: initial !important; translate: initial !important; user-select: initial !important; vector-effect: initial !important; vertical-align: initial !important; view-timeline: initial !important; view-transition-class: initial !important; view-transition-name: initial !important; visibility: initial !important; border-spacing: initial !important; -webkit-box-align: initial !important; -webkit-box-decoration-break: initial !important; -webkit-box-direction: initial !important; -webkit-box-flex: initial !important; -webkit-box-ordinal-group: initial !important; -webkit-box-orient: initial !important; -webkit-box-pack: initial !important; -webkit-box-reflect: initial !important; -webkit-line-break: initial !important; -webkit-line-clamp: initial !important; -webkit-mask-box-image: initial !important; -webkit-print-color-adjust: initial !important; -webkit-rtl-ordering: initial !important; -webkit-ruby-position: initial !important; -webkit-tap-highlight-color: transparent !important; -webkit-text-combine: initial !important; -webkit-text-decorations-in-effect: initial !important; -webkit-text-fill-color: unset !important; -webkit-text-security: initial !important; -webkit-text-stroke: initial !important; -webkit-user-drag: initial !important; widows: initial !important; width: initial !important; will-change: initial !important; word-break: initial !important; word-spacing: initial !important; x: initial !important; y: initial !important; z-index: initial !important;">Amunra Hotel Đà Nẵng</span></span><span id="gda" style="color-scheme: initial !important; forced-color-adjust: initial !important; mask: initial !important; math-depth: initial !important; position: initial !important; position-anchor: initial !important; text-size-adjust: initial !important; appearance: initial !important; color: initial !important; font: initial !important; font-palette: initial !important; font-synthesis: initial !important; inset-area: initial !important; text-orientation: initial !important; text-rendering: initial !important; text-spacing-trim: initial !important; -webkit-font-smoothing: initial !important; -webkit-locale: initial !important; -webkit-text-orientation: initial !important; -webkit-writing-mode: initial !important; writing-mode: initial !important; zoom: initial !important; accent-color: initial !important; place-content: initial !important; place-items: initial !important; place-self: initial !important; alignment-baseline: initial !important; anchor-name: initial !important; animation-composition: initial !important; animation: initial !important; app-region: initial !important; aspect-ratio: initial !important; backdrop-filter: initial !important; backface-visibility: initial !important; background: initial !important; background-blend-mode: initial !important; baseline-shift: initial !important; baseline-source: initial !important; block-size: initial !important; border-block: initial !important; border: initial !important; border-radius: initial !important; border-collapse: initial !important; border-end-end-radius: initial !important; border-end-start-radius: initial !important; border-inline: initial !important; border-start-end-radius: initial !important; border-start-start-radius: initial !important; inset: initial !important; box-shadow: initial !important; box-sizing: initial !important; break-after: initial !important; break-before: initial !important; break-inside: initial !important; buffered-rendering: initial !important; caption-side: initial !important; caret-color: initial !important; clear: initial !important; clip: initial !important; clip-path: initial !important; clip-rule: initial !important; color-interpolation: initial !important; color-interpolation-filters: initial !important; color-rendering: initial !important; columns: initial !important; column-fill: initial !important; gap: initial !important; column-rule: initial !important; column-span: initial !important; contain: initial !important; contain-intrinsic-block-size: initial !important; contain-intrinsic-size: initial !important; contain-intrinsic-inline-size: initial !important; container: initial !important; content: initial !important; content-visibility: initial !important; counter-increment: initial !important; counter-reset: initial !important; counter-set: initial !important; cursor: initial !important; cx: initial !important; cy: initial !important; d: initial !important; display: initial !important; dominant-baseline: initial !important; empty-cells: initial !important; field-sizing: initial !important; fill: initial !important; fill-opacity: initial !important; fill-rule: initial !important; filter: initial !important; flex: initial !important; flex-flow: initial !important; float: initial !important; flood-color: initial !important; flood-opacity: initial !important; grid: initial !important; grid-area: initial !important; height: initial !important; hyphenate-character: initial !important; hyphenate-limit-chars: initial !important; hyphens: initial !important; image-orientation: initial !important; image-rendering: initial !important; initial-letter: initial !important; inline-size: initial !important; inset-block: initial !important; inset-inline: initial !important; isolation: initial !important; letter-spacing: initial !important; lighting-color: initial !important; line-break: initial !important; list-style: initial !important; margin-block: initial !important; margin: initial !important; margin-inline: initial !important; marker: initial !important; mask-type: initial !important; math-shift: initial !important; math-style: initial !important; max-block-size: initial !important; max-height: initial !important; max-inline-size: initial !important; max-width: initial !important; min-block-size: initial !important; min-height: initial !important; min-inline-size: initial !important; min-width: initial !important; mix-blend-mode: initial !important; object-fit: initial !important; object-position: initial !important; object-view-box: initial !important; offset: initial !important; opacity: initial !important; order: initial !important; orphans: initial !important; outline: initial !important; outline-offset: initial !important; overflow-anchor: initial !important; overflow-clip-margin: initial !important; overflow-wrap: initial !important; overflow: initial !important; overlay: initial !important; overscroll-behavior-block: initial !important; overscroll-behavior-inline: initial !important; overscroll-behavior: initial !important; padding-block: initial !important; padding: initial !important; padding-inline: initial !important; page: initial !important; page-orientation: initial !important; paint-order: initial !important; perspective: initial !important; perspective-origin: initial !important; pointer-events: initial !important; position-try: initial !important; position-visibility: initial !important; quotes: initial !important; r: initial !important; resize: initial !important; rotate: initial !important; ruby-align: initial !important; ruby-position: initial !important; rx: initial !important; ry: initial !important; scale: initial !important; scroll-behavior: initial !important; scroll-margin-block: initial !important; scroll-margin: initial !important; scroll-margin-inline: initial !important; scroll-padding-block: initial !important; scroll-padding: initial !important; scroll-padding-inline: initial !important; scroll-snap-align: initial !important; scroll-snap-stop: initial !important; scroll-snap-type: initial !important; scroll-timeline: initial !important; scrollbar-color: initial !important; scrollbar-gutter: initial !important; scrollbar-width: initial !important; shape-image-threshold: initial !important; shape-margin: initial !important; shape-outside: initial !important; shape-rendering: initial !important; size: initial !important; speak: initial !important; stop-color: initial !important; stop-opacity: initial !important; stroke: initial !important; stroke-dasharray: initial !important; stroke-dashoffset: initial !important; stroke-linecap: initial !important; stroke-linejoin: initial !important; stroke-miterlimit: initial !important; stroke-opacity: initial !important; stroke-width: initial !important; tab-size: initial !important; table-layout: initial !important; text-align: initial !important; text-align-last: initial !important; text-anchor: initial !important; text-combine-upright: initial !important; text-decoration: initial !important; text-decoration-skip-ink: initial !important; text-emphasis: initial !important; text-emphasis-position: initial !important; text-indent: initial !important; text-overflow: initial !important; text-shadow: initial !important; text-transform: initial !important; text-underline-offset: initial !important; text-underline-position: initial !important; white-space: initial !important; timeline-scope: initial !important; touch-action: initial !important; transform: initial !important; transform-box: initial !important; transform-origin: initial !important; transform-style: initial !important; transition: initial !important; translate: initial !important; user-select: initial !important; vector-effect: initial !important; vertical-align: initial !important; view-timeline: initial !important; view-transition-class: initial !important; view-transition-name: initial !important; visibility: initial !important; border-spacing: initial !important; -webkit-box-align: initial !important; -webkit-box-decoration-break: initial !important; -webkit-box-direction: initial !important; -webkit-box-flex: initial !important; -webkit-box-ordinal-group: initial !important; -webkit-box-orient: initial !important; -webkit-box-pack: initial !important; -webkit-box-reflect: initial !important; -webkit-line-break: initial !important; -webkit-line-clamp: initial !important; -webkit-mask-box-image: initial !important; -webkit-print-color-adjust: initial !important; -webkit-rtl-ordering: initial !important; -webkit-ruby-position: initial !important; -webkit-tap-highlight-color: initial !important; -webkit-text-combine: initial !important; -webkit-text-decorations-in-effect: initial !important; -webkit-text-fill-color: unset !important; -webkit-text-security: initial !important; -webkit-text-stroke: initial !important; -webkit-user-drag: initial !important; widows: initial !important; width: initial !important; will-change: initial !important; word-break: initial !important; word-spacing: initial !important; x: initial !important; y: initial !important; z-index: initial !important;"><svg viewBox="0 -960 960 960" width="20px" height="20px" role="button" aria-label="Đóng quảng cáo mua sắm cố định cuối màn hình" tabindex="0" style="color-scheme: initial !important; forced-color-adjust: initial !important; mask: initial !important; math-depth: initial !important; position: absolute !important; position-anchor: initial !important; text-size-adjust: initial !important; appearance: initial !important; color: initial !important; font: initial !important; font-palette: initial !important; font-synthesis: initial !important; inset-area: initial !important; text-orientation: initial !important; text-rendering: initial !important; text-spacing-trim: initial !important; -webkit-font-smoothing: initial !important; -webkit-locale: initial !important; -webkit-text-orientation: initial !important; -webkit-writing-mode: initial !important; writing-mode: initial !important; zoom: initial !important; accent-color: initial !important; place-content: initial !important; place-items: initial !important; place-self: initial !important; alignment-baseline: initial !important; anchor-name: initial !important; animation-composition: initial !important; animation: initial !important; app-region: initial !important; aspect-ratio: initial !important; backdrop-filter: initial !important; backface-visibility: initial !important; background: initial !important; background-blend-mode: initial !important; baseline-shift: initial !important; baseline-source: initial !important; block-size: initial !important; border-block: initial !important; border: 0px !important; border-radius: initial !important; border-collapse: initial !important; border-end-end-radius: initial !important; border-end-start-radius: initial !important; border-inline: initial !important; border-start-end-radius: initial !important; border-start-start-radius: initial !important; bottom: initial !important; box-shadow: none !important; box-sizing: initial !important; break-after: initial !important; break-before: initial !important; break-inside: initial !important; buffered-rendering: initial !important; caption-side: initial !important; caret-color: initial !important; clear: initial !important; clip: initial !important; clip-path: initial !important; clip-rule: initial !important; color-interpolation: initial !important; color-interpolation-filters: initial !important; color-rendering: initial !important; columns: initial !important; column-fill: initial !important; gap: initial !important; column-rule: initial !important; column-span: initial !important; contain: initial !important; contain-intrinsic-block-size: initial !important; contain-intrinsic-size: initial !important; contain-intrinsic-inline-size: initial !important; container: initial !important; content: initial !important; content-visibility: initial !important; counter-increment: initial !important; counter-reset: initial !important; counter-set: initial !important; cursor: initial !important; cx: initial !important; cy: initial !important; d: initial !important; display: inline !important; dominant-baseline: initial !important; empty-cells: initial !important; field-sizing: initial !important; fill: rgb(26, 115, 232) !important; fill-opacity: initial !important; fill-rule: initial !important; filter: initial !important; flex: initial !important; flex-flow: initial !important; float: none !important; flood-color: initial !important; flood-opacity: initial !important; grid: initial !important; grid-area: initial !important; height: initial !important; hyphenate-character: initial !important; hyphenate-limit-chars: initial !important; hyphens: initial !important; image-orientation: initial !important; image-rendering: initial !important; initial-letter: initial !important; inline-size: initial !important; inset-block: initial !important; inset-inline: initial !important; isolation: initial !important; left: 13px !important; letter-spacing: initial !important; lighting-color: initial !important; line-break: initial !important; list-style: initial !important; margin-block: initial !important; margin: 0px !important; margin-inline: initial !important; marker: initial !important; mask-type: initial !important; math-shift: initial !important; math-style: initial !important; max-block-size: initial !important; max-height: initial !important; max-inline-size: initial !important; max-width: initial !important; min-block-size: initial !important; min-height: initial !important; min-inline-size: initial !important; min-width: initial !important; mix-blend-mode: initial !important; object-fit: initial !important; object-position: initial !important; object-view-box: initial !important; offset: initial !important; opacity: initial !important; order: initial !important; orphans: initial !important; outline: 0px !important; outline-offset: initial !important; overflow-anchor: initial !important; overflow-clip-margin: initial !important; overflow-wrap: initial !important; overflow: initial !important; overlay: initial !important; overscroll-behavior-block: initial !important; overscroll-behavior-inline: initial !important; overscroll-behavior: initial !important; padding-block: initial !important; padding: 0px !important; padding-inline: initial !important; page: initial !important; page-orientation: initial !important; paint-order: initial !important; perspective: initial !important; perspective-origin: initial !important; pointer-events: initial !important; position-try: initial !important; position-visibility: initial !important; quotes: initial !important; r: initial !important; resize: initial !important; right: initial !important; rotate: initial !important; ruby-align: initial !important; ruby-position: initial !important; rx: initial !important; ry: initial !important; scale: initial !important; scroll-behavior: initial !important; scroll-margin-block: initial !important; scroll-margin: initial !important; scroll-margin-inline: initial !important; scroll-padding-block: initial !important; scroll-padding: initial !important; scroll-padding-inline: initial !important; scroll-snap-align: initial !important; scroll-snap-stop: initial !important; scroll-snap-type: initial !important; scroll-timeline: initial !important; scrollbar-color: initial !important; scrollbar-gutter: initial !important; scrollbar-width: initial !important; shape-image-threshold: initial !important; shape-margin: initial !important; shape-outside: initial !important; shape-rendering: initial !important; size: initial !important; speak: initial !important; stop-color: initial !important; stop-opacity: initial !important; stroke: initial !important; stroke-dasharray: initial !important; stroke-dashoffset: initial !important; stroke-linecap: initial !important; stroke-linejoin: initial !important; stroke-miterlimit: initial !important; stroke-opacity: initial !important; stroke-width: initial !important; tab-size: initial !important; table-layout: initial !important; text-align: initial !important; text-align-last: initial !important; text-anchor: initial !important; text-combine-upright: initial !important; text-decoration: initial !important; text-decoration-skip-ink: initial !important; text-emphasis: initial !important; text-emphasis-position: initial !important; text-indent: initial !important; text-overflow: initial !important; text-shadow: initial !important; text-transform: initial !important; text-underline-offset: initial !important; text-underline-position: initial !important; white-space: initial !important; timeline-scope: initial !important; top: 15px !important; touch-action: initial !important; transform: none !important; transform-box: initial !important; transform-origin: initial !important; transform-style: initial !important; transition: initial !important; translate: initial !important; user-select: initial !important; vector-effect: initial !important; vertical-align: initial !important; view-timeline: initial !important; view-transition-class: initial !important; view-transition-name: initial !important; visibility: initial !important; border-spacing: initial !important; -webkit-box-align: initial !important; -webkit-box-decoration-break: initial !important; -webkit-box-direction: initial !important; -webkit-box-flex: initial !important; -webkit-box-ordinal-group: initial !important; -webkit-box-orient: initial !important; -webkit-box-pack: initial !important; -webkit-box-reflect: initial !important; -webkit-line-break: initial !important; -webkit-line-clamp: initial !important; -webkit-mask-box-image: initial !important; -webkit-print-color-adjust: initial !important; -webkit-rtl-ordering: initial !important; -webkit-ruby-position: initial !important; -webkit-tap-highlight-color: initial !important; -webkit-text-combine: initial !important; -webkit-text-decorations-in-effect: initial !important; -webkit-text-fill-color: unset !important; -webkit-text-security: initial !important; -webkit-text-stroke: initial !important; -webkit-user-drag: initial !important; widows: initial !important; width: initial !important; will-change: initial !important; word-break: initial !important; word-spacing: initial !important; x: initial !important; y: initial !important; z-index: initial !important;"><path d="m256-200-56-56 224-224-224-224 56-56 224 224 224-224 56 56-224 224 224 224-56 56-224-224-224 224Z"></path></svg></span></div><iframe src="https://www.google.com/recaptcha/api2/aframe" width="0" height="0" style="display: none;"></iframe></body>
</html>
