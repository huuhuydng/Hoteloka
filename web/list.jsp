<%-- 
    Document   : list
    Created on : Sep 8, 2024, 3:34:58 PM
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

        <title>Group 1</title>
    </head>
    <body>

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
    </body>
</html>
