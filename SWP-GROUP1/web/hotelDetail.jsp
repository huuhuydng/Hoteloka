<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
        <script type="text/javascript" src="js/price_format.js" charset="UTF-8"></script>
        <script type="text/javascript" src="js/css3-mediaqueries.js" charset="UTF-8"></script>
        <script type="text/javascript" src="js/html5.js" charset="UTF-8"></script>
        <script type="text/javascript" src="js/hotel.js" charset="UTF-8"></script>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
        <link type="text/css" rel="stylesheet" href="css/khachsandanang.css" media="screen">
        <link type="text/css" rel="stylesheet" href="css/local.css" media="screen">
        <link type="text/css" rel="stylesheet" href="css/jquery-ui.css" media="screen">
        <link href="css/all.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="js/bootstrap.min.js" charset="UTF-8"></script>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" media="screen">

        <title>${h.hotel_name}</title>
        <style>
            .price-calculation {
                margin-top: 20px;
            }
            .price-calculation input {
                width: 50px;
                text-align: center;
            }
            .booking-form {
                background-color: #f5f5f5;
                border-radius: 5px;
                padding: 20px;
                margin-bottom: 20px;
            }

            .booking-form h3 {
                color: #22ab4a;
                margin-bottom: 15px;
            }

            .form-row {
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
                align-items: flex-end;
                margin-bottom: 15px;
            }

            .form-group {
                flex: 1 1 200px;
                margin-right: 10px;
                margin-bottom: 10px;
                display: flex;
                flex-direction: column;
            }

            .form-group:last-child {
                margin-right: 0;
            }

            .form-group label {
                display: block;
                margin-bottom: 5px;
                color: #333;
                font-weight: bold;
            }

            .form-control {
                width: 100%;
                padding: 8px;
                border: 1px solid #ccc;
                border-radius: 4px;
                font-size: 14px;
                height: 40px;
            }

            .check-btn {
                background-color: #dc3545;
                color: white;
                border: none;
                padding: 10px 20px;
                border-radius: 4px;
                cursor: pointer;
                font-size: 16px;
                transition: background-color 0.3s;
                height: 40px;
                width: 100%;
            }

            .check-btn:hover {
                background-color: #c0392b;
            }

            .ui-datepicker {
                font-size: 14px;
            }
            .ui-datepicker .ui-datepicker-header {
                background-color: #22ab4a;
                color: white;
            }
            .ui-datepicker .ui-datepicker-calendar .ui-state-default {
                background: #f6f6f6;
                color: #454545;
            }
            .ui-datepicker .ui-datepicker-calendar .ui-state-hover {
                background: #22ab4a;
                color: white;
            }
            .ui-datepicker .ui-datepicker-calendar .ui-state-active {
                background: #22ab4a;
                color: white;
            }
            .date-range-container {
                display: flex;
                justify-content: space-between;
                margin-bottom: 15px;
            }
            .date-input-group {
                flex: 1;
                margin-right: 10px;
            }
            .date-input-group:last-child {
                margin-right: 0;
            }
            .date-input-group label {
                display: block;
                margin-bottom: 5px;
                font-weight: bold;
            }
            .date-input-group input {
                width: 100%;
                padding: 8px;
                border: 1px solid #ccc;
                border-radius: 4px;
            }
            .services {
                display: flex;
                flex-wrap: wrap;
                gap: 10px;
            }

            .item_attr {
                display: inline-block;
                width: auto;
                padding: 5px 10px;
                position: relative;
            }

            .item_attr::before {
                margin-right: 8px;
                font-size: 1.2em;
            }

        </style>
    </head>
    <body>
        <div id="header_tab">
            <jsp:include page="header.jsp"/>
        </div>
        <div class="clr"></div>
        <div id='banner_tab'>
            <jsp:include page="banner.jsp"/>
        </div>
        <div class="clearfix"></div>
        <div class="container" style="height: auto !important;">
            <div class="container-fuild py-3" style="position: relative; height: auto !important;">

                <h1 class="heading detail-heading"><span>Khách sạn ${h.hotel_name}</span></h1>

                <div class="hotel_content" style="height: auto !important;">
                    <div class="hinfo">
                        <span class="stars fl">
                            <c:forEach begin="1" end="${h.hotel_star}" var="s">
                                <img src="https://khachsandanang.com.vn/templates/images/star.png" alt="">
                            </c:forEach>
                        </span>
                        <span style="padding: 6px 0 0 50px; float: left; font-size: 120%;"><b>  Số phòng</b>: ${h.hotel_numRoom}</span>
                    </div>
                    <a href="https://khachsandanang.com.vn/api/viewmap/227.html" title="Xem vị trí Khách sạn San San" class=" show_map maps_hotel">Bản đồ</a>
                    <div class="info-more"><b>Khu vực</b>:  
                        <a href="http://localhost:8080/DEANCUOIKI/search?index=1&search=${h.hotel_district}">${h.hotel_district}, ${h.hotel_city}</a>                         
                    </div>                                       
                    <div class="info-more">
                        <b>Địa chỉ</b>: ${h.hotel_street} – Quận ${h.hotel_district} - Thành Phố 
                        <a href="http://localhost:8080/DEANCUOIKI/search?index=1&search=${h.hotel_city}" 
                           class="google-anno" 
                           style="border: 0; box-shadow: none; display: inline; float: none; margin: 0; outline: 0; padding: 0; text-decoration: none; fill: currentColor;">
                            <svg viewBox="100 -1000 840 840" width="calc(16px - 2px)" height="16px" style="color: inherit;">
                            <path d="m784-120-252-252q-30 24-69 38t-83 14q-109 0-184.5-75.5t-75.5-184.5q0-109 75.5-184.5t184.5-75.5q109 0 184.5 75.5t75.5 184.5q0 44-14 83t-38 69l252 252-56 56zm-404-280q75 0 127.5-52.5t52.5-127.5q0-75-52.5-127.5t-127.5-52.5q-75 0-127.5 52.5t-52.5 127.5q0 75 52.5 127.5t127.5 52.5z"></path>
                            </svg>&nbsp;
                            <span class="google-anno-t" style="border: 0; box-shadow: none; display: inline; float: none; margin: 0; outline: 0; padding: 0; text-decoration: underline dotted; color: inherit; font-family: inherit; font-size: inherit; font-style: inherit; font-weight: inherit;">${h.hotel_city}</span>
                        </a>
                    </div>
                    <div class="fshare">
                        <span class="wifi">Wifi miễn phí</span>
                        <span class="buasang">Bữa sáng miễn phí</span>
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
                    </div>
                </div>
            </div>

            <div class="clearfix"></div>
            <div class="box_price_main">
                <div class="content-price">
                    <form action="booking" method="post" id="form_act_book">
                        <div class="booking-form">
                            <h3>CHỌN NGÀY ĐỂ KIỂM TRA GIÁ</h3>
                            <div class="date-range-container">
                                <div class="date-input-group">
                                    <label for="check-in">Ngày đến</label>
                                    <input type="text" name="check-in"  id="check-in" class="datepicker" placeholder="Chọn ngày đến">
                                </div>
                                <div class="date-input-group">
                                    <label for="check-out">Ngày đi</label>
                                    <input type="text" name="check-out" id="check-out" class="datepicker" placeholder="Chọn ngày đi">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="nights">Số đêm</label>
                                <input type="number" id="nights" class="form-control" value="1" min="1">
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table_room">
                                <thead>
                                    <tr class="top">
                                        <td>Phòng</td>
                                        <td>Tối đa</td>
                                        <td>Giá 1 đêm</td>
                                        <td>Số phòng</td>
                                        <td>Thành tiền</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${h.rooms}" var="r">
                                        <tr>
                                            <td>
                                                <div class="img">
                                                    <img src="${r.room_img}" alt="">
                                                </div>
                                                ${r.room_name}
                                            </td>
                                            <td align="center">
                                                <input type="hidden" name="room[]" value="${r.room_id}">
                                                <c:forEach begin="1" end="${r.numPeople}" var="p">
                                                    <i style="color:var(--blue)" class="fa fa-user"></i>
                                                </c:forEach>
                                            </td>
                                            <td align="center">
                                                <span class="room-price" data-price="${r.room_price}">${r.room_price}</span> VNĐ
                                            </td>
                                            <td align="center">
                                                <input type="number" name="qty[]" class="qty form-control room-quantity" 
                                                       style="width: 50px; text-align:center" value="0" min="0" max="${r.numRoom}" 
                                                       id="qty-${r.room_id}" data-room-id="${r.room_id}">
                                            </td>
                                            <td class="td_datphong" align="center">
                                                <div class="price_total"><span id="room-total-${r.room_id}" class="room-total">0</span> VNĐ</div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    <tr>
                                        <td colspan="4" align="right">
                                            <strong>Tổng cộng:</strong>
                                        </td>
                                        <td class="td_datphong" align="center">
                                            <div class="total_price"><span id="grand-total">0</span> VNĐ</div>
                                            <div><input class="btn btn-danger" type="submit" id="btn_book" value="Đặt phòng"></div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <input type="hidden" name="total_book" value="0">
                            <input type="hidden" name="hotel_id" value="${h.hotel_id}">
                        </div>
                    </form>
                </div>
            </div>
            <div class="info_mini_hotel" style="height: auto !important;">
                <h3>Tiện nghi khách sạn</h3>
                <div class="services">
                    <c:forEach var="service" items="${s}">
                        <div class="item_attr">${service.service_name}</div>
                    </c:forEach>
                </div>
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
                <div class="mini-con">
                    <div>
                        <c:set var="policies" value="${fn:split(h.hotel_policy, ';')}" />

                        <c:if test="${not empty fn:trim(policies[0])}">
                            <h4 style="color: red; font-weight: bold; font-size: 1.2em; margin-bottom: 5px;">DỊCH VỤ</h4>
                            <p style="margin-top: 0;">${policies[0]}</p>
                        </c:if>

                        <c:if test="${not empty fn:trim(policies[1])}">
                            <h4 style="color: red; font-weight: bold; font-size: 1.2em; margin-bottom: 5px;">CHÍNH SÁCH NHẬN TRẢ PHÒNG</h4>
                            <p style="margin-top: 0;">${policies[1]}</p>
                        </c:if>

                        <c:if test="${not empty fn:trim(policies[2])}">
                            <h4 style="color: red; font-weight: bold; font-size: 1.2em; margin-bottom: 5px;">CHÍNH SÁCH TRẺ EM</h4>
                            <p style="margin-top: 0;">${policies[2]}</p>
                        </c:if>

                        <c:if test="${not empty fn:trim(policies[3])}">
                            <h4 style="color: red; font-weight: bold; font-size: 1.2em; margin-bottom: 5px;">CHÍNH SÁCH HOÀN HỦY</h4>
                            <p style="margin-top: 0;">${policies[3]}</p>
                        </c:if>

                        <c:if test="${not empty fn:trim(policies[4])}">
                            <h4 style="color: red; font-weight: bold; font-size: 1.2em; margin-bottom: 5px;">GHI CHÚ</h4>
                            <p style="margin-top: 0;">${policies[4]}</p>
                        </c:if>
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
                    </div>
                </div>
            </div>
        </div>



        <script type="text/javascript" src="https://khachsandanang.com.vn/templates/js/jquery.tinyscrollbar.min.js"></script>
        <script type="text/javascript" src="https://khachsandanang.com.vn/templates/js/jquery.validate.min.js"></script>
        <link rel="stylesheet" type="text/css" href="https://khachsandanang.com.vn/templates/fancybox3/jquery.fancybox.css">
        <script src="https://khachsandanang.com.vn/templates/fancybox3/jquery.fancybox.js"></script>
        <script>
            $(document).ready(function () {
                var sessionCheckIn = '<%= session.getAttribute("checkIn") != null ? session.getAttribute("checkIn").toString() : ""%>';
                var sessionCheckOut = '<%= session.getAttribute("checkOut") != null ? session.getAttribute("checkOut").toString() : ""%>';

                console.log("Initial session values:");
                console.log("Session Check-in:", sessionCheckIn);
                console.log("Session Check-out:", sessionCheckOut);

                var today = new Date();
                var tomorrow = new Date(today);
                tomorrow.setDate(today.getDate() + 1);

                function formatDate(date) {
                    return date.getDate().toString().padStart(2, '0') + '/' +
                            (date.getMonth() + 1).toString().padStart(2, '0') + '/' +
                            date.getFullYear();
                }

                function parseDate(dateString) {
                    if (!dateString || dateString === "")
                        return null;


                    if (dateString.includes('-')) {
                        var parts = dateString.split('-');
                        if (parts.length === 3) {
                            // Parse ngày với định dạng: năm, tháng (0-11), ngày
                            return new Date(parseInt(parts[2]), parseInt(parts[1]) - 1, parseInt(parts[0]));
                        }
                    }


                    if (dateString.includes('/')) {
                        var parts = dateString.split('/');
                        if (parts.length === 3) {
                            return new Date(parseInt(parts[2]), parseInt(parts[1]) - 1, parseInt(parts[0]));
                        }
                    }

                    return null;
                }

                var checkInDate = sessionCheckIn ? parseDate(sessionCheckIn) : today;
                var checkOutDate = sessionCheckOut ? parseDate(sessionCheckOut) : tomorrow;

                console.log("Parsed dates:");
                console.log("Check-in date:", checkInDate);
                console.log("Check-out date:", checkOutDate);


                if (!checkInDate)
                    checkInDate = today;
                if (!checkOutDate)
                    checkOutDate = tomorrow;

                $("#check-in").datepicker({
                    dateFormat: "dd/mm/yy",
                    minDate: 0,
                    changeMonth: true,
                    changeYear: true,
                    onSelect: function (selectedDate) {
                        var selectedCheckIn = $(this).datepicker('getDate');
                        var minCheckOut = new Date(selectedCheckIn);
                        minCheckOut.setDate(selectedCheckIn.getDate() + 1);

                        $("#check-out").datepicker("option", "minDate", minCheckOut);

                        var currentCheckOut = $("#check-out").datepicker('getDate');
                        if (currentCheckOut <= selectedCheckIn) {
                            $("#check-out").datepicker("setDate", minCheckOut);
                        }
                        updateNights();
                        updateRoomAvailability();
                    }
                });

                $("#check-out").datepicker({
                    dateFormat: "dd/mm/yy",
                    minDate: 1,
                    changeMonth: true,
                    changeYear: true,
                    onSelect: function () {
                        updateNights();
                        updateRoomAvailability();

                    }
                });

                function calculateNights(checkIn, checkOut) {
                    return Math.ceil((checkOut - checkIn) / (1000 * 60 * 60 * 24));
                }

                function updateNights() {
                    var checkIn = $("#check-in").datepicker("getDate");
                    var checkOut = $("#check-out").datepicker("getDate");

                    if (checkIn && checkOut) {
                        var nights = calculateNights(checkIn, checkOut);
                        $("#nights").val(nights);
                    }
                }

                $("#nights").on("change", function () {
                    var nights = parseInt($(this).val()) || 1;
                    if (nights < 1) {
                        nights = 1;
                        $(this).val(1);
                    }

                    var checkIn = $("#check-in").datepicker("getDate");
                    if (checkIn) {
                        var newCheckOut = new Date(checkIn);
                        newCheckOut.setDate(checkIn.getDate() + nights);
                        $("#check-out").datepicker("setDate", newCheckOut);
                    }
                });

                setTimeout(function () {
                    $("#check-in").datepicker("setDate", checkInDate);
                    $("#check-out").datepicker("setDate", checkOutDate);
                    updateNights();
                    updateRoomAvailability();

                    console.log("Final datepicker values:");
                    console.log("Check-in value:", $("#check-in").val());
                    console.log("Check-out value:", $("#check-out").val());
                    console.log("Nights:", $("#nights").val());
                }, 0);

                //room available
                function updateRoomAvailability() {
                    var checkIn = $("#check-in").val();
                    var checkOut = $("#check-out").val();

                    if (checkIn && checkOut) {
                        $('.room-quantity').each(function () {
                            var roomId = $(this).data('room-id');
                            var quantityInput = $(this);

                            $.ajax({
                                url: 'roomAvailability',
                                method: 'GET',
                                data: {
                                    roomId: roomId,
                                    checkIn: checkIn,
                                    checkOut: checkOut
                                },
                                success: function (response) {
                                    var roomsLeft = parseInt(response.roomsLeft);
                                    quantityInput.attr('max', roomsLeft);
                                    var availabilitySpan = quantityInput.siblings('.room-availability');
                                    if (availabilitySpan.length === 0) {
                                        availabilitySpan = $('<span class="room-availability"></span>').insertAfter(quantityInput);
                                    }
                                    var currentQuantity = parseInt(quantityInput.val());
                                    if (currentQuantity > roomsLeft) {
                                        quantityInput.val(roomsLeft);
                                    }

                                    calculateTotal();
                                },
                                error: function (xhr, status, error) {
                                    console.error("Error fetching room availability:", error);
                                }
                            });
                        });
                    }
                }
            });

            function formatCurrency(amount) {
                return new Intl.NumberFormat('vi-VN').format(amount);
            }

            function calculateTotal() {
                let grandTotal = 0;
                const nights = parseInt(document.getElementById('nights').value) || 1;

                const rows = document.querySelectorAll('.table_room tbody tr:not(:last-child)');

                rows.forEach(row => {
                    const priceElement = row.querySelector('.room-price');
                    const quantityInput = row.querySelector('.room-quantity');
                    const totalElement = row.querySelector('.room-total');

                    if (priceElement && quantityInput && totalElement) {
                        const priceText = priceElement.getAttribute('data-price').replace(/\./g, '');
                        const price = parseInt(priceText);
                        const quantity = parseInt(quantityInput.value) || 0;
                        const roomTotal = price * quantity * nights;
                        totalElement.textContent = formatCurrency(roomTotal);
                        grandTotal += roomTotal;
                    }
                });

                const grandTotalElement = document.getElementById('grand-total');
                if (grandTotalElement) {
                    grandTotalElement.textContent = formatCurrency(grandTotal);
                }

                const totalBookInput = document.querySelector('input[name="total_book"]');
                if (totalBookInput) {
                    totalBookInput.value = grandTotal;
                }
            }


            document.addEventListener('DOMContentLoaded', function () {
                calculateTotal();
                const quantityInputs = document.querySelectorAll('.room-quantity');
                quantityInputs.forEach(input => {
                    input.addEventListener('change', calculateTotal);
                    input.addEventListener('input', calculateTotal);
                });

                const nightsInput = document.getElementById('nights');
                nightsInput.addEventListener('change', calculateTotal);
                nightsInput.addEventListener('input', calculateTotal);
            });

            $('[data-fancybox^="gallery"]').fancybox({
                thumbs: {
                    autoStart: true
                },
                buttons: [
                    'zoom',
                    'close'
                ]
            });
        </script>
        <div id="footer_tab">
            <jsp:include page="footer.jsp"/>
        </div>
        <div class="clr"></div>
    </body>
</html>

