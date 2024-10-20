<%-- 
    Document   : infoorigin
    Created on : Sep 13, 2024, 8:15:54 AM
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
       <body cz-shortcut-listen="true" style="padding: 0px;">
    <script type="text/javascript">

    jQuery(document).ready(function ($) {
        var menu = $("header");
         
        $(window).scroll(function () {
             
            if ($(this).scrollTop() > 0) {
                menu.addClass("fix_top");
                
            } else {
                 
                menu.removeClass("fix_top");
                 
            }    
        }
        )
     
    })
</script>




<header class="fix_top">
 
     
        <div class="logo">
            <a title="Phan Gia Huy" href="https://khachsandanang.com.vn/"><img src="https://khachsandanang.com.vn/templates/images/logo.png"></a>
        </div>
     
    <div class="clearfix"></div>
    <div id="menu_container">
         
        <ul class="menu">
            
            <li><a href="https://khachsandanang.com.vn/"><i class="fa fa-home"></i> Trang chủ</a></li>
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



 
<div class="menu_mobile">
    <div class="close_btn">
        <i class="fa fa-times fa-2x"></i>
    </div>
    <ul> 
 
    
        <li><a href="https://khachsandanang.com.vn/"><i class="fa fa-home"></i> Trang chủ</a></li>
        <li><a href="https://khachsandanang.com.vn/gioi-thieu.html"><i class="fa fa-address-card"></i> Giới thiệu</a></li>
        <li><a href="https://khachsandanang.com.vn/khach-san-da-nang.html"><i class="fa fa-building"></i> Khách sạn</a></li>
        <li><a href="https://khachsandanang.com.vn/phong-hoi-nghi-hoi-thao.html"><i class="fa fa-building"></i> Phòng hội nghị - hội thảo</a></li>
        <li><a href="https://khachsandanang.com.vn/thong-tin-du-lich.html"><i class="fa fa-book"></i> Thông tin du lịch</a></li>

        
        <li><a href="https://khachsandanang.com.vn/lien-he.html"><i class="fa fa-envelope"></i> Liên hệ</a></li>
        
    </ul>
</div>


<style>


/*---Header---*/
header {float:left; width:100vw; height:80px; position: fixed; padding: 0 100px;  z-index: 7; transition: all .3s; background: white}
header .current {color:#0da0f4 !important;}
.fix_top {background: white; transition: all .3s; z-index: 7; box-shadow: 0px 8px 8px rgb(0 0 0 / 6%); height: 60px;}
.fix_top .menu>li {}
.fix_top .menu>li>a {color: #333; padding:25px 10px}
.fix_top .logo img {filter: none; height: 50px;}
.fix_top .contact-us { color: #333; font-weight: 500; padding: 25px 100px 0 25px}
.fix_top .open_btn {top: 3px; transition: all .3s;}
.fix_top .open_btn i {color: black}
.fix_top .menu-seperate {color: black}

.logo {float:left;  }
.logo img {height:70px;transition:all .3s;  margin-top: 5px; position:relative; 
}
#menu_container {float:left; width:100%;   margin-top: -70px;  padding:9px 0}

.contact-us {float: right; color: black; padding: 15px 15px 0 15px}
.contact-us i {margin-right: 10px}
.contact-us>span {margin-left: 20px}
.menu { list-style:none;float:left; margin-bottom:0; margin-left: 100px}
.menu>li {float:left; list-style: none; }
.menu>li>a { padding:15px 15px; font-size: 16px; display:block; color:black;  font-weight: 500;text-decoration: none;}
.menu .active,.menu>li>a:hover {color:var(--pink);}
.menu>li:hover > .menucon {display:block; transition:all .3s}
.menu .menu-seperate {color: white}

 
.menucon {min-width:140px;position:absolute; padding:10px; z-index:999; display:none; background:white; margin-top:0px;box-shadow: 0px 8px 8px rgb(0 0 0 / 6%); border-radius: 5px;}
.menucon>li {position:relative;padding:1px 2px; width:100%; min-width:150px; text-align:left; line-height: 25px; list-style: none;}
.menucon>li>a {padding:3px 0; color:#666; text-decoration: none;}
.menucon>li>a:hover {color: #f06e00;}
.menucon>li:hover .menulv3 {display:block}

.menucon2>li>a {text-decoration: none; color: var(--blue)}

.open_btn {position: absolute; right: 10px; top: 15px; font-size:16px;  z-index: 99999;  margin:12px 15px 0 0; transition: all .3s;}
.open_btn i {color:black; cursor: pointer}
.open_btn:hover i{color:var(--pink);}
.close_btn {margin:15px; float:left; cursor: pointer; color: black}
.close_btn:hover {color:var(--pink)}

/*-----Menu mobile-----*/
.menu_mobile {right:-100%; width:300px; top:0; transition:all .3s; height:100%; background:white; float:right; position:fixed; z-index:99999999;  overflow:auto}
.show {right:0; transition:all .3s; box-shadow: 0 0 0 10000px rgba(0,0,0,.3);
  /* for real browsers */
  box-shadow: 0 0 0 100vmax rgba(0,0,0,.3);}
 

.menu_mobile a {color:#666}
.menu_mobile>ul {width:100%; float:left; font-size:16px; padding:15px; list-style: none}
 
.menu_mobile>ul>li>a {display:block; margin-bottom:-1px; width:100%; padding:15px 0; }
.menu_mobile>ul>li>a i {width: 30px; color: var(--pink)}
.menu_mobile>ul>li>a:hover, .menu_mobile .active  {background: #edf6f9; text-decoration:none; width:100%; color:var(--blue)  }
.menu_mobile>ul>li>ul {margin-left:10px;}
.menu_mobile>ul>li>ul>li>a {color:#999}

/*-----Media 767px-----*/
@media screen and (max-width:1366px) {
  .menu>li>a {padding: 15px 10px}
  .contact-us {display: none;}
}


/*-----Media 767px-----*/
@media screen and (max-width:991px) {
  header {padding-left: 10px; padding-right: 10px;}
    .menu {display: none;}
  .open_btn {display:block}
}

/*-----Media 767px-----*/
@media screen and (max-width:767px) {
  
 
}

/*-----Media 767px-----*/
@media screen and (max-width:500px) {
    .contact-us {display: none;}
 
}
</style>


<div class="swiper swiper-initialized swiper-horizontal swiper-backface-hidden" id="home-slide" style="--swiper-pagination-bullet-size:16px; --swiper-navigation-color:white; --swiper-pagination-color:white">
    <div class="swiper-wrapper" id="swiper-wrapper-f2335c9f64f9ac3b" aria-live="off" style="transition-duration: 0ms; transform: translate3d(0px, 0px, 0px); transition-delay: 0ms;">
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
    <div class="swiper-button-next" tabindex="0" role="button" aria-label="Next slide" aria-controls="swiper-wrapper-f2335c9f64f9ac3b" aria-disabled="false"></div>
    <div class="swiper-button-prev swiper-button-disabled" tabindex="-1" role="button" aria-label="Previous slide" aria-controls="swiper-wrapper-f2335c9f64f9ac3b" aria-disabled="true"></div>
    <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets swiper-pagination-horizontal swiper-pagination-bullets-dynamic" style="width: 120px;"><span class="swiper-pagination-bullet swiper-pagination-bullet-active swiper-pagination-bullet-active-main" tabindex="0" role="button" aria-label="Go to slide 1" aria-current="true" style="left: 12px;"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active-next" tabindex="0" role="button" aria-label="Go to slide 2" style="left: 12px;"></span></div>
<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div><div class="google-auto-placed" style="width: 100%; height: auto; clear: both; text-align: center;"><ins data-ad-format="auto" class="adsbygoogle adsbygoogle-noablate" data-ad-client="ca-pub-8635360583374491" data-adsbygoogle-status="done" style="display: block; margin: 10px auto; background-color: transparent; height: 280px;" data-ad-status="filled"><div id="aswift_1_host" style="border: none; height: 280px; width: 1200px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-block; overflow: visible;"><iframe id="aswift_1" name="aswift_1" browsingtopics="true" style="left:0;position:absolute;top:0;border:0;width:1200px;height:280px;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" width="1200" height="280" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allow="attribution-reporting; run-ad-auction" src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-8635360583374491&amp;output=html&amp;h=280&amp;adk=3809598800&amp;adf=54630664&amp;pi=t.aa~a.714188037~rp.4&amp;w=1200&amp;abgtt=6&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1726190081&amp;rafmt=1&amp;to=qs&amp;pwprc=2647023221&amp;format=1200x280&amp;url=https%3A%2F%2Fkhachsandanang.com.vn%2Fgioi-thieu.html&amp;fwr=0&amp;pra=3&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;fa=40&amp;uach=WyJtYWNPUyIsIjE1LjAuMCIsImFybSIsIiIsIjEyOC4wLjY2MTMuMTIwIixudWxsLDAsbnVsbCwiNjQiLFtbIkNocm9taXVtIiwiMTI4LjAuNjYxMy4xMjAiXSxbIk5vdDtBPUJyYW5kIiwiMjQuMC4wLjAiXSxbIkdvb2dsZSBDaHJvbWUiLCIxMjguMC42NjEzLjEyMCJdXSwwXQ..&amp;dt=1726190081824&amp;bpp=1&amp;bdt=120&amp;idt=48&amp;shv=r20240905&amp;mjsv=m202409100101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Df0a15a04eb58910d%3AT%3D1725762277%3ART%3D1726190018%3AS%3DALNI_MYsSQikCLBxwgVufPrD5GFhlMTW7Q&amp;gpic=UID%3D00000ef372a2eb6e%3AT%3D1725762277%3ART%3D1726190018%3AS%3DALNI_MZkgEWjMdZub-yiFGlgQ8WrJJ5g0g&amp;eo_id_str=ID%3Dab3603c34199b8e8%3AT%3D1725762277%3ART%3D1726190018%3AS%3DAA-Afjb_VB_dwcYkIIV3hq8uVhCR&amp;prev_fmts=0x0&amp;nras=2&amp;correlator=4299802748659&amp;frm=20&amp;pv=1&amp;u_tz=420&amp;u_his=5&amp;u_h=1080&amp;u_w=2560&amp;u_ah=1080&amp;u_aw=2560&amp;u_cd=24&amp;u_sd=1&amp;dmc=8&amp;adx=675&amp;ady=510&amp;biw=2550&amp;bih=992&amp;scr_x=0&amp;scr_y=782&amp;eid=44759875%2C44759926%2C44759842%2C31086864%2C31086866%2C44795921%2C95338229%2C95341662%2C95342458%2C31086975%2C95335246%2C95341671&amp;oid=2&amp;pvsid=2149683497473773&amp;tmod=560609890&amp;uas=0&amp;nvt=3&amp;fc=1920&amp;brdim=0%2C88%2C0%2C88%2C2560%2C0%2C2560%2C992%2C2560%2C992&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=128&amp;bc=31&amp;bz=1&amp;td=1&amp;tdf=2&amp;psd=W251bGwsbnVsbCxudWxsLDNd&amp;nt=1&amp;ifi=2&amp;uci=a!2&amp;fsb=1&amp;dtd=50" data-google-container-id="a!2" tabindex="0" title="Advertisement" aria-label="Advertisement" data-google-query-id="CPzvmZXfvogDFfIRewcdsLEFvA" data-load-complete="true"></iframe></div></ins></div>
 
<style>
 
#home-slide .swiper-pagination {margin-bottom: 20px; }  
#home-slide .swiper-slide { height: 500px }
#home-slide .swiper-slide img {width: 100%; height: 100%; object-fit: cover;}



  .searchbox {position: absolute; top: -300px; left: 0; width: 100%; z-index: 3; background: white; border-radius: 10px; padding:10px; box-shadow: 0px 8px 8px rgb(0 0 0 / 6%)}
  .searchbox .table-search {border: none; width: 100%;}
  .searchbox label {display: none;}
  .searchbox .table-search td {border: none}
  .searchbox h2 {font-size: 18px; width: 100%; text-align: center;  border-bottom: 1px solid #f1f1f1; padding-bottom: 10px; margin-bottom: 20px;}
  .searchbox h2 span {border-bottom: 3px solid var(--pink); padding-bottom: 8px;}
  #change_date {background: var(--pink); color: white; text-align: center; padding: 8px; width: 100%; border: none; border-radius: 10px; height: 38px;}

  .searchbox select, .searchbox input {border: none}
  .searchbox .input-group-text {border: none}
  .searchbox .key {background: #eee;}

  @media screen and (max-width:767px){
    .searchbox {top: -400px}
  }

</style>


<div class="container" style="z-index:6; clear: both; position: relative;">
      <div class="searchbox">
        <h2 class="pt-1"><span>Tìm kiếm khách sạn</span></h2>
          
       
              <form action="https://khachsandanang.com.vn/home/search" method="post" accept-charset="utf-8">
<div class="hidden">
<input type="hidden" name="token" value="b54a1a0c71629ba35ed879b9db755382">
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
                    <input type="text" name="n_begin" aria-label="Ngày đến" id="n_begin" class="form-control hasDatepicker" readonly="readonly" value="13-09-2024">
                    <span class="input-group-text"><i class="fa fa-calendar-alt"></i></span>
                  </div>
                </div>

                <div class="col-md mb-2">
                  <label class="form-label">Ngày đi</label>
                  <div class="input-group">
                    <input type="text" name="n_end" aria-label="Ngày đi" id="n_end" class="form-control hasDatepicker" readonly="readonly" value="14-09-2024">
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
    <div class="container" style="height: auto !important;">
                        <div class="container-fuild py-3" style="height: auto !important;">
    <div class="row" style="height: auto !important;">

        <div class="col-sm-9" style="height: auto !important;">
             
            <h1 class="heading"><span>Giới thiệu</span></h1>
            <div class="clearfix"></div>
            <div class="fulltext" style="height: auto !important;"><p><span style="color:#008000"><strong>Giới thiệu <u>khachsandanang.com.vn</u></strong></span></p>

<p>Các&nbsp;<strong>Khách sạn ở <a href="#" class="google-anno" style="border: 0px !important; box-shadow: none !important; display: inline !important; float: none !important; margin: 0px !important; outline: 0px !important; padding: 0px !important; text-decoration: none !important; fill: currentcolor !important;"><svg viewBox="100 -1000 840 840" width="calc(16px - 2px)" height="16px" style="color-scheme: initial !important; forced-color-adjust: initial !important; mask: initial !important; math-depth: initial !important; position: initial !important; position-anchor: initial !important; text-size-adjust: initial !important; appearance: initial !important; color: inherit !important; font: initial !important; font-palette: initial !important; font-synthesis: initial !important; inset-area: initial !important; text-orientation: initial !important; text-rendering: initial !important; text-spacing-trim: initial !important; -webkit-font-smoothing: initial !important; -webkit-locale: initial !important; -webkit-text-orientation: initial !important; -webkit-writing-mode: initial !important; writing-mode: initial !important; zoom: initial !important; accent-color: initial !important; place-content: initial !important; place-items: initial !important; place-self: initial !important; alignment-baseline: initial !important; anchor-name: initial !important; animation-composition: initial !important; animation: initial !important; app-region: initial !important; aspect-ratio: initial !important; backdrop-filter: initial !important; backface-visibility: initial !important; background: initial !important; background-blend-mode: initial !important; baseline-shift: initial !important; baseline-source: initial !important; block-size: initial !important; border-block: initial !important; border: 0px !important; border-radius: initial !important; border-collapse: initial !important; border-end-end-radius: initial !important; border-end-start-radius: initial !important; border-inline: initial !important; border-start-end-radius: initial !important; border-start-start-radius: initial !important; inset: initial !important; box-shadow: none !important; box-sizing: initial !important; break-after: initial !important; break-before: initial !important; break-inside: initial !important; buffered-rendering: initial !important; caption-side: initial !important; caret-color: initial !important; clear: initial !important; clip: initial !important; clip-path: initial !important; clip-rule: initial !important; color-interpolation: initial !important; color-interpolation-filters: initial !important; color-rendering: initial !important; columns: initial !important; column-fill: initial !important; gap: initial !important; column-rule: initial !important; column-span: initial !important; contain: initial !important; contain-intrinsic-block-size: initial !important; contain-intrinsic-size: initial !important; contain-intrinsic-inline-size: initial !important; container: initial !important; content: initial !important; content-visibility: initial !important; counter-increment: initial !important; counter-reset: initial !important; counter-set: initial !important; cursor: inherit !important; cx: initial !important; cy: initial !important; d: initial !important; display: inline !important; dominant-baseline: initial !important; empty-cells: initial !important; field-sizing: initial !important; fill: currentcolor !important; fill-opacity: initial !important; fill-rule: initial !important; filter: initial !important; flex: initial !important; flex-flow: initial !important; float: none !important; flood-color: initial !important; flood-opacity: initial !important; grid: initial !important; grid-area: initial !important; height: initial !important; hyphenate-character: initial !important; hyphenate-limit-chars: initial !important; hyphens: initial !important; image-orientation: initial !important; image-rendering: initial !important; initial-letter: initial !important; inline-size: initial !important; inset-block: initial !important; inset-inline: initial !important; isolation: initial !important; letter-spacing: initial !important; lighting-color: initial !important; line-break: initial !important; list-style: initial !important; margin-block: initial !important; margin: 0px !important; margin-inline: initial !important; marker: initial !important; mask-type: initial !important; math-shift: initial !important; math-style: initial !important; max-block-size: initial !important; max-height: initial !important; max-inline-size: initial !important; max-width: initial !important; min-block-size: initial !important; min-height: initial !important; min-inline-size: initial !important; min-width: initial !important; mix-blend-mode: initial !important; object-fit: initial !important; object-position: initial !important; object-view-box: initial !important; offset: initial !important; opacity: initial !important; order: initial !important; orphans: initial !important; outline: 0px !important; outline-offset: initial !important; overflow-anchor: initial !important; overflow-clip-margin: initial !important; overflow-wrap: initial !important; overflow: initial !important; overlay: initial !important; overscroll-behavior-block: initial !important; overscroll-behavior-inline: initial !important; overscroll-behavior: initial !important; padding-block: initial !important; padding: 0px !important; padding-inline: initial !important; page: initial !important; page-orientation: initial !important; paint-order: initial !important; perspective: initial !important; perspective-origin: initial !important; pointer-events: initial !important; position-try: initial !important; position-visibility: initial !important; quotes: initial !important; r: initial !important; resize: initial !important; rotate: initial !important; ruby-align: initial !important; ruby-position: initial !important; rx: initial !important; ry: initial !important; scale: initial !important; scroll-behavior: initial !important; scroll-margin-block: initial !important; scroll-margin: initial !important; scroll-margin-inline: initial !important; scroll-padding-block: initial !important; scroll-padding: initial !important; scroll-padding-inline: initial !important; scroll-snap-align: initial !important; scroll-snap-stop: initial !important; scroll-snap-type: initial !important; scroll-timeline: initial !important; scrollbar-color: initial !important; scrollbar-gutter: initial !important; scrollbar-width: initial !important; shape-image-threshold: initial !important; shape-margin: initial !important; shape-outside: initial !important; shape-rendering: initial !important; size: initial !important; speak: initial !important; stop-color: initial !important; stop-opacity: initial !important; stroke: initial !important; stroke-dasharray: initial !important; stroke-dashoffset: initial !important; stroke-linecap: initial !important; stroke-linejoin: initial !important; stroke-miterlimit: initial !important; stroke-opacity: initial !important; stroke-width: initial !important; tab-size: initial !important; table-layout: initial !important; text-align: initial !important; text-align-last: initial !important; text-anchor: initial !important; text-combine-upright: initial !important; text-decoration: initial !important; text-decoration-skip-ink: initial !important; text-emphasis: initial !important; text-emphasis-position: initial !important; text-indent: initial !important; text-overflow: initial !important; text-shadow: initial !important; text-transform: initial !important; text-underline-offset: initial !important; text-underline-position: initial !important; white-space: initial !important; timeline-scope: initial !important; touch-action: initial !important; transform: initial !important; transform-box: initial !important; transform-origin: initial !important; transform-style: initial !important; transition: initial !important; translate: initial !important; user-select: initial !important; vector-effect: initial !important; vertical-align: initial !important; view-timeline: initial !important; view-transition-class: initial !important; view-transition-name: initial !important; visibility: initial !important; border-spacing: initial !important; -webkit-box-align: initial !important; -webkit-box-decoration-break: initial !important; -webkit-box-direction: initial !important; -webkit-box-flex: initial !important; -webkit-box-ordinal-group: initial !important; -webkit-box-orient: initial !important; -webkit-box-pack: initial !important; -webkit-box-reflect: initial !important; -webkit-line-break: initial !important; -webkit-line-clamp: initial !important; -webkit-mask-box-image: initial !important; -webkit-print-color-adjust: initial !important; -webkit-rtl-ordering: initial !important; -webkit-ruby-position: initial !important; -webkit-tap-highlight-color: initial !important; -webkit-text-combine: initial !important; -webkit-text-decorations-in-effect: initial !important; -webkit-text-fill-color: unset !important; -webkit-text-security: initial !important; -webkit-text-stroke: initial !important; -webkit-user-drag: initial !important; widows: initial !important; width: initial !important; will-change: initial !important; word-break: initial !important; word-spacing: initial !important; x: initial !important; y: initial !important; z-index: initial !important;"><path d="m784-120-252-252q-30 24-69 38t-83 14q-109 0-184.5-75.5t-75.5-184.5q0-109 75.5-184.5t184.5-75.5q109 0 184.5 75.5t75.5 184.5q0 44-14 83t-38 69l252 252-56 56zm-404-280q75 0 127.5-52.5t52.5-127.5q0-75-52.5-127.5t-127.5-52.5q-75 0-127.5 52.5t-52.5 127.5q0 75 52.5 127.5t127.5 52.5z"></path></svg>&nbsp;<span class="google-anno-t" style="border: 0px !important; box-shadow: none !important; display: inline !important; float: none !important; margin: 0px !important; outline: 0px !important; padding: 0px !important; text-decoration: underline dotted !important; color: inherit !important; font-family: inherit !important; font-size: inherit !important; font-style: inherit !important; font-weight: inherit !important;">Đà Nẵng</span></a></strong>&nbsp;vừa sang trọng, hiện đại vừa giản dị, gần gũi và phảng phất đâu đó chút hương vị miền biển. Thành phố Đà Nẵng có những nét đẹp tuyệt vời mà tạo hóa đã ban tặng.Đây là một thành phố tuyệt đẹp bên sông Hàn,nơi đây có hàng loạt những bãi tắm tuyệt đẹp. Đến với biển Đà Nẵng, đến với 1 trong 6 bãi biển đẹp nhất hành tinh.&nbsp;</p>

<p><strong>khachsandanang.com.vn – hệ thống đặt phòng khách sạn trực tuyến;</strong> cung cấp dịch vụ đặt phòng tại hầu hết các khách sạn ở ĐÀ NẴNG.&nbsp;</p>

<p>Không chỉ là kinh doanh,<strong> khachsandanang.com.vn</strong> luôn cam kết cung cấp dịch vụ phòng ở giá tốt nhất; luôn nỗ lực đem lại cho du khách những tiện lợi khi đặt phòng tại hệ thống của chúng tôi; cũng như hứa hẹn <strong>mang đến cho du khách những những trải nghiệm tuyệt vời nhất và những giây phút thỏa mái nhất tại không gian lưu trú ấm cúng, tiện nghi</strong>.</p>

<p>&nbsp;</p>

<p><span style="color:#006400"><u><strong>Tại sao nên chọn khachsandanang.com.vn?</strong></u></span></p>

<p>- Liên kết hầu hết các khách sạn tại Đà Nẵng</p>

<p>- Cam kết giá tốt nhất, cập nhật giá khuyến mãi hằng ngày</p>

<p>- Rẻ hơn đặt trực tiếp tại khách sạn</p>

<p>- Tiết kiệm thời gian với dịch vụ đặt phòng – thanh toán trực tuyến<br>
- Dịch vụ chăm sóc khách hàng chu đáo 24/7<br>
- Cập nhật giá khuyến mãi hằng ngày; Luôn có giá ưu đãi cho khách đoàn<br>
- Thanh toán linh hoạt và an toàn</p>

<p><span style="color:#006400"><u><strong>Dịch vụ hỗ trợ du lịch</strong></u></span></p>

<p>- Đặt vé máy bay<br>
- Tour du lịch Đà Nẵng &nbsp;- Hội An (Tour trong ngày, ghép tour, tour dài ngày)<br>
- Tour Bà Nà; Cù Lao Chàm</p>

<p><span style="color:#008000"><u><strong>Thông tin hỗ trợ &amp; chăm sóc khách hàng</strong></u></span></p>

<p>Mọi chi tiết xin liên hệ:</p>

<p><em>Công ty Cổ phần</em><strong><em>&nbsp;Danatravel</em></strong></p>

<p><em>Add: 36 Nguyễn Thuật, Tp Đà Nẵng&nbsp;<br>
Tel: (+84 - 236) 3767588<br>
Hotline: 0899767588&nbsp;- 0966767588<br>
E</em><em>mail: booking</em>@danatravel.vn</p>

<p>&nbsp;</p>

<p><span style="color:#008000"><u><strong>Điều kiện sử dụng dịch vụ</strong></u></span></p>

<p>Khi tham gia sử dụng dịch vụ lưu trú tại&nbsp;<strong>khachsandanang.com.vn</strong>, du khách cần tuân thủ theo chính sách và nội qui khách sạn nơi du khách lưu trú.</p>

<p>Khách hàng cần thanh toán đầy đủ các khoản thanh toán đặt cọc, phụ thu và các chi phí liên quan đến việc sử dụng dịch vụ theo qui định của&nbsp;<strong>khachsandanang.com.vn </strong>và khách sạn.</p><div class="google-auto-placed ap_container" style="width: 100%; height: auto; clear: both; text-align: center;"><ins data-ad-format="auto" class="adsbygoogle adsbygoogle-noablate" data-ad-client="ca-pub-8635360583374491" data-adsbygoogle-status="done" style="display: block; margin: auto; background-color: transparent; height: 280px;" data-ad-status="filled"><div id="aswift_2_host" style="border: none; height: 280px; width: 966px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-block; overflow: visible;"><iframe id="aswift_2" name="aswift_2" browsingtopics="true" style="left:0;position:absolute;top:0;border:0;width:966px;height:280px;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" width="966" height="280" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allow="attribution-reporting; run-ad-auction" src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-8635360583374491&amp;output=html&amp;h=280&amp;adk=46494972&amp;adf=2506659868&amp;pi=t.aa~a.2649906188~i.38~rp.4&amp;w=966&amp;abgtt=6&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1726190082&amp;num_ads=1&amp;rafmt=1&amp;armr=3&amp;sem=mc&amp;pwprc=2647023221&amp;ad_type=text_image&amp;format=966x280&amp;url=https%3A%2F%2Fkhachsandanang.com.vn%2Fgioi-thieu.html&amp;fwr=0&amp;pra=3&amp;rh=200&amp;rw=966&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;fa=27&amp;uach=WyJtYWNPUyIsIjE1LjAuMCIsImFybSIsIiIsIjEyOC4wLjY2MTMuMTIwIixudWxsLDAsbnVsbCwiNjQiLFtbIkNocm9taXVtIiwiMTI4LjAuNjYxMy4xMjAiXSxbIk5vdDtBPUJyYW5kIiwiMjQuMC4wLjAiXSxbIkdvb2dsZSBDaHJvbWUiLCIxMjguMC42NjEzLjEyMCJdXSwwXQ..&amp;dt=1726190082329&amp;bpp=1&amp;bdt=625&amp;idt=1&amp;shv=r20240905&amp;mjsv=m202409100101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Df0a15a04eb58910d%3AT%3D1725762277%3ART%3D1726190018%3AS%3DALNI_MYsSQikCLBxwgVufPrD5GFhlMTW7Q&amp;gpic=UID%3D00000ef372a2eb6e%3AT%3D1725762277%3ART%3D1726190018%3AS%3DALNI_MZkgEWjMdZub-yiFGlgQ8WrJJ5g0g&amp;eo_id_str=ID%3Dab3603c34199b8e8%3AT%3D1725762277%3ART%3D1726190018%3AS%3DAA-Afjb_VB_dwcYkIIV3hq8uVhCR&amp;prev_fmts=0x0%2C1200x280&amp;nras=3&amp;correlator=4299802748659&amp;frm=20&amp;pv=1&amp;u_tz=420&amp;u_his=5&amp;u_h=1080&amp;u_w=2560&amp;u_ah=1080&amp;u_aw=2560&amp;u_cd=24&amp;u_sd=1&amp;dmc=8&amp;adx=627&amp;ady=1926&amp;biw=2550&amp;bih=992&amp;scr_x=0&amp;scr_y=782&amp;eid=44759875%2C44759926%2C44759842%2C31086864%2C31086866%2C44795921%2C95338229%2C95341662%2C95342458%2C31086975%2C95335246%2C95341671&amp;oid=2&amp;psts=AOrYGsn5DWEQwqS-28sslMaKjWGr1kwpFE8fvkbCQkW4oVsrIpLWSmM-XhMUbOG0gyEfk1da51XOMaJr_TMf-J_hN5JFx5kP&amp;pvsid=2149683497473773&amp;tmod=560609890&amp;uas=0&amp;nvt=3&amp;fc=1408&amp;brdim=0%2C88%2C0%2C88%2C2560%2C0%2C2560%2C992%2C2560%2C992&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=128&amp;bc=31&amp;bz=1&amp;td=1&amp;tdf=2&amp;psd=W251bGwsbnVsbCxudWxsLDNd&amp;nt=1&amp;ifi=3&amp;uci=a!3&amp;btvi=1&amp;fsb=1&amp;dtd=3" data-google-container-id="a!3" tabindex="0" title="Advertisement" aria-label="Advertisement" data-google-query-id="CIDptZXfvogDFfIMewcdkgIp_g" data-load-complete="true"></iframe></div></ins></div>

<p>Trong trường hợp chất lượng dịch vụ khách sạn cũng như thái độ phục vụ không tốt, khách hàng vui lòng liên hệ với&nbsp;<strong>khachsandanang.com.vn </strong>để được hỗ trợ.</p>

<p><strong>Hotline:</strong> 0899767588&nbsp;- 0966767588</p>

<p><u><strong>Chính sách riêng tư</strong></u></p>

<p>Khi bạn tham gia đặt phòng tại&nbsp;<strong>khachsandanang.com.vn </strong>mọi thông tin cá nhân của bạn sẽ được chúng tôi bảo mật tuyệt đối,&nbsp;<strong>khachsandanang.com.vn </strong>cam kết không cung cấp thông tin cá nhân của khách sạn cho bên thứ ba cũng như không sử dụng thông tin của bạn cho bất kỳ mục đích nào khác.</p>

<p><span style="color:#008000"><u><strong>Chính sách bảo mật</strong></u></span></p>

<p>Khi tham gia thanh toán trực tuyến tại&nbsp;<strong>khachsandanang.com.vn</strong>, mọi thông tin thanh toán của bạn sẽ được bảo mật bởi&nbsp;<strong>khachsandanang.com.vn </strong>và ngân hàng &nbsp;của bạn với các chương trình bảo mật tốt nhất.</p>
</div>
             
        </div>
        <div class="col-sm-3 py-4">
            
<div class="mod"><div style="color-scheme: initial !important; forced-color-adjust: initial !important; mask: initial !important; math-depth: initial !important; position: initial !important; position-anchor: initial !important; text-size-adjust: initial !important; appearance: initial !important; color: initial !important; font: initial !important; font-palette: initial !important; font-synthesis: initial !important; inset-area: initial !important; text-orientation: initial !important; text-rendering: initial !important; text-spacing-trim: initial !important; -webkit-font-smoothing: initial !important; -webkit-locale: initial !important; -webkit-text-orientation: initial !important; -webkit-writing-mode: initial !important; writing-mode: initial !important; zoom: initial !important; accent-color: initial !important; place-content: initial !important; place-items: initial !important; place-self: initial !important; alignment-baseline: initial !important; anchor-name: initial !important; animation-composition: initial !important; animation: initial !important; app-region: initial !important; aspect-ratio: initial !important; backdrop-filter: initial !important; backface-visibility: initial !important; background: initial !important; background-blend-mode: initial !important; baseline-shift: initial !important; baseline-source: initial !important; block-size: initial !important; border-block: initial !important; border: initial !important; border-radius: initial !important; border-collapse: initial !important; border-end-end-radius: initial !important; border-end-start-radius: initial !important; border-inline: initial !important; border-start-end-radius: initial !important; border-start-start-radius: initial !important; inset: initial !important; box-shadow: initial !important; box-sizing: initial !important; break-after: initial !important; break-before: initial !important; break-inside: initial !important; buffered-rendering: initial !important; caption-side: initial !important; caret-color: initial !important; clear: initial !important; clip: initial !important; clip-path: initial !important; clip-rule: initial !important; color-interpolation: initial !important; color-interpolation-filters: initial !important; color-rendering: initial !important; columns: initial !important; column-fill: initial !important; gap: initial !important; column-rule: initial !important; column-span: initial !important; contain: initial !important; contain-intrinsic-block-size: initial !important; contain-intrinsic-size: initial !important; contain-intrinsic-inline-size: initial !important; container: initial !important; content: initial !important; content-visibility: initial !important; counter-increment: initial !important; counter-reset: initial !important; counter-set: initial !important; cursor: initial !important; cx: initial !important; cy: initial !important; d: initial !important; display: initial !important; dominant-baseline: initial !important; empty-cells: initial !important; field-sizing: initial !important; fill: initial !important; fill-opacity: initial !important; fill-rule: initial !important; filter: initial !important; flex: initial !important; flex-flow: initial !important; float: initial !important; flood-color: initial !important; flood-opacity: initial !important; grid: initial !important; grid-area: initial !important; height: initial !important; hyphenate-character: initial !important; hyphenate-limit-chars: initial !important; hyphens: initial !important; image-orientation: initial !important; image-rendering: initial !important; initial-letter: initial !important; inline-size: initial !important; inset-block: initial !important; inset-inline: initial !important; isolation: initial !important; letter-spacing: initial !important; lighting-color: initial !important; line-break: initial !important; list-style: initial !important; margin-block: initial !important; margin: initial !important; margin-inline: initial !important; marker: initial !important; mask-type: initial !important; math-shift: initial !important; math-style: initial !important; max-block-size: initial !important; max-height: initial !important; max-inline-size: initial !important; max-width: initial !important; min-block-size: initial !important; min-height: initial !important; min-inline-size: initial !important; min-width: initial !important; mix-blend-mode: initial !important; object-fit: initial !important; object-position: initial !important; object-view-box: initial !important; offset: initial !important; opacity: initial !important; order: initial !important; orphans: initial !important; outline: initial !important; outline-offset: initial !important; overflow-anchor: initial !important; overflow-clip-margin: initial !important; overflow-wrap: initial !important; overflow: initial !important; overlay: initial !important; overscroll-behavior-block: initial !important; overscroll-behavior-inline: initial !important; overscroll-behavior: initial !important; padding-block: initial !important; padding: initial !important; padding-inline: initial !important; page: initial !important; page-orientation: initial !important; paint-order: initial !important; perspective: initial !important; perspective-origin: initial !important; pointer-events: initial !important; position-try: initial !important; position-visibility: initial !important; quotes: initial !important; r: initial !important; resize: initial !important; rotate: initial !important; ruby-align: initial !important; ruby-position: initial !important; rx: initial !important; ry: initial !important; scale: initial !important; scroll-behavior: initial !important; scroll-margin-block: initial !important; scroll-margin: initial !important; scroll-margin-inline: initial !important; scroll-padding-block: initial !important; scroll-padding: initial !important; scroll-padding-inline: initial !important; scroll-snap-align: initial !important; scroll-snap-stop: initial !important; scroll-snap-type: initial !important; scroll-timeline: initial !important; scrollbar-color: initial !important; scrollbar-gutter: initial !important; scrollbar-width: initial !important; shape-image-threshold: initial !important; shape-margin: initial !important; shape-outside: initial !important; shape-rendering: initial !important; size: initial !important; speak: initial !important; stop-color: initial !important; stop-opacity: initial !important; stroke: initial !important; stroke-dasharray: initial !important; stroke-dashoffset: initial !important; stroke-linecap: initial !important; stroke-linejoin: initial !important; stroke-miterlimit: initial !important; stroke-opacity: initial !important; stroke-width: initial !important; tab-size: initial !important; table-layout: initial !important; text-align: initial !important; text-align-last: initial !important; text-anchor: initial !important; text-combine-upright: initial !important; text-decoration: initial !important; text-decoration-skip-ink: initial !important; text-emphasis: initial !important; text-emphasis-position: initial !important; text-indent: initial !important; text-overflow: initial !important; text-shadow: initial !important; text-transform: initial !important; text-underline-offset: initial !important; text-underline-position: initial !important; white-space: initial !important; timeline-scope: initial !important; touch-action: initial !important; transform: initial !important; transform-box: initial !important; transform-origin: initial !important; transform-style: initial !important; transition: initial !important; translate: initial !important; user-select: initial !important; vector-effect: initial !important; vertical-align: initial !important; view-timeline: initial !important; view-transition-class: initial !important; view-transition-name: initial !important; visibility: initial !important; border-spacing: initial !important; -webkit-box-align: initial !important; -webkit-box-decoration-break: initial !important; -webkit-box-direction: initial !important; -webkit-box-flex: initial !important; -webkit-box-ordinal-group: initial !important; -webkit-box-orient: initial !important; -webkit-box-pack: initial !important; -webkit-box-reflect: initial !important; -webkit-line-break: initial !important; -webkit-line-clamp: initial !important; -webkit-mask-box-image: initial !important; -webkit-print-color-adjust: initial !important; -webkit-rtl-ordering: initial !important; -webkit-ruby-position: initial !important; -webkit-tap-highlight-color: initial !important; -webkit-text-combine: initial !important; -webkit-text-decorations-in-effect: initial !important; -webkit-text-fill-color: unset !important; -webkit-text-security: initial !important; -webkit-text-stroke: initial !important; -webkit-user-drag: initial !important; widows: initial !important; width: initial !important; will-change: initial !important; word-break: initial !important; word-spacing: initial !important; x: initial !important; y: initial !important; z-index: initial !important;"></div>
    <h3 class="module-title">Khách sạn nổi bật</h3>
    <ul class="near-hotels">
                <li>
            <h4>
                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-monaco-da-nang-20.html">Khách sạn Monaco Đà Nẵng</a>
                <span class="stars">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                    </span>
            </h4>
            <div class="address">24 Dương Đình Nghệ, An Hải Bắc, Quận Sơn Trà, Đà Nẵng</div>
            <div class="img">
                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-monaco-da-nang-20.html">
                    <img src="https://khachsandanang.com.vn/data/hotel/160/monaco1-1562773081.jpg" alt="Khách sạn Monaco Đà Nẵng">
                </a>
            </div>
            <p>Giá từ: <span class="price">700.000</span> <small>/ đêm</small></p>
            <p class="a_bot">
            <a class="show_map" href="https://khachsandanang.com.vn/api/viewmap/20.html" style="margin-right: 5px;">Bản đồ</a> 
            <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-monaco-da-nang-20.html" style="margin-right: 0px;">Xem chi tiết</a></p>
        </li>
                <li>
            <h4>
                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-travidat-danang-port-cu-21.html">Khách sạn Travidat ( Danang Port Cũ )</a>
                <span class="stars">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                    </span>
            </h4>
            <div class="address">20 Hà Bổng, Phường Phước Mỹ, Quận Sơn trà, TP Đà Nẵng</div>
            <div class="img">
                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-travidat-danang-port-cu-21.html">
                    <img src="https://khachsandanang.com.vn/data/hotel/160/travidat01-1562772384.jpg" alt="Khách sạn Travidat ( Danang Port Cũ )">
                </a>
            </div>
            <p>Giá từ: <span class="price">Liên hệ</span> <small>/ đêm</small></p>
            <p class="a_bot">
            <a class="show_map" href="https://khachsandanang.com.vn/api/viewmap/21.html" style="margin-right: 5px;">Bản đồ</a> 
            <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-travidat-danang-port-cu-21.html" style="margin-right: 0px;">Xem chi tiết</a></p>
        </li>
                <li class="last">
            <h4>
                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-galaxy-da-nang-23.html">Khách sạn Galaxy Đà Nẵng</a>
                <span class="stars">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                    </span>
            </h4>
            <div class="address">95 Hồ Xuân Hương, Q. Ngũ Hành Sơn, Đà Nẵng</div>
            <div class="img">
                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-galaxy-da-nang-23.html">
                    <img src="https://khachsandanang.com.vn/data/hotel/160/galaxy1-1562830079.jpg" alt="Khách sạn Galaxy Đà Nẵng">
                </a>
            </div>
            <p>Giá từ: <span class="price">650.000</span> <small>/ đêm</small></p>
            <p class="a_bot">
            <a class="show_map" href="https://khachsandanang.com.vn/api/viewmap/23.html" style="margin-right: 5px;">Bản đồ</a> 
            <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-galaxy-da-nang-23.html" style="margin-right: 0px;">Xem chi tiết</a></p>
        </li>
                <li>
            <h4>
                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-sao-minh-24.html">Khách sạn Sao Minh</a>
                <span class="stars">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                    </span>
            </h4>
            <div class="address">137 Nguyễn Du, Quận Hải Châu, Đà Nẵng </div>
            <div class="img">
                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-sao-minh-24.html">
                    <img src="https://khachsandanang.com.vn/data/hotel/160/sao-minh1-1562829903.jpg" alt="Khách sạn Sao Minh">
                </a>
            </div>
            <p>Giá từ: <span class="price">Liên hệ</span> <small>/ đêm</small></p>
            <p class="a_bot">
            <a class="show_map" href="https://khachsandanang.com.vn/api/viewmap/24.html" style="margin-right: 5px;">Bản đồ</a> 
            <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-sao-minh-24.html" style="margin-right: 0px;">Xem chi tiết</a></p>
        </li>
                <li>
            <h4>
                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-van-xuan-26.html">Khách sạn Vạn Xuân</a>
                <span class="stars">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                    </span>
            </h4>
            <div class="address">262 Võ Nguyên Giáp - Sơn Trà - Tp Đà Nẵng.</div>
            <div class="img">
                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-van-xuan-26.html">
                    <img src="https://khachsandanang.com.vn/data/hotel/160/khach-san-van-xuan-0-1371201203.jpg" alt="Khách sạn Vạn Xuân">
                </a>
            </div>
            <p>Giá từ: <span class="price">850.000</span> <small>/ đêm</small></p>
            <p class="a_bot">
            <a class="show_map" href="https://khachsandanang.com.vn/api/viewmap/26.html" style="margin-right: 5px;">Bản đồ</a> 
            <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-van-xuan-26.html" style="margin-right: 0px;">Xem chi tiết</a></p>
        </li>
                <li class="last">
            <h4>
                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-fansipan-27.html">Khách sạn Fansipan </a>
                <span class="stars">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                    </span>
            </h4>
            <div class="address">Đường Trường Sa, P. Mỹ An, Quận Ngũ Hành Sơn, Đà Nẵng</div>
            <div class="img">
                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-fansipan-27.html">
                    <img src="https://khachsandanang.com.vn/data/hotel/160/fansipan1-1562808490.jpg" alt="Khách sạn Fansipan ">
                </a>
            </div>
            <p>Giá từ: <span class="price">800.000</span> <small>/ đêm</small></p>
            <p class="a_bot">
            <a class="show_map" href="https://khachsandanang.com.vn/api/viewmap/27.html" style="margin-right: 5px;">Bản đồ</a> 
            <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-fansipan-27.html" style="margin-right: 0px;">Xem chi tiết</a></p>
        </li>
                <li>
            <h4>
                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-mimosa-1-28.html">Khách sạn Mimosa 1</a>
                <span class="stars">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                    </span>
            </h4>
            <div class="address">313 Trần Hưng Đạo, Quận Sơn Trà, Thành phố Đà Nẵng.</div>
            <div class="img">
                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-mimosa-1-28.html">
                    <img src="https://khachsandanang.com.vn/data/hotel/160/mimosa1-1562904162.jpg" alt="Khách sạn Mimosa 1">
                </a>
            </div>
            <p>Giá từ: <span class="price">450.000</span> <small>/ đêm</small></p>
            <p class="a_bot">
            <a class="show_map" href="https://khachsandanang.com.vn/api/viewmap/28.html" style="margin-right: 5px;">Bản đồ</a> 
            <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-mimosa-1-28.html" style="margin-right: 0px;">Xem chi tiết</a></p>
        </li>
                <li>
            <h4>
                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-mimosa-2-29.html">Khách sạn Mimosa 2</a>
                <span class="stars">
                                    </span>
            </h4>
            <div class="address">Tổ 33, Mỹ An, Ngũ Hành Sơn, Đà Nẵng.</div>
            <div class="img">
                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-mimosa-2-29.html">
                    <img src="https://khachsandanang.com.vn/data/hotel/160/mimosa-hotel-2-1367895480.jpg" alt="Khách sạn Mimosa 2">
                </a>
            </div>
            <p>Giá từ: <span class="price">Liên hệ</span> <small>/ đêm</small></p>
            <p class="a_bot">
            <a class="show_map" href="https://khachsandanang.com.vn/api/viewmap/29.html" style="margin-right: 5px;">Bản đồ</a> 
            <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-mimosa-2-29.html" style="margin-right: 0px;">Xem chi tiết</a></p>
        </li>
                <li class="last">
            <h4>
                <a href="https://khachsandanang.com.vn/khach-san-da-nang/big-home-hotel-little-home-2-cu-30.html">Big Home Hotel (Little Home 2 cũ)</a>
                <span class="stars">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                    </span>
            </h4>
            <div class="address">191 Đống Đa, Quận Hải Châu, Tp Đà Nẵng</div>
            <div class="img">
                <a href="https://khachsandanang.com.vn/khach-san-da-nang/big-home-hotel-little-home-2-cu-30.html">
                    <img src="https://khachsandanang.com.vn/data/hotel/160/big04-1562828981.jpg" alt="Big Home Hotel (Little Home 2 cũ)">
                </a>
            </div>
            <p>Giá từ: <span class="price">600.000</span> <small>/ đêm</small></p>
            <p class="a_bot">
            <a class="show_map" href="https://khachsandanang.com.vn/api/viewmap/30.html" style="margin-right: 5px;">Bản đồ</a> 
            <a href="https://khachsandanang.com.vn/khach-san-da-nang/big-home-hotel-little-home-2-cu-30.html" style="margin-right: 0px;">Xem chi tiết</a></p>
        </li>
                <li>
            <h4>
                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-tien-thinh-31.html">Khách sạn Tiến Thịnh</a>
                <span class="stars">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                        <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="Sao">
                                    </span>
            </h4>
            <div class="address">446 - 448 Hoàng Diệu, Q. Hải Châu, TP. Đà Nẵng</div>
            <div class="img">
                <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-tien-thinh-31.html">
                    <img src="https://khachsandanang.com.vn/data/hotel/160/tien-thinh1-1562813889.jpg" alt="Khách sạn Tiến Thịnh">
                </a>
            </div>
            <p>Giá từ: <span class="price">600.000</span> <small>/ đêm</small></p>
            <p class="a_bot">
            <a class="show_map" href="https://khachsandanang.com.vn/api/viewmap/31.html" style="margin-right: 5px;">Bản đồ</a> 
            <a href="https://khachsandanang.com.vn/khach-san-da-nang/khach-san-tien-thinh-31.html" style="margin-right: 0px;">Xem chi tiết</a></p>
        </li>
            </ul>
</div>
        </div>
    </div>

</div>    </div>
    <div class="clearfix"></div>
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
    <p style="font-size: 25px; font-weight: bold; letter-spacing: 5px; color: #FFF; margin-right: -5px; text-shadow: 1px 1px 0 #212121">09511765</p>
    <p style="padding-top: 5px;">Online: <span>34</span></p>    
  
      <a href="https://www.dmca.com/Protection/Status.aspx?ID=249ddc78-420d-4a09-a825-36fc729e4a0b&amp;refurl=https://khachsandanang.com.vn/gioi-thieu.html" target="_blank" title="DMCA.com Protection Status" class="dmca-badge"> <img src="//images.dmca.com/Badges/dmca_protected_sml_120m.png?ID=249ddc78-420d-4a09-a825-36fc729e4a0b" alt="DMCA.com Protection Status"></a> <script src="//images.dmca.com/Badges/DMCABadgeHelper.min.js"> </script>
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
	$(".hotel-filter-button").toggleClass("hotel-filter-button-expand");
    $(".hotel-filter").toggleClass("hotel-filter-expand");
});

$(".open_btn").click(function(){
        $(".menu_mobile").addClass("show");
    });
    
    $(".close_btn").click(function(){
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
        clickable: true,
        dynamicBullets:true
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
 
#image-gallery .swiper-slide {height: 0; padding-bottom: 52%; overflow: hidden} 
#image-gallery-thumbs {margin-top:5px}
#image-gallery-thumbs .swiper-slide:hover {cursor: pointer; border-radius: 5px}
 
#image-gallery-thumbs .swiper-slide {height: 50px}
#image-gallery-thumbs .swiper-slide img {height: 100%;  object-fit: cover}
</style><script src="https://sp.zalo.me/plugins/sdk.js"></script><div id="app" class="zs"></div>

    
<ins class="adsbygoogle adsbygoogle-noablate" data-adsbygoogle-status="done" style="display: none !important;" data-ad-status="unfilled"><div id="aswift_0_host" style="border: none; height: 0px; width: 0px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-block;"><iframe id="aswift_0" name="aswift_0" browsingtopics="true" style="left:0;position:absolute;top:0;border:0;width:undefinedpx;height:undefinedpx;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allow="attribution-reporting; run-ad-auction" src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-8635360583374491&amp;output=html&amp;adk=1812271804&amp;adf=3025194257&amp;abgtt=6&amp;lmt=1726190081&amp;plat=2%3A16777216%2C8%3A32768%2C9%3A32776%2C16%3A8388608%2C17%3A32%2C24%3A32%2C25%3A32%2C30%3A1081344%2C32%3A32%2C41%3A32%2C42%3A32&amp;plas=558x784_l%7C558x784_r&amp;format=0x0&amp;url=https%3A%2F%2Fkhachsandanang.com.vn%2Fgioi-thieu.html&amp;pra=5&amp;wgl=1&amp;aihb=0&amp;asro=0&amp;ailel=1~2~4~6~7~8~9~10~11~12~13~14~15~16~17~18~19~20~21~24~29~30~34&amp;aiael=1~2~4~6~7~8~9~10~11~12~13~14~15~16~17~18~19~20~21~24~29~30~34&amp;aifxl=29_18~30_19&amp;aiixl=29_5~30_6&amp;aslmct=0.7&amp;asamct=0.7&amp;aipaq=1&amp;aiapm=0.46927&amp;aiapmi=0.48129&amp;aiombap=1&amp;aiepr=1&amp;uach=WyJtYWNPUyIsIjE1LjAuMCIsImFybSIsIiIsIjEyOC4wLjY2MTMuMTIwIixudWxsLDAsbnVsbCwiNjQiLFtbIkNocm9taXVtIiwiMTI4LjAuNjYxMy4xMjAiXSxbIk5vdDtBPUJyYW5kIiwiMjQuMC4wLjAiXSxbIkdvb2dsZSBDaHJvbWUiLCIxMjguMC42NjEzLjEyMCJdXSwwXQ..&amp;dt=1726190081815&amp;bpp=9&amp;bdt=111&amp;idt=41&amp;shv=r20240905&amp;mjsv=m202409100101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Df0a15a04eb58910d%3AT%3D1725762277%3ART%3D1726190018%3AS%3DALNI_MYsSQikCLBxwgVufPrD5GFhlMTW7Q&amp;gpic=UID%3D00000ef372a2eb6e%3AT%3D1725762277%3ART%3D1726190018%3AS%3DALNI_MZkgEWjMdZub-yiFGlgQ8WrJJ5g0g&amp;eo_id_str=ID%3Dab3603c34199b8e8%3AT%3D1725762277%3ART%3D1726190018%3AS%3DAA-Afjb_VB_dwcYkIIV3hq8uVhCR&amp;nras=1&amp;correlator=4299802748659&amp;frm=20&amp;pv=2&amp;u_tz=420&amp;u_his=5&amp;u_h=1080&amp;u_w=2560&amp;u_ah=1080&amp;u_aw=2560&amp;u_cd=24&amp;u_sd=1&amp;dmc=8&amp;adx=-12245933&amp;ady=-12245933&amp;biw=2550&amp;bih=992&amp;scr_x=0&amp;scr_y=782&amp;eid=44759875%2C44759926%2C44759842%2C31086864%2C31086866%2C44795921%2C95338229%2C95341662%2C95342458%2C31086975%2C95335246%2C95341671&amp;oid=2&amp;pvsid=2149683497473773&amp;tmod=560609890&amp;uas=0&amp;nvt=3&amp;fsapi=1&amp;fc=1920&amp;brdim=0%2C88%2C0%2C88%2C2560%2C0%2C2560%2C992%2C2560%2C992&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=32768&amp;bc=31&amp;bz=1&amp;td=1&amp;tdf=2&amp;psd=W251bGwsbnVsbCxudWxsLDNd&amp;nt=1&amp;ifi=1&amp;uci=a!1&amp;fsb=1&amp;dtd=52" data-google-container-id="a!1" tabindex="0" title="Advertisement" aria-label="Advertisement" data-load-complete="true"></iframe></div></ins><div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div><ins class="adsbygoogle adsbygoogle-noablate" data-adsbygoogle-status="done" data-anchor-status="displayed" data-ad-status="filled" style="display: none; width: 100% !important; height: 129px !important; bottom: 0px; clear: none !important; float: none !important; left: 0px; margin: 0px !important; max-height: none !important; max-width: none !important; opacity: 1; overflow: visible !important; padding: 0px !important; position: fixed; right: auto !important; top: auto !important; vertical-align: baseline !important; visibility: visible !important; z-index: 2147483647; background: rgb(250, 250, 250) !important;" data-anchor-shown="true"><div class="grippy-host"></div><div id="aswift_3_host" style="border: none !important; height: 124px !important; width: 100% !important; margin: 0px !important; padding: 0px !important; position: relative !important; visibility: visible !important; background-color: transparent !important; display: inline-block !important; inset: auto !important; clear: none !important; float: none !important; max-height: none !important; max-width: none !important; opacity: 1 !important; overflow: visible !important; vertical-align: baseline !important; z-index: auto !important;"><iframe id="aswift_3" name="aswift_3" browsingtopics="true" style="width: 1005px !important; height: 124px !important; display: block; margin: 0px auto;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" width="1005" height="124" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allow="attribution-reporting; run-ad-auction" src="https://googleads.g.doubleclick.net/pagead/html/r20240905/r20110914/zrt_lookup_fy2021.html#RS-0-&amp;adk=1812271801&amp;client=ca-pub-8635360583374491&amp;fa=1&amp;ifi=4&amp;uci=a!4&amp;btvi=2" data-google-container-id="a!4" tabindex="0" title="Advertisement" aria-label="Advertisement" data-google-query-id="CLXQmZXfvogDFYMrewcduj44sQ" data-load-complete="true"></iframe></div></ins><ins class="adsbygoogle adsbygoogle-noablate" data-adsbygoogle-status="done" data-side-rail-status="idle" data-ad-status="filled" style="display: none !important; z-index: 2147483647 !important; margin: 0px !important; padding: 0px !important; position: fixed !important; left: 343px !important; top: 162px !important; overflow: visible !important; opacity: 0 !important; transition: 500ms ease-in !important;"><div id="aswift_4_host" style="border: none; height: 600px; width: 200px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-block;"><iframe id="aswift_4" name="aswift_4" browsingtopics="true" style="width:200px !IMPORTANT;height:600px !IMPORTANT" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" width="200" height="600" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allow="attribution-reporting; run-ad-auction" src="https://googleads.g.doubleclick.net/pagead/html/r20240905/r20110914/zrt_lookup_fy2021.html#RS-1-&amp;adk=1812271803&amp;client=ca-pub-8635360583374491&amp;fa=3&amp;ifi=5&amp;uci=a!5&amp;btvi=3" data-google-container-id="a!5" tabindex="0" title="Advertisement" aria-label="Advertisement" data-google-query-id="CLbQmZXfvogDFYMrewcduj44sQ" data-load-complete="true"></iframe></div><span class="left-side-rail-edge" style="background: rgb(250, 250, 250) !important; position: absolute !important; left: 0px !important; top: 600px !important; width: 200px !important; height: 5px !important; box-shadow: rgba(0, 0, 0, 0.5) 0px 1px 5px -1px, rgba(0, 0, 0, 0.1) 0px -1px 2px -1px !important;"></span><span class="left-side-rail-dismiss-btn" style="background: rgb(250, 250, 250) !important; position: absolute !important; left: 75px !important; right: 75px !important; top: 605px !important; box-shadow: rgba(0, 0, 0, 0.5) 0px 1px 5px -1px, rgba(0, 0, 0, 0.1) 0px -1px 2px -1px !important;"><svg style="position: absolute !important; top: 0px !important; display: block !important; width: 50px !important; height: 30px !important; margin-top: -5px !important; transform: none !important; pointer-events: initial !important;"><defs><filter id="left-side-rail-drop-shadow" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB"><feComponentTransfer in="SourceAlpha" result="TransferredAlpha"><feFuncR type="discrete" tableValues="0.5"></feFuncR><feFuncG type="discrete" tableValues="0.5"></feFuncG><feFuncB type="discrete" tableValues="0.5"></feFuncB></feComponentTransfer><feGaussianBlur in="TransferredAlpha" stdDeviation="2"></feGaussianBlur><feOffset dx="0" dy="0" result="offsetblur"></feOffset><feMerge><feMergeNode></feMergeNode><feMergeNode in="SourceGraphic"></feMergeNode></feMerge></filter></defs><path d="M5,5 L5,17 A8,8 0 0,0 13,25 L37,25 A8,8 0 0,0 45,17 L45,5 Z" stroke="#FAFAFA" stroke-width="1" fill="#FAFAFA" style="filter: url(&quot;#left-side-rail-drop-shadow&quot;);"></path><rect x="0" y="0" width="50" height="5" style="fill: rgb(250, 250, 250);"></rect><g stroke="#616161" stroke-width="2px" stroke-linecap="square"><line x1="18" y1="18" x2="25" y2="12"></line><line x1="25" y1="12" x2="32" y2="18"></line></g></svg></span></ins><ins class="adsbygoogle adsbygoogle-noablate" data-adsbygoogle-status="done" data-side-rail-status="idle" data-ad-status="filled" style="display: none !important; z-index: 2147483647 !important; margin: 0px !important; padding: 0px !important; position: fixed !important; right: 383px !important; top: 162px !important; overflow: visible !important; opacity: 0 !important; transition: 500ms ease-in !important;"><div id="aswift_5_host" style="border: none; height: 600px; width: 160px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-block;"><iframe id="aswift_5" name="aswift_5" browsingtopics="true" style="width:160px !IMPORTANT;height:600px !IMPORTANT" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" width="160" height="600" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allow="attribution-reporting; run-ad-auction" src="https://googleads.g.doubleclick.net/pagead/html/r20240905/r20110914/zrt_lookup_fy2021.html#RS-2-&amp;adk=1812271804&amp;client=ca-pub-8635360583374491&amp;fa=4&amp;ifi=6&amp;uci=a!6&amp;btvi=4" data-google-container-id="a!6" tabindex="0" title="Advertisement" aria-label="Advertisement" data-google-query-id="CLfQmZXfvogDFYMrewcduj44sQ" data-load-complete="true"></iframe></div><span class="right-side-rail-edge" style="background: rgb(250, 250, 250) !important; position: absolute !important; left: 0px !important; top: 600px !important; width: 160px !important; height: 5px !important; box-shadow: rgba(0, 0, 0, 0.5) 0px 1px 5px -1px, rgba(0, 0, 0, 0.1) 0px -1px 2px -1px !important;"></span><span class="right-side-rail-dismiss-btn" style="background: rgb(250, 250, 250) !important; position: absolute !important; left: 55px !important; right: 55px !important; top: 605px !important; box-shadow: rgba(0, 0, 0, 0.5) 0px 1px 5px -1px, rgba(0, 0, 0, 0.1) 0px -1px 2px -1px !important;"><svg style="position: absolute !important; top: 0px !important; display: block !important; width: 50px !important; height: 30px !important; margin-top: -5px !important; transform: none !important; pointer-events: initial !important;"><defs><filter id="right-side-rail-drop-shadow" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB"><feComponentTransfer in="SourceAlpha" result="TransferredAlpha"><feFuncR type="discrete" tableValues="0.5"></feFuncR><feFuncG type="discrete" tableValues="0.5"></feFuncG><feFuncB type="discrete" tableValues="0.5"></feFuncB></feComponentTransfer><feGaussianBlur in="TransferredAlpha" stdDeviation="2"></feGaussianBlur><feOffset dx="0" dy="0" result="offsetblur"></feOffset><feMerge><feMergeNode></feMergeNode><feMergeNode in="SourceGraphic"></feMergeNode></feMerge></filter></defs><path d="M5,5 L5,17 A8,8 0 0,0 13,25 L37,25 A8,8 0 0,0 45,17 L45,5 Z" stroke="#FAFAFA" stroke-width="1" fill="#FAFAFA" style="filter: url(&quot;#right-side-rail-drop-shadow&quot;);"></path><rect x="0" y="0" width="50" height="5" style="fill: rgb(250, 250, 250);"></rect><g stroke="#616161" stroke-width="2px" stroke-linecap="square"><line x1="18" y1="18" x2="25" y2="12"></line><line x1="25" y1="12" x2="32" y2="18"></line></g></svg></span></ins><iframe src="https://www.google.com/recaptcha/api2/aframe" width="0" height="0" style="display: none;"></iframe></body>
    </body>
</html>
