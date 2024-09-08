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
