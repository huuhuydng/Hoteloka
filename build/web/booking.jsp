<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Đơn đặt phòng - ${hotel.hotel_name}</title>
        <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">

        <!-- Other CSS and Scripts -->
        <link type="text/css" rel="stylesheet" href="css/khachsandanang.css" media="screen">
        <link type="text/css" rel="stylesheet" href="css/local.css" media="screen">
        <link type="text/css" rel="stylesheet" href="css/jquery-ui.css" media="screen">
        <style>
            :root {
                --primary-color: #2ecc71;
                --secondary-color: #27ae60;
                --accent-color: #e74c3c;
                --background-color: #f5f6fa;
                --card-background: #ffffff;
                --text-color: #2c3e50;
                --border-color: #bdc3c7;
                --hover-color: #e8f5e9;
            }

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: var(--background-color);
                color: var(--text-color);
                line-height: 1.6;
            }

            .container {
                max-width: 1000px;
                margin: 2rem auto;
                padding: 0 20px;
            }

            .booking-form {
                background-color: var(--card-background);
                border-radius: 15px;
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
                padding: 2rem;
            }

            h1 {
                color: var(--primary-color);
                text-align: center;
                font-size: 2.5rem;
                margin-bottom: 1rem;
                font-weight: 700;
            }

            h2 {
                color: var(--secondary-color);
                font-size: 1.8rem;
                margin-bottom: 0.5rem;
            }

            .hotel-info {
                text-align: center;
                margin-bottom: 2rem;
                padding-bottom: 1rem;
                border-bottom: 2px solid var(--primary-color);
            }

            .hotel-stars {
                color: #f1c40f;
                font-size: 1.2rem;
                margin: 0.5rem 0;
            }

            .hotel-address {
                color: #7f8c8d;
                font-size: 1.1rem;
            }

            .section {
                background-color: #fff;
                border-radius: 10px;
                padding: 1.5rem;
                margin-bottom: 2rem;
                box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            }

            .section-title {
                display: flex;
                align-items: center;
                margin-bottom: 1.5rem;
                color: var(--primary-color);
                font-size: 1.5rem;
            }

            .section-title i {
                margin-right: 10px;
                font-size: 1.8rem;
            }

            .form-group {
                margin-bottom: 1.5rem;
            }

            label {
                display: block;
                margin-bottom: 0.5rem;
                font-weight: 600;
                color: var(--text-color);
            }

            input[type="text"],
            input[type="tel"],
            input[type="email"],
            input[type="number"],
            select,
            textarea {
                width: 100%;
                padding: 12px;
                border: 2px solid var(--border-color);
                border-radius: 8px;
                font-size: 1rem;
                transition: all 0.3s;
            }

            input:focus,
            select:focus,
            textarea:focus {
                outline: none;
                border-color: var(--primary-color);
                box-shadow: 0 0 0 3px rgba(46, 204, 113, 0.2);
            }

            .date-inputs {
                display: flex;
                gap: 1rem;
            }

            .date-inputs .form-group {
                flex: 1;
            }

            .table_room {
                width: 100%;
                border-collapse: collapse;
                margin-top: 1rem;
                background-color: #fff;
                border-radius: 10px;
                overflow: hidden;
            }

            .table_room th {
                background-color: var(--primary-color);
                color: white;
                padding: 15px;
                text-align: left;
            }

            .table_room td {
                padding: 15px;
                border-bottom: 1px solid var(--border-color);
            }

            .table_room tr:hover {
                background-color: var(--hover-color);
            }

            .room-img {
                width: 80px;
                height: 80px;
                border-radius: 8px;
                object-fit: cover;
            }

            .qty {
                width: 70px !important;
                text-align: center;
                padding: 8px !important;
            }

            .payment-methods {
                display: flex;
                flex-direction: column;
                gap: 1.5rem;
            }

            .payment-method {
                display: flex;
                align-items: flex-start;
                padding: 1.5rem;
                border: 2px solid var(--border-color);
                border-radius: 12px;
                cursor: pointer;
                transition: all 0.3s;
            }

            .payment-method:hover {
                border-color: var(--primary-color);
                background-color: var(--hover-color);
            }

            .payment-method input[type="radio"] {
                margin-right: 15px;
                margin-top: 4px;
            }

            .payment-details {
                display: flex;
                align-items: stretch;
                gap: 2rem;
                width: 100%;
            }

            .payment-info {
                flex: 1;
            }

            .payment-method strong {
                display: block;
                font-size: 1.2rem;
                margin-bottom: 1rem;
                color: var(--primary-color);
            }

            .bank-details {
                background-color: #f8f9fa;
                border-radius: 8px;
                padding: 1rem;
                margin-top: 0.5rem;
            }

            .bank-details p {
                margin: 0.5rem 0;
                display: flex;
                align-items: center;
            }

            .bank-details p:before {
                content: '•';
                color: var(--primary-color);
                margin-right: 8px;
            }

            .qr-code {
                flex-shrink: 0;
                width: 180px;
                height: 180px;
                background-color: white;
                border-radius: 12px;
                padding: 0.5rem;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
            }

            .qr-code img {
                width: 150px;
                height: 150px;
            }

            .qr-code-label {
                margin-top: 0.5rem;
                font-size: 0.9rem;
                color: var(--text-color);
                text-align: center;
            }

            .office-payment {
                padding-left: 2rem;
            }
            .button-group {
                display: flex;
                flex-direction: column;
                gap: 1rem;
                margin-top: 1rem;
            }

            .submit-btn {
                background-color: var(--primary-color);
                color: white;
                border: none;
                padding: 15px 30px;
                font-size: 1.2rem;
                border-radius: 8px;
                cursor: pointer;
                transition: all 0.3s;
                width: 100%;
            }

            .back-btn {
                background-color: #e74c3c;
                color: white;
                border: none;
                padding: 15px 30px;
                font-size: 1.2rem;
                border-radius: 8px;
                cursor: pointer;
                transition: all 0.3s;
                text-decoration: none;
                text-align: center;
                display: flex;
                align-items: center;
                justify-content: center;
                width: 100%;
            }

            .submit-btn:hover {
                background-color: var(--secondary-color);
                transform: translateY(-2px);
            }

            .back-btn:hover {
                background-color: #c0392b;
                transform: translateY(-2px);
                color: white;
            }

            .back-btn i {
                margin-right: 8px;
            }
            .total-price {
                font-size: 1.5rem;
                color: var(--accent-color);
                text-align: right;
                margin-top: 1rem;
                padding: 1rem;
                background-color: #f8f9fa;
                border-radius: 8px;
            }

            @media (max-width: 768px) {
                .date-inputs {
                    flex-direction: column;
                }

                .table_room {
                    display: block;
                    overflow-x: auto;
                }
            }
            .room-info {
                display: flex;
                flex-direction: column;
                align-items: flex-start;
            }
            .room-name {
                font-weight: bold;
            }
            .vnpay-text {
                display: inline-block;
            }
            .vnpay-text .vn {
                color: #d31145;
            }
            .vnpay-text .pay {
                color: #0065A9;
            }
            .payment-method .payment-details {
                justify-content: space-between;
                width: 100%;
            }
            .vnpay-logo {
                width: 100px;
                height: 100px;
                object-fit: contain;
            }
        </style>
    </head>
    <body>
        <div id="header_tab">
            <jsp:include page="header.jsp"/>
        </div>
        <div id='banner_tab'>
            <jsp:include page="banner.jsp"/>
        </div>
        <div class="clr"></div>
        <div class="container">
            <form id="bookingForm" method="post">
                <div class="booking-form">
                    <div class="hotel-info">
                        <h1>ĐẶT PHÒNG KHÁCH SẠN</h1>
                        <h2>${hotel.hotel_name}</h2>
                        <div class="hotel-stars">
                            <c:forEach begin="1" end="${hotel.hotel_star}">&#9733;</c:forEach>
                            </div>
                            <p class="hotel-address">
                            <c:if test="${not empty hotel.hotel_street}">${hotel.hotel_street}, </c:if>
                            <c:if test="${not empty hotel.hotel_ward}">${hotel.hotel_ward}, </c:if>
                            <c:if test="${not empty hotel.hotel_district}">${hotel.hotel_district}, </c:if>
                            <c:if test="${not empty hotel.hotel_city}">${hotel.hotel_city}</c:if>
                            </p>
                        </div>

                        <input type="hidden" name="hotelId" value="${hotel.hotel_id}">

                    <div class="section">
                        <h3 class="section-title"><i class="fas fa-calendar-alt"></i>Thời gian</h3>
                        <div class="date-inputs">
                            <div class="form-group">
                                <label for="checkinDate">Nhận phòng:</label>
                                <input type="text" id="checkinDate" name="checkinDate" value="${checkIn}" readonly>
                            </div>
                            <div class="form-group">
                                <label for="checkoutDate">Trả phòng:</label>
                                <input type="text" id="checkoutDate" name="checkoutDate" value="${checkOut}" readonly>
                            </div>
                        </div>
                    </div>

                    <div class="section">
                        <h3 class="section-title"><i class="fas fa-bed"></i>Thông tin phòng</h3>
                        <table class="table_room">
                            <thead>
                                <tr>
                                    <th>Loại phòng</th>
                                    <th>Tối đa</th>
                                    <th>Giá 1 đêm</th>
                                    <th>Số đêm</th>
                                    <th>Số phòng</th>
                                    <th>Thành tiền</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${room}" var="r">
                                    <tr>
                                        <td>
                                            <div class="room-info">
                                                <span class="room-name">${r.room_name}</span>
                                                <input type="hidden" name="room[]" value="${r.room_id}">
                                            </div>
                                        </td>
                                        <td>
                                            <c:forEach begin="1" end="${r.numPeople}" var="p">
                                                <i class="fas fa-user"></i>
                                            </c:forEach>
                                        </td>
                                        <td>
                                            <span class="room-price" data-price="${r.room_price}">
                                                ${r.room_price}
                                            </span> VNĐ
                                        </td>
                                        <td>
                                            <span class="total-nights">0</span>
                                            <input type="hidden" id="totalNights" name="totalNights" value="0">
                                        </td>
                                        <td>
                                            <c:set var="bookedQuantity" value="0" />
                                            <c:forEach items="${book}" var="b">
                                                <c:if test="${b.roomId eq r.room_id}">
                                                    <c:set var="bookedQuantity" value="${b.quantity}" />
                                                </c:if>
                                            </c:forEach>
                                            <span class="room-quantity" data-room-id="${r.room_id}">${bookedQuantity}</span>
                                            <input type="hidden" name="qty[]" value="${bookedQuantity}">
                                        </td>
                                        <td>
                                            <span id="room-total-${r.room_id}" class="room-total">0</span> VNĐ
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <div class="total-price">
                            Tổng tiền: <span name="totalPrice">0 đ</span>
                            <input type="hidden" id="totalPriceHidden" name="totalPrice" value="0">
                        </div>
                    </div>

                    <div class="section">
                        <h3 class="section-title"><i class="fas fa-user"></i>Thông tin khách hàng</h3>
                        <div class="form-group">
                            <label for="customerName">Họ và tên:</label>
                            <input type="text" id="customerName" name="customerName" value="${sessionScope.account.acc_fullname}" required>
                        </div>
                        <div class="form-group">
                            <label>Giới tính:</label>
                            <label style="display: inline;">
                                <input type="radio" name="gender" value="male" ${sessionScope.account.acc_gender == 'Male' ? 'checked' : ''} required> Nam
                            </label>
                            <label style="display: inline; margin-left: 20px;">
                                <input type="radio" name="gender" value="female" ${sessionScope.account.acc_gender == 'Female' ? 'checked' : ''} required> Nữ
                            </label>
                        </div>
                        <div class="form-group">
                            <label for="customerPhone">Điện thoại:</label>
                            <input type="tel" id="customerPhone" name="customerPhone" value="${sessionScope.account.acc_phone}" required>
                        </div>
                        <div class="form-group">
                            <label for="customerEmail">Email:</label>
                            <input type="email" id="customerEmail" name="customerEmail" value="${sessionScope.account.acc_email}" required>
                        </div>
                        <div class="form-group">
                            <label for="notes">Ghi chú:</label>
                            <textarea id="notes" name="notes" rows="4"></textarea>
                        </div>
                    </div>

                    <div class="section">
                        <h3 class="section-title"><i class="fas fa-credit-card"></i>Phương thức thanh toán</h3>
                        <div class="payment-methods">
                            <label class="payment-method">
                                <input type="radio" name="paymentMethod" value="bank" checked>
                                <div class="payment-details">
                                    <div class="payment-info">
                                        <strong>Chuyển khoản ngân hàng</strong>
                                        <div class="bank-details">
                                            <p>Ngân hàng: TPBank - Chi nhánh Đà Nẵng</p>
                                            <p>Chủ tài khoản: Nguyễn Hữu Huy</p>
                                            <p>Số tài khoản: 0738 3595 901</p>
                                        </div>
                                    </div>
                                    <div class="qr-code">
                                        <img src="images/bank.png" alt="QR Code for bank transfer">
                                    </div>
                                </div>
                            </label>
                            <label class="payment-method">
                                <input type="radio" name="paymentMethod" value="vnpay">
                                <div class="payment-details">
                                    <div class="payment-info">
                                        <strong>Thanh toán qua ví điện tử <span class="vnpay-text"><span class="vn">VN</span><span class="pay">PAY</span></span></strong>
                                    </div>
                                    <img src="images/vnpay.png" alt="VNPAY Logo" class="vnpay-logo">
                                </div>
                            </label>
                            <label class="payment-method">
                                <input type="radio" name="paymentMethod" value="office">
                                <div class="office-payment">
                                    <strong>Thanh toán tại văn phòng</strong>
                                    <p>Quý khách vui lòng đến văn phòng của chúng tôi để thực hiện thanh toán</p>
                                </div>
                            </label>
                        </div>
                    </div>
                    <div class="button-group">
                        <button type="submit" class="submit-btn">
                            <i class="fas fa-check-circle"></i> Xác nhận đặt phòng
                        </button>
                        <a href="javascript:history.back()" class="back-btn">
                            <i class="fas fa-arrow-left"></i> Quay trở lại
                        </a>
                    </div>
                </div>
            </form>
        </div>
        <div id="footer_tab">
            <jsp:include page="footer.jsp"/>
        </div>
        <div class="clr"></div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
        <script>
            $(document).ready(function () {
                function calculateNights(checkin, checkout) {
                    const oneDay = 24 * 60 * 60 * 1000; // hours*minutes*seconds*milliseconds
                    const checkinDate = parseDate(checkin);
                    const checkoutDate = parseDate(checkout);
                    if (!checkinDate || !checkoutDate)
                        return 0;
                    const diffDays = Math.round(Math.abs((checkoutDate - checkinDate) / oneDay));
                    return diffDays;
                }

                // Hàm parse ngày từ chuỗi dd/mm/yyyy hoặc dd-mm-yyyy
                function parseDate(dateString) {
                    if (!dateString)
                        return null;
                    // Xử lý cả hai định dạng
                    const separator = dateString.includes('/') ? '/' : '-';
                    const parts = dateString.split(separator);
                    if (parts.length !== 3)
                        return null;
                    // Parse ngày với định dạng: năm, tháng (0-11), ngày
                    return new Date(parts[2], parts[1] - 1, parts[0]);
                }


                function formatCurrency(amount) {
                    return new Intl.NumberFormat('vi-VN').format(amount);
                }

                function calculateTotal() {
                    let grandTotal = 0;
                    const checkinDate = $('#checkinDate').val();
                    const checkoutDate = $('#checkoutDate').val();
                    const totalNights = calculateNights(checkinDate, checkoutDate);
                    $('.total-nights').text(totalNights);
                    $('#totalNights').val(totalNights);
                    const rows = document.querySelectorAll('.table_room tbody tr');
                    rows.forEach(row => {
                        const priceElement = row.querySelector('.room-price');
                        const quantityElement = row.querySelector('.room-quantity');
                        const totalElement = row.querySelector('.room-total');
                        if (priceElement && quantityElement && totalElement) {
                            const priceText = priceElement.getAttribute('data-price').replace(/\./g, '');
                            const price = parseInt(priceText);
                            const quantity = parseInt(quantityElement.textContent) || 0;
                            const roomTotal = price * quantity * totalNights;
                            totalElement.textContent = formatCurrency(roomTotal);
                            grandTotal += roomTotal;
                        }
                    });
                    // Cập nhật tổng giá trên giao diện
                    const totalPriceElement = document.querySelector('span[name="totalPrice"]');
                    if (totalPriceElement) {
                        totalPriceElement.textContent = formatCurrency(grandTotal) + ' đ';
                    }

                    // Cập nhật giá trị của input hidden
                    $('#totalPriceHidden').val(grandTotal);
                }

                // Tính toán khi trang được load
                calculateTotal();
                $('#bookingForm').on('submit', function (e) {
                    const paymentMethod = $('input[name="paymentMethod"]:checked').val();
                    if (paymentMethod === 'vnpay') {
                        $('#bookingForm').attr('action', 'createPayment');
                    } else {
                        $('#bookingForm').attr('action', 'submit');
                    }
                    calculateTotal();
                });
                function validateForm() {
                    let isValid = true;
                    const requiredFields = ['customerName', 'customerAddress', 'customerPhone', 'customerEmail'];
                    requiredFields.forEach(field => {
                        const element = $(`#${field}`);
                        if (!element.val().trim()) {
                            isValid = false;
                            element.addClass('error').next('.error-message').remove();
                            element.after(`<span class="error-message" style="color: red; font-size: 0.8rem;">Vui lòng điền thông tin này</span>`);
                        } else {
                            element.removeClass('error').next('.error-message').remove();
                        }
                    });
                    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                    const emailElement = $('#customerEmail');
                    if (emailElement.val() && !emailRegex.test(emailElement.val())) {
                        isValid = false;
                        emailElement.addClass('error').next('.error-message').remove();
                        emailElement.after(`<span class="error-message" style="color: red; font-size: 0.8rem;">Email không hợp lệ</span>`);
                    }


                    const phoneRegex = /^[0-9]{10}$/;
                    const phoneElement = $('#customerPhone');
                    if (phoneElement.val() && !phoneRegex.test(phoneElement.val())) {
                        isValid = false;
                        phoneElement.addClass('error').next('.error-message').remove();
                        phoneElement.after(`<span class="error-message" style="color: red; font-size: 0.8rem;">Số điện thoại không hợp lệ</span>`);
                    }

                    return isValid;
                }


                $('.section-title').on('click', function () {
                    const section = $(this).closest('.section');
                    $('html, body').animate({
                        scrollTop: section.offset().top - 20
                    }, 500);
                });
            });
        </script>
    </body>
</html>