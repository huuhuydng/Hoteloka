<%-- 
    Document   : test
    Created on : Sep 8, 2024, 1:25:21 PM
    Author     : hadi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <div class="clearfix"></div>
            <div class="container" style="height: auto !important;">
                <div class="hotel-filter-button"><span>Lọc khách sạn</span></div>
                <div class="hotel-filter">
                    <script type="text/javascript">
                        var uri_page = 'https://khachsandanang.com.vn/khach-san-da-nang.html';
                    </script>
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

                        <h3 class="mt">Địa điểm</h3>
                        <div class="filter-search modc">
                            <ul class="po_otp">
                                <li><a href="javascript:;" data_id="40" class="hotp ">Gần Cầu Rồng</a></li>
                                <li><a href="javascript:;" data_id="14" class="hotp ">Trung Tâm Thành Phố/Sân Bay</a></li>
                                <li><a href="javascript:;" data_id="15" class="hotp ">Ven biển Mỹ Khê</a></li>
                                <li><a href="javascript:;" data_id="16" class="hotp ">Ven Sông Hàn</a></li>
                                <li><a href="javascript:;" data_id="36" class="hotp ">Ven biển Phạm Văn Đồng</a></li>
                                <li><a href="javascript:;" data_id="12" class="hotp ">Ven Biển Bắc Mỹ An</a></li>
                                <li><a href="javascript:;" data_id="13" class="hotp ">Ven biển Nguyễn Tất Thành</a></li>
                                <li><a href="javascript:;" data_id="10" class="hotp ">Ven biển Non Nước</a></li>
                                <li><a href="javascript:;" data_id="9" class="hotp ">Khu thắng cảnh Ngũ Hành Sơn</a></li>
                                <li><a href="javascript:;" data_id="37" class="hotp ">Khu du lịch Bà Nà Hills</a></li>
                                <li><a href="javascript:;" data_id="11" class="hotp ">Khu Bán Đảo Sơn Trà/Núi Khỉ</a></li>
                                <li><a href="javascript:;" data_id="8" class="hotp ">Ven biển Thọ Quang</a></li>
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

                <div class="container-fuild py-3" style="position: relative; height: auto !important;">
                    <div class="TabHome">
                        <ul>
                            <li><a href="https://khachsandanang.com.vn/khach-san-da-nang.html" class="active tablink">Phổ biến nhất</a></li>
                            <li>
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang.html?sort=0">Quận, Huyện</a>
                                <ul>
                                    <li><a href="https://khachsandanang.com.vn/khach-san-da-nang.html?sort=0&amp;dis=571">Huyện Hòa Vang</a></li>
                                    <li><a href="https://khachsandanang.com.vn/khach-san-da-nang.html?sort=0&amp;dis=572">Huyện Hoàng Sa</a></li>
                                    <li><a href="https://khachsandanang.com.vn/khach-san-da-nang.html?sort=0&amp;dis=573">Quận Cẩm Lệ</a></li>
                                    <li><a href="https://khachsandanang.com.vn/khach-san-da-nang.html?sort=0&amp;dis=574">Quận Hải Châu</a></li>
                                    <li><a href="https://khachsandanang.com.vn/khach-san-da-nang.html?sort=0&amp;dis=575">Quận Liên Chiểu</a></li>
                                    <li><a href="https://khachsandanang.com.vn/khach-san-da-nang.html?sort=0&amp;dis=576">Quận Ngũ Hành Sơn</a></li>
                                    <li><a href="https://khachsandanang.com.vn/khach-san-da-nang.html?sort=0&amp;dis=577">Quận Sơn Trà</a></li>
                                    <li><a href="https://khachsandanang.com.vn/khach-san-da-nang.html?sort=0&amp;dis=578">Quận Thanh Khê</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang.html?sort=0">Hạng sao</a>
                                <ul>
                                    <li><a href="https://khachsandanang.com.vn/khach-san-da-nang.html?sort=3">Hạng từ 5-1</a></li>
                                    <li><a href="https://khachsandanang.com.vn/khach-san-da-nang.html?sort=4">Hạng từ 1-5</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="https://khachsandanang.com.vn/khach-san-da-nang.html?sort=0" data="hotel_hoian" class="tablink">Giá</a>
                                <ul>
                                    <li><a href="https://khachsandanang.com.vn/khach-san-da-nang.html?sort=1">Giá giảm dần</a></li>
                                    <li><a href="https://khachsandanang.com.vn/khach-san-da-nang.html?sort=2">Giá tăng dần</a></li>
                                </ul>
                            </li>

                        </ul>
                    </div>

                    <div style="color-scheme: initial !important; forced-color-adjust: initial !important; mask: initial !important; math-depth: initial !important; position: initial !important; position-anchor: initial !important; text-size-adjust: initial !important; appearance: initial !important; color: initial !important; font: initial !important; font-palette: initial !important; font-synthesis: initial !important; inset-area: initial !important; position-area: initial !important; text-orientation: initial !important; text-rendering: initial !important; text-spacing-trim: initial !important; -webkit-font-smoothing: initial !important; -webkit-locale: initial !important; -webkit-text-orientation: initial !important; -webkit-writing-mode: initial !important; writing-mode: initial !important; zoom: initial !important; accent-color: initial !important; place-content: initial !important; place-items: initial !important; place-self: initial !important; alignment-baseline: initial !important; anchor-name: initial !important; animation-composition: initial !important; animation: initial !important; app-region: initial !important; aspect-ratio: initial !important; backdrop-filter: initial !important; backface-visibility: initial !important; background: initial !important; background-blend-mode: initial !important; baseline-shift: initial !important; baseline-source: initial !important; block-size: initial !important; border-block: initial !important; border: initial !important; border-radius: initial !important; border-collapse: initial !important; border-end-end-radius: initial !important; border-end-start-radius: initial !important; border-inline: initial !important; border-start-end-radius: initial !important; border-start-start-radius: initial !important; inset: initial !important; box-shadow: initial !important; box-sizing: initial !important; break-after: initial !important; break-before: initial !important; break-inside: initial !important; buffered-rendering: initial !important; caption-side: initial !important; caret-color: initial !important; clear: initial !important; clip: initial !important; clip-path: initial !important; clip-rule: initial !important; color-interpolation: initial !important; color-interpolation-filters: initial !important; color-rendering: initial !important; columns: initial !important; column-fill: initial !important; gap: initial !important; column-rule: initial !important; column-span: initial !important; contain: initial !important; contain-intrinsic-block-size: initial !important; contain-intrinsic-size: initial !important; contain-intrinsic-inline-size: initial !important; container: initial !important; content: initial !important; content-visibility: initial !important; counter-increment: initial !important; counter-reset: initial !important; counter-set: initial !important; cursor: initial !important; cx: initial !important; cy: initial !important; d: initial !important; display: initial !important; dominant-baseline: initial !important; empty-cells: initial !important; field-sizing: initial !important; fill: initial !important; fill-opacity: initial !important; fill-rule: initial !important; filter: initial !important; flex: initial !important; flex-flow: initial !important; float: initial !important; flood-color: initial !important; flood-opacity: initial !important; grid: initial !important; grid-area: initial !important; height: initial !important; hyphenate-character: initial !important; hyphenate-limit-chars: initial !important; hyphens: initial !important; image-orientation: initial !important; image-rendering: initial !important; initial-letter: initial !important; inline-size: initial !important; inset-block: initial !important; inset-inline: initial !important; interpolate-size: initial !important; isolation: initial !important; letter-spacing: initial !important; lighting-color: initial !important; line-break: initial !important; list-style: initial !important; margin-block: initial !important; margin: initial !important; margin-inline: initial !important; marker: initial !important; mask-type: initial !important; math-shift: initial !important; math-style: initial !important; max-block-size: initial !important; max-height: initial !important; max-inline-size: initial !important; max-width: initial !important; min-block-size: initial !important; min-height: initial !important; min-inline-size: initial !important; min-width: initial !important; mix-blend-mode: initial !important; object-fit: initial !important; object-position: initial !important; object-view-box: initial !important; offset: initial !important; opacity: initial !important; order: initial !important; orphans: initial !important; outline: initial !important; outline-offset: initial !important; overflow-anchor: initial !important; overflow-clip-margin: initial !important; overflow-wrap: initial !important; overflow: initial !important; overlay: initial !important; overscroll-behavior-block: initial !important; overscroll-behavior-inline: initial !important; overscroll-behavior: initial !important; padding-block: initial !important; padding: initial !important; padding-inline: initial !important; page: initial !important; page-orientation: initial !important; paint-order: initial !important; perspective: initial !important; perspective-origin: initial !important; pointer-events: initial !important; position-try: initial !important; position-visibility: initial !important; quotes: initial !important; r: initial !important; resize: initial !important; rotate: initial !important; ruby-align: initial !important; ruby-position: initial !important; rx: initial !important; ry: initial !important; scale: initial !important; scroll-behavior: initial !important; scroll-margin-block: initial !important; scroll-margin: initial !important; scroll-margin-inline: initial !important; scroll-padding-block: initial !important; scroll-padding: initial !important; scroll-padding-inline: initial !important; scroll-snap-align: initial !important; scroll-snap-stop: initial !important; scroll-snap-type: initial !important; scroll-timeline: initial !important; scrollbar-color: initial !important; scrollbar-gutter: initial !important; scrollbar-width: initial !important; shape-image-threshold: initial !important; shape-margin: initial !important; shape-outside: initial !important; shape-rendering: initial !important; size: initial !important; speak: initial !important; stop-color: initial !important; stop-opacity: initial !important; stroke: initial !important; stroke-dasharray: initial !important; stroke-dashoffset: initial !important; stroke-linecap: initial !important; stroke-linejoin: initial !important; stroke-miterlimit: initial !important; stroke-opacity: initial !important; stroke-width: initial !important; tab-size: initial !important; table-layout: initial !important; text-align: initial !important; text-align-last: initial !important; text-anchor: initial !important; text-combine-upright: initial !important; text-decoration: initial !important; text-decoration-skip-ink: initial !important; text-emphasis: initial !important; text-emphasis-position: initial !important; text-indent: initial !important; text-overflow: initial !important; text-shadow: initial !important; text-transform: initial !important; text-underline-offset: initial !important; text-underline-position: initial !important; white-space: initial !important; timeline-scope: initial !important; touch-action: initial !important; transform: initial !important; transform-box: initial !important; transform-origin: initial !important; transform-style: initial !important; transition: initial !important; translate: initial !important; user-select: initial !important; vector-effect: initial !important; vertical-align: initial !important; view-timeline: initial !important; view-transition-class: initial !important; view-transition-name: initial !important; visibility: initial !important; border-spacing: initial !important; -webkit-box-align: initial !important; -webkit-box-decoration-break: initial !important; -webkit-box-direction: initial !important; -webkit-box-flex: initial !important; -webkit-box-ordinal-group: initial !important; -webkit-box-orient: initial !important; -webkit-box-pack: initial !important; -webkit-box-reflect: initial !important; -webkit-line-break: initial !important; -webkit-line-clamp: initial !important; -webkit-mask-box-image: initial !important; -webkit-print-color-adjust: initial !important; -webkit-rtl-ordering: initial !important; -webkit-ruby-position: initial !important; -webkit-tap-highlight-color: initial !important; -webkit-text-combine: initial !important; -webkit-text-decorations-in-effect: initial !important; -webkit-text-fill-color: unset !important; -webkit-text-security: initial !important; -webkit-text-stroke: initial !important; -webkit-user-drag: initial !important; widows: initial !important; width: initial !important; will-change: initial !important; word-break: initial !important; word-spacing: initial !important; x: initial !important; y: initial !important; z-index: initial !important;"></div><h1 class="heading detail-heading"><span>Khách sạn ${h.hotel_name}</span></h1>

                    <div class="hotel_content" style="height: auto !important;">
                        <div class="hinfo">


                            <span class="stars fl">
                                <c:forEach begin="1" end="${h.hotel_star}" var="s">
                                <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="">
                                </c:forEach>
<!--                                <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="">
                                <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="">-->
                            </span>
                            <span style="padding: 6px 0 0 50px; float: left; font-size: 120%;"><b>  Số phòng</b>: ${h.hotel_numRoom}</span>
                        </div>
                        <a href="https://khachsandanang.com.vn/api/viewmap/227.html" title="Xem vị trí Khách sạn San San" class=" show_map maps_hotel">Bản đồ</a>
                        <div class="info-more"><b>Khu vực</b>:  
                           <a href="https://khachsandanang.com.vn/khach-san-da-nang.html?sort=0&amp;p=15">Ven biển ${h.hotel_ward}</a>                         
                        </div>                                       

                        <div class="info-more"><b>Địa chỉ</b>: ${h.hotel_street} – Quận ${h.hotel_district} - Thành Phố <a href="#" class="google-anno" style="border: 0px !important; box-shadow: none !important; display: inline !important; float: none !important; margin: 0px !important; outline: 0px !important; padding: 0px !important; text-decoration: none !important; fill: currentcolor !important;"><svg viewBox="100 -1000 840 840" width="calc(16px - 2px)" height="16px" style="color-scheme: initial !important; forced-color-adjust: initial !important; mask: initial !important; math-depth: initial !important; position: initial !important; position-anchor: initial !important; text-size-adjust: initial !important; appearance: initial !important; color: inherit !important; font: initial !important; font-palette: initial !important; font-synthesis: initial !important; inset-area: initial !important; position-area: initial !important; text-orientation: initial !important; text-rendering: initial !important; text-spacing-trim: initial !important; -webkit-font-smoothing: initial !important; -webkit-locale: initial !important; -webkit-text-orientation: initial !important; -webkit-writing-mode: initial !important; writing-mode: initial !important; zoom: initial !important; accent-color: initial !important; place-content: initial !important; place-items: initial !important; place-self: initial !important; alignment-baseline: initial !important; anchor-name: initial !important; animation-composition: initial !important; animation: initial !important; app-region: initial !important; aspect-ratio: initial !important; backdrop-filter: initial !important; backface-visibility: initial !important; background: initial !important; background-blend-mode: initial !important; baseline-shift: initial !important; baseline-source: initial !important; block-size: initial !important; border-block: initial !important; border: 0px !important; border-radius: initial !important; border-collapse: initial !important; border-end-end-radius: initial !important; border-end-start-radius: initial !important; border-inline: initial !important; border-start-end-radius: initial !important; border-start-start-radius: initial !important; inset: initial !important; box-shadow: none !important; box-sizing: initial !important; break-after: initial !important; break-before: initial !important; break-inside: initial !important; buffered-rendering: initial !important; caption-side: initial !important; caret-color: initial !important; clear: initial !important; clip: initial !important; clip-path: initial !important; clip-rule: initial !important; color-interpolation: initial !important; color-interpolation-filters: initial !important; color-rendering: initial !important; columns: initial !important; column-fill: initial !important; gap: initial !important; column-rule: initial !important; column-span: initial !important; contain: initial !important; contain-intrinsic-block-size: initial !important; contain-intrinsic-size: initial !important; contain-intrinsic-inline-size: initial !important; container: initial !important; content: initial !important; content-visibility: initial !important; counter-increment: initial !important; counter-reset: initial !important; counter-set: initial !important; cursor: inherit !important; cx: initial !important; cy: initial !important; d: initial !important; display: inline !important; dominant-baseline: initial !important; empty-cells: initial !important; field-sizing: initial !important; fill: currentcolor !important; fill-opacity: initial !important; fill-rule: initial !important; filter: initial !important; flex: initial !important; flex-flow: initial !important; float: none !important; flood-color: initial !important; flood-opacity: initial !important; grid: initial !important; grid-area: initial !important; height: initial !important; hyphenate-character: initial !important; hyphenate-limit-chars: initial !important; hyphens: initial !important; image-orientation: initial !important; image-rendering: initial !important; initial-letter: initial !important; inline-size: initial !important; inset-block: initial !important; inset-inline: initial !important; interpolate-size: initial !important; isolation: initial !important; letter-spacing: initial !important; lighting-color: initial !important; line-break: initial !important; list-style: initial !important; margin-block: initial !important; margin: 0px !important; margin-inline: initial !important; marker: initial !important; mask-type: initial !important; math-shift: initial !important; math-style: initial !important; max-block-size: initial !important; max-height: initial !important; max-inline-size: initial !important; max-width: initial !important; min-block-size: initial !important; min-height: initial !important; min-inline-size: initial !important; min-width: initial !important; mix-blend-mode: initial !important; object-fit: initial !important; object-position: initial !important; object-view-box: initial !important; offset: initial !important; opacity: initial !important; order: initial !important; orphans: initial !important; outline: 0px !important; outline-offset: initial !important; overflow-anchor: initial !important; overflow-clip-margin: initial !important; overflow-wrap: initial !important; overflow: initial !important; overlay: initial !important; overscroll-behavior-block: initial !important; overscroll-behavior-inline: initial !important; overscroll-behavior: initial !important; padding-block: initial !important; padding: 0px !important; padding-inline: initial !important; page: initial !important; page-orientation: initial !important; paint-order: initial !important; perspective: initial !important; perspective-origin: initial !important; pointer-events: initial !important; position-try: initial !important; position-visibility: initial !important; quotes: initial !important; r: initial !important; resize: initial !important; rotate: initial !important; ruby-align: initial !important; ruby-position: initial !important; rx: initial !important; ry: initial !important; scale: initial !important; scroll-behavior: initial !important; scroll-margin-block: initial !important; scroll-margin: initial !important; scroll-margin-inline: initial !important; scroll-padding-block: initial !important; scroll-padding: initial !important; scroll-padding-inline: initial !important; scroll-snap-align: initial !important; scroll-snap-stop: initial !important; scroll-snap-type: initial !important; scroll-timeline: initial !important; scrollbar-color: initial !important; scrollbar-gutter: initial !important; scrollbar-width: initial !important; shape-image-threshold: initial !important; shape-margin: initial !important; shape-outside: initial !important; shape-rendering: initial !important; size: initial !important; speak: initial !important; stop-color: initial !important; stop-opacity: initial !important; stroke: initial !important; stroke-dasharray: initial !important; stroke-dashoffset: initial !important; stroke-linecap: initial !important; stroke-linejoin: initial !important; stroke-miterlimit: initial !important; stroke-opacity: initial !important; stroke-width: initial !important; tab-size: initial !important; table-layout: initial !important; text-align: initial !important; text-align-last: initial !important; text-anchor: initial !important; text-combine-upright: initial !important; text-decoration: initial !important; text-decoration-skip-ink: initial !important; text-emphasis: initial !important; text-emphasis-position: initial !important; text-indent: initial !important; text-overflow: initial !important; text-shadow: initial !important; text-transform: initial !important; text-underline-offset: initial !important; text-underline-position: initial !important; white-space: initial !important; timeline-scope: initial !important; touch-action: initial !important; transform: initial !important; transform-box: initial !important; transform-origin: initial !important; transform-style: initial !important; transition: initial !important; translate: initial !important; user-select: initial !important; vector-effect: initial !important; vertical-align: initial !important; view-timeline: initial !important; view-transition-class: initial !important; view-transition-name: initial !important; visibility: initial !important; border-spacing: initial !important; -webkit-box-align: initial !important; -webkit-box-decoration-break: initial !important; -webkit-box-direction: initial !important; -webkit-box-flex: initial !important; -webkit-box-ordinal-group: initial !important; -webkit-box-orient: initial !important; -webkit-box-pack: initial !important; -webkit-box-reflect: initial !important; -webkit-line-break: initial !important; -webkit-line-clamp: initial !important; -webkit-mask-box-image: initial !important; -webkit-print-color-adjust: initial !important; -webkit-rtl-ordering: initial !important; -webkit-ruby-position: initial !important; -webkit-tap-highlight-color: initial !important; -webkit-text-combine: initial !important; -webkit-text-decorations-in-effect: initial !important; -webkit-text-fill-color: unset !important; -webkit-text-security: initial !important; -webkit-text-stroke: initial !important; -webkit-user-drag: initial !important; widows: initial !important; width: initial !important; will-change: initial !important; word-break: initial !important; word-spacing: initial !important; x: initial !important; y: initial !important; z-index: initial !important;"><path d="m784-120-252-252q-30 24-69 38t-83 14q-109 0-184.5-75.5t-75.5-184.5q0-109 75.5-184.5t184.5-75.5q109 0 184.5 75.5t75.5 184.5q0 44-14 83t-38 69l252 252-56 56zm-404-280q75 0 127.5-52.5t52.5-127.5q0-75-52.5-127.5t-127.5-52.5q-75 0-127.5 52.5t-52.5 127.5q0 75 52.5 127.5t127.5 52.5z"></path></svg>&nbsp;<span class="google-anno-t" style="border: 0px !important; box-shadow: none !important; display: inline !important; float: none !important; margin: 0px !important; outline: 0px !important; padding: 0px !important; text-decoration: underline dotted !important; color: inherit !important; font-family: inherit !important; font-size: inherit !important; font-style: inherit !important; font-weight: inherit !important;">${h.hotel_city}</span></a></div>
                        <div class="fshare">

                            <span class="wifi">Wifi miễn phí</span>
                            <span class="buasang">Bữa sáng miễn phí</span>


                            <div class="fb-like" data-href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-san-san-227.html" data-send="true" data-layout="button_count" data-width="100" data-show-faces="true"></div>   

                        </div>

                        <div class="tour_album">

                            <div class="img  smaller_img">
                                <a href="${h.hotel_imagesGeneral}" class="g_img" data-fancybox="gallery" rel="example_group" title="Khách sạn San San">
                                    <img class="rounded" src="${h.hotel_imagesGeneral}" alt="Khách sạn San San">
                                </a>
                            </div>
                                
                                    <c:forEach items="${h.imagesDetail}" var="i">
                                        
                                  
                            <div class="img  smaller_img">
                                <a href="${i}" class="g_img" data-fancybox="gallery" rel="example_group" title="Khách sạn San San">
                                    <img class="rounded" src="${i}" alt="Khách sạn San San">
                                </a>
                            </div>
                                          </c:forEach>

<!--                            <div class="img  smaller_img">
                                <a href="https://khachsandanang.com.vn/data/hotel/500/family12-1453969960.jpg" class="g_img" data-fancybox="gallery" rel="example_group" title="Khách sạn San San">
                                    <img class="rounded" src="https://khachsandanang.com.vn/data/hotel/160/family12-1453969960.jpg" alt="Khách sạn San San">
                                </a>
                            </div>

                            <div class="img  smaller_img">
                                <a href="https://khachsandanang.com.vn/data/hotel/500/pjg1429260630khach-san-san-san-1453969966.jpg" class="g_img" data-fancybox="gallery" rel="example_group" title="Khách sạn San San">
                                    <img class="rounded" src="https://khachsandanang.com.vn/data/hotel/160/pjg1429260630khach-san-san-san-1453969966.jpg" alt="Khách sạn San San">
                                </a>
                            </div>

                            <div class="img  smaller_img">
                                <a href="https://khachsandanang.com.vn/data/hotel/500/vesinh1-1453969972.jpg" class="g_img" data-fancybox="gallery" rel="example_group" title="Khách sạn San San">
                                    <img class="rounded" src="https://khachsandanang.com.vn/data/hotel/160/vesinh1-1453969972.jpg" alt="Khách sạn San San">
                                </a>
                            </div>

                            <div class="img  smaller_img">
                                <a href="https://khachsandanang.com.vn/data/hotel/500/vfq1429260508khach-san-san-san-1453969977.jpg" class="g_img" data-fancybox="gallery" rel="example_group" title="Khách sạn San San">
                                    <img class="rounded" src="https://khachsandanang.com.vn/data/hotel/160/vfq1429260508khach-san-san-san-1453969977.jpg" alt="Khách sạn San San">
                                </a>
                            </div>

                            <div class="img  smaller_img">
                                <a href="https://khachsandanang.com.vn/data/hotel/500/185292-khach-san-san-sanbody1-2-1515550708.jpg" class="g_img" data-fancybox="gallery" rel="example_group" title="Khách sạn San San">
                                    <img class="rounded" src="https://khachsandanang.com.vn/data/hotel/160/185292-khach-san-san-sanbody1-2-1515550708.jpg" alt="Khách sạn San San">
                                </a>
                            </div>

                            <div class="img  smaller_img">
                                <a href="https://khachsandanang.com.vn/data/hotel/500/185292-khach-san-san-sanbody1-12-660x400-1515550711.jpg" class="g_img" data-fancybox="gallery" rel="example_group" title="Khách sạn San San">
                                    <img class="rounded" src="https://khachsandanang.com.vn/data/hotel/160/185292-khach-san-san-sanbody1-12-660x400-1515550711.jpg" alt="Khách sạn San San">
                                </a>
                            </div>

                            <div class="img  smaller_img">
                                <a href="https://khachsandanang.com.vn/data/hotel/500/family12-1515550712.jpg" class="g_img" data-fancybox="gallery" rel="example_group" title="Khách sạn San San">
                                    <img class="rounded" src="https://khachsandanang.com.vn/data/hotel/160/family12-1515550712.jpg" alt="Khách sạn San San">
                                </a>
                            </div>

                            <div class="img  smaller_img">
                                <a href="https://khachsandanang.com.vn/data/hotel/500/khach-san-san-san-da-nang-27-1515550712.jpg" class="g_img" data-fancybox="gallery" rel="example_group" title="Khách sạn San San">
                                    <img class="rounded" src="https://khachsandanang.com.vn/data/hotel/160/khach-san-san-san-da-nang-27-1515550712.jpg" alt="Khách sạn San San">
                                </a>
                            </div>

                            <div class="img  smaller_img">
                                <a href="https://khachsandanang.com.vn/data/hotel/500/khach-san-san-san-da-nang-28-1515550713.jpg" class="g_img" data-fancybox="gallery" rel="example_group" title="Khách sạn San San">
                                    <img class="rounded" src="https://khachsandanang.com.vn/data/hotel/160/khach-san-san-san-da-nang-28-1515550713.jpg" alt="Khách sạn San San">
                                </a>
                            </div>

                            <div class="img  smaller_img">
                                <a href="https://khachsandanang.com.vn/data/hotel/500/khach-san-san-san-da-nang-29-1515550714.jpg" class="g_img" data-fancybox="gallery" rel="example_group" title="Khách sạn San San">
                                    <img class="rounded" src="https://khachsandanang.com.vn/data/hotel/160/khach-san-san-san-da-nang-29-1515550714.jpg" alt="Khách sạn San San">
                                </a>
                            </div>

                            <div class="img  smaller_img">
                                <a href="https://khachsandanang.com.vn/data/hotel/500/khach-san-san-san-da-nang-35-1515550714.jpg" class="g_img" data-fancybox="gallery" rel="example_group" title="Khách sạn San San">
                                    <img class="rounded" src="https://khachsandanang.com.vn/data/hotel/160/khach-san-san-san-da-nang-35-1515550714.jpg" alt="Khách sạn San San">
                                </a>
                            </div>

                            <div class="img  smaller_img">
                                <a href="https://khachsandanang.com.vn/data/hotel/500/pic-hotel635669344000813790-1515550715.jpg" class="g_img" data-fancybox="gallery" rel="example_group" title="Khách sạn San San">
                                    <img class="rounded" src="https://khachsandanang.com.vn/data/hotel/160/pic-hotel635669344000813790-1515550715.jpg" alt="Khách sạn San San">
                                </a>
                            </div>

                            <div class="img  smaller_img">
                                <a href="https://khachsandanang.com.vn/data/hotel/500/pjg1429260630khach-san-san-san-1515550715.jpg" class="g_img" data-fancybox="gallery" rel="example_group" title="Khách sạn San San">
                                    <img class="rounded" src="https://khachsandanang.com.vn/data/hotel/160/pjg1429260630khach-san-san-san-1515550715.jpg" alt="Khách sạn San San">
                                </a>
                            </div>

                            <div class="img  smaller_img">
                                <a href="https://khachsandanang.com.vn/data/hotel/500/pyl1429260481khach-san-san-san-1515550716.jpg" class="g_img" data-fancybox="gallery" rel="example_group" title="Khách sạn San San">
                                    <img class="rounded" src="https://khachsandanang.com.vn/data/hotel/160/pyl1429260481khach-san-san-san-1515550716.jpg" alt="Khách sạn San San">
                                </a>
                            </div>

                            <div class="img  smaller_img">
                                <a href="https://khachsandanang.com.vn/data/hotel/500/superiordoube-1515550717.jpg" class="g_img" data-fancybox="gallery" rel="example_group" title="Khách sạn San San">
                                    <img class="rounded" src="https://khachsandanang.com.vn/data/hotel/160/superiordoube-1515550717.jpg" alt="Khách sạn San San">
                                </a>
                            </div>

                            <div class="img  smaller_img">
                                <a href="https://khachsandanang.com.vn/data/hotel/500/tiensanh-1515550717.jpg" class="g_img" data-fancybox="gallery" rel="example_group" title="Khách sạn San San">
                                    <img class="rounded" src="https://khachsandanang.com.vn/data/hotel/160/tiensanh-1515550717.jpg" alt="Khách sạn San San">
                                </a>
                            </div>

                            <div class="img  smaller_img">
                                <a href="https://khachsandanang.com.vn/data/hotel/500/san-san1-1562726122.jpg" class="g_img" data-fancybox="gallery" rel="example_group" title="Khách sạn San San">
                                    <img class="rounded" src="https://khachsandanang.com.vn/data/hotel/160/san-san1-1562726122.jpg" alt="Khách sạn San San">
                                </a>
                            </div>-->
                        </div>

                        <div class="clearfix"></div>
                        <div class="box_price_main">
                        <div class="content-price"><form action="https://khachsandanang.com.vn/dat-phong.html" method="get" id="form_act_book">
                              <div class="table-responsive">
    <table class="table_room">
        <thead>
            <tr class="top">
                <td>Phòng</td>
                <td>Tối đa</td>
                <td>Giá 1 đêm</td>
                <td>Số phòng</td>
                <td>Đặt phòng</td>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${h.rooms}" var="r" varStatus="status">
            <tr>
                <td>
                    <div class="img">
                        <img src="${r.room_img}" alt="">
                    </div>
                    ${r.room_name}
                </td>
                <td align="center">
                    <input type="hidden" name="room[]" value="755">
                    <c:forEach begin="1" end="${r.numPeople}" var="p">
                    <i style="color:var(--blue)" class="fa fa-user"></i>
                    </c:forEach>
                </td>
                 <td align="center">
                    <span class="room-price" data-price="${r.room_price}">${r.room_price}</span>
                </td>
                <td align="center">
                    <select name="qty[]" class="qty form-control room-quantity" style="width: 50px; text-align:center" data-room-id="${r.room_id}">
                        <c:forEach begin="0" end="${r.numRoom}" var="n">
                        <option value="${n}">${n}</option>
                        </c:forEach>
                    </select>
                </td>
                <td class="td_datphong" align="center">
                    <div class="price_total">$<span class="room-total">0</span></div>
                </td>
            </tr>
            </c:forEach>
            <tr>
                <td colspan="4" align="right">
                    <strong>Tổng cộng:</strong>
                </td>
                <td class="td_datphong" align="center">
                    <div class="total_price">$<span id="grand-total">0</span></div>
                    <div><input class="btn btn-danger" type="submit" id="btn_book" value="Đặt phòng"></div>
                </td>
            </tr>
        </tbody>
    </table>
    <input type="hidden" name="total_book" value="0">
    <input type="hidden" name="hotel_id" value="227">
</div>
                            </form>



                            <!-- <script type="text/javascript">
                                
                                $(".qty").on('change',function(){
                                    alert('123');
                                })
                            </script> --></div>
                        <div class="info_mini_hotel" style="height: auto !important;">

                            <h3>Tiện nghi khách sạn</h3>
                            <div class="item_attr" style="width: 210px;">Cho thuê xe đạp</div>
                            <div class="item_attr" style="width: 210px;">Dịch vụ du lịch</div>
                            <div class="item_attr" style="width: 210px;">Dịch vụ giặt là/giặt khô</div>
                            <div class="item_attr" style="width: 210px;">Dịch vụ Internet</div>
                            <div class="item_attr" style="width: 210px;">Két sắt</div>
                            <div class="item_attr" style="width: 210px;">Người vận chuyển hành lý</div>
                            <div class="item_attr" style="width: 210px;">Nhà hàng</div>
                            <div class="item_attr" style="width: 210px;">Phòng gia đình</div>
                            <div class="item_attr" style="width: 210px;">Tầng cao cấp</div>
                            <div class="item_attr" style="width: 210px;">Thang máy</div>
                            <div class="item_attr" style="width: 210px;">Thiết bị phòng họp</div>
                            <div class="item_attr" style="width: 210px;">Wi-Fi ở khu vực công cộng</div>
                            <div class="clearfix"></div>
                            <h3>Loại Khách sạn</h3>
                            <div class="item_attr" style="width: 210px;">${h.type_name}</div>
                            <div class="clearfix"></div>
                            <h3>Truy cập Internet trong phòng</h3>
                            <div class="item_attr" style="width: 210px;">Truy cập mạng LAN và WiFi miễn phí </div>
                            <div class="clearfix"></div>
                            <h3>Đậu xe</h3>
                            <div class="item_attr" style="width: 210px;">Bãi đỗ xe</div>
                            <div class="item_attr" style="width: 210px;">Dịch vụ trông xe</div>
                            <div class="clearfix"></div>


                            <h3>Chính sách khách sạn</h3>   
                            <div class="mini-con" style="height: auto !important;">
                                <div>
                                    ${h.hotel_policy}
                                </div>

                            </div>
                            <h3>Giới thiệu</h3>
                            <div class="mini-con">
                                <!--<div>&nbsp;</div>-->

                                <div>
                                    ${h.hotel_desc}
                                </div>
                            </div>
                        </div>


                        <div class="width100">


                            <!---Đánh giá--->
                            <div class="width100" style="margin-top:30px">
                                <h3 class="heading"><span>Đánh giá (0)</span></h3>
                                <div id="msg"></div>

                                <div class="form_comment_div width100">
                                    <div class="lcom width100" style="overflow: hidden; float:left; width:100%">
                                    </div>




                                    <button class="btn_review"><i class="fa fa-pencil"> </i> Viết đánh giá</button>

                                    <div class="danhgia" style="padding:15px">
                                        <form action="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-san-san-227" method="post" accept-charset="utf-8" id="form_comment">
                                            <div class="hidden">
                                                <input type="hidden" name="token" value="08a38d2d6d8c417596188d81bca16820">
                                            </div>                            <div class="row">


                                                <div class="form-group col-md-6 col-sm-6 mb-3">
                                                    <input type="text" name="vdata[fullname]" id="title" placeholder="Họ và tên" class="form-control">
                                                </div>
                                                <div class="form-group col-md-6 col-sm-6 mb-3">
                                                    <input type="text" name="vdata[phone]" id="phone" placeholder="Số điện thoại" class="form-control">
                                                </div>
                                                <div class="form-group col-md-12 col-sm-6 mb-3">
                                                    <input type="text" name="vdata[email]" id="email" placeholder="Email" class="form-control">
                                                </div>
                                                <div class="form-group col-md-12 col-sm-6 mb-3">
                                                    <textarea name="vdata[content]" id="write" cols="30" rows="5" class="form-control" placeholder="Nội dung"></textarea>
                                                </div>

                                                <div class="form-group col-lg-4 col-sm-4 mb-3">

                                                    <input type="text" name="captcha" class="form-control" value="" placeholder="Captcha">

                                                    <input type="hidden" name="vdata[hotel_id]" value="227">
                                                </div>
                                                <div class="form-group col-lg-4 col-sm-4 mb-3">
                                                    <div id="re_cap"><img id="img_captcha" src="https://khachsandanang.com.vn/api/captcha/d41d8cd98f00b204e9800998ecf8427e.html" alt="" height="24px"></div>
                                                </div>
                                                <div class="col-lg-12">
                                                    <input type="submit" class="btn btn-danger btn_book" value="Gửi đánh giá">
                                                </div>

                                            </div>
                                        </form>                            <div class="clearfix"></div>
                                    </div>


                                </div>

                            </div>


                        </div>

                    </div>

                </div>
                                <script type="text/javascript" src="https://khachsandanang.com.vn/templates/js/core/jquery-1.8.3.min.js" charset="UTF-8"></script>
                <script type="text/javascript">
                    var hotel_url = 'khach-san-san-san-227';
                </script>
                <script type="text/javascript" src="https://khachsandanang.com.vn/templates/js/jquery.tinyscrollbar.min.js" charset="UTF-8"></script>
                <script type="text/javascript" src="https://khachsandanang.com.vn/templates/js/infohotel.js" charset="UTF-8"></script>
                <script type="text/javascript" src="https://khachsandanang.com.vn/templates/js/jquery.validate.min.js" charset="UTF-8"></script>
                <!-- <link type="text/css" rel="stylesheet" href="https://khachsandanang.com.vn/templates/css/bootstrap.min.css" media="screen" /> -->
                <link type="text/css" rel="stylesheet" href="https://khachsandanang.com.vn/templates/css/font-awesome.min.css" media="screen">
                <script type="text/javascript">
                    $(document).ready(function () {


                        $("#form_comment").validate({
                            rules: {
                                "vdata[fullname]": "required",
                                "captcha": "required"
                            },
                            messages: {
                                "vdata[fullname]": "Vui lòng nhập tên của bạn",
                                "captcha": "Vui lòng nhập mã captcha"
                            }
                            , submitHandler: function (form) {
                                dataString = $("#form_comment").serialize();
                                $.ajax({
                                    type: "POST",
                                    url: base_url + 'api/addcomment',
                                    data: dataString,
                                    dataType: "json",
                                    success: function (data) {
                                        if (data.error == 0) {
                                            clear_form_elements("#form_comment");
                                        }
                                        //  $("#img_captcha").attr('src',data.img);
                                        alert(data.msg);
                                    }
                                });
                            }
                        });
                        $("#xemthem").validate({
                            rules: {

                            },
                            messages: {

                            }
                            , submitHandler: function (form) {
                                dataString = $("#xemthem").serialize();
                                $.ajax({
                                    type: "POST",
                                    url: base_url + 'api/getcomment',
                                    data: dataString,
                                    dataType: "json",
                                    success: function (data) {
                                        $('div.lcom').append(data.html);
                                        $("#offset").val(data.offset);
                                        if (data.offset > data.total) {
                                            $("#xemthem").hide();
                                        }
                                    }
                                });
                            }
                        });

                        $(".btn_review").click(function () {
                            $(".danhgia").slideToggle();
                        });
                    });

                </script>    </div>
            <div class="clearfix"></div>
            


            <script>
                $(".hotel-filter-button").click(function () {
                    $(".hotel-filter-button").toggleClass("hotel-filter-button-expand");
                    $(".hotel-filter").toggleClass("hotel-filter-expand");
                });

                $(".open_btn").click(function () {
                    $(".menu_mobile").addClass("show");
                });

                $(".close_btn").click(function () {
                    $(".menu_mobile").removeClass("show");
                });

                // ---------------------submenu mobile----------------------
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
                     thumbs: {
                         autoStart: true
                     },
                     buttons: [
                         'zoom',
                         'close'
                     ]
                 });

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
                         clickable: true,
                         dynamicBullets: true
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


            <div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div><ins class="adsbygoogle adsbygoogle-noablate" data-adsbygoogle-status="done" data-anchor-status="displayed" data-ad-status="filled" style="display: none; width: 100% !important; height: 129px !important; bottom: 0px; clear: none !important; float: none !important; left: 0px; margin: 0px !important; max-height: none !important; max-width: none !important; opacity: 1; overflow: visible !important; padding: 0px !important; position: fixed; right: auto !important; top: auto !important; vertical-align: baseline !important; visibility: visible !important; z-index: 2147483647; background: rgb(250, 250, 250) !important;" data-anchor-shown="true"><div class="grippy-host"></div><div id="aswift_2_host" style="border: none !important; height: 124px !important; width: 100% !important; margin: 0px !important; padding: 0px !important; position: relative !important; visibility: visible !important; background-color: transparent !important; display: inline-block !important; inset: auto !important; clear: none !important; float: none !important; max-height: none !important; max-width: none !important; opacity: 1 !important; overflow: visible !important; vertical-align: baseline !important; z-index: auto !important;"><iframe id="aswift_2" name="aswift_2" browsingtopics="true" style="width: 1005px !important; height: 124px !important; display: block; margin: 0px auto;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" width="1005" height="124" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allow="attribution-reporting; run-ad-auction" src="https://googleads.g.doubleclick.net/pagead/html/r20240925/r20110914/zrt_lookup_fy2021.html#RS-1-&amp;adk=1812271801&amp;client=ca-pub-8635360583374491&amp;fa=1&amp;ifi=3&amp;uci=a!3&amp;btvi=1" data-google-container-id="a!3" tabindex="0" title="Advertisement" aria-label="Advertisement" data-google-query-id="CJPKn5Sc5YgDFX1EwgUdpMoThA" data-load-complete="true"></iframe></div></ins><div><div class="grecaptcha-badge" data-style="bottomright" style="width: 256px; height: 60px; display: block; transition: right 0.3s; position: fixed; bottom: 14px; right: -186px; box-shadow: gray 0px 0px 5px; border-radius: 2px; overflow: hidden;"><div class="grecaptcha-logo"><iframe title="reCAPTCHA" width="256" height="60" role="presentation" name="a-13r9rvgddjuj" frameborder="0" scrolling="no" sandbox="allow-forms allow-popups allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups-to-escape-sandbox allow-storage-access-by-user-activation" src="https://www.google.com/recaptcha/api2/anchor?ar=1&amp;k=6Lf5WvspAAAAABLDJ9gr68V1EoD6Edq8S_vUrxsp&amp;co=aHR0cHM6Ly9raGFjaHNhbmRhbmFuZy5jb20udm46NDQz&amp;hl=en&amp;v=xds0rzGrktR88uEZ2JUvdgOY&amp;size=invisible&amp;cb=dvuhyyfhdd5p"></iframe></div><div class="grecaptcha-error"></div><textarea id="g-recaptcha-response-100000" name="g-recaptcha-response" class="g-recaptcha-response" style="width: 250px; height: 40px; border: 1px solid rgb(193, 193, 193); margin: 10px 25px; padding: 0px; resize: none; display: none;"></textarea></div><iframe style="display: none;"></iframe></div><iframe src="https://www.google.com/recaptcha/api2/aframe" width="0" height="0" style="display: none;"></iframe>
        </div>
        <div id="footer_tab">
            <jsp:include page="footer.jsp"/>
        </div>
        <div class="clr"></div>
    </body>
</html>
