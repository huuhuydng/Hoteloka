<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Form Hoàn Tiền</title>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <style>
            body {
                font-family: "Poppins", sans-serif;
                background-color: #f3f4f6;
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
                margin: 0;
                padding: 20px;
            }

            .container {
                max-width: 500px;
                width: 100%;
                background-color: #fff;
                padding: 40px;
                border-radius: 12px;
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
                border: 1px solid #e3e4e8;
                transition: transform 0.3s ease;
            }

            .container:hover {
                transform: scale(1.02);
                transition: transform 0.3s ease;
            }

            h2 {
                text-align: center;
                font-size: 24px;
                color: #34AF6D;
                margin-bottom: 30px;
                font-weight: 600;
            }

            .back-icon {
                display: flex;
                justify-content: flex-start;
                margin-bottom: 20px;
            }

            .back-icon i {
                font-size: 20px;
                color: #333;
                cursor: pointer;
                transition: color 0.3s;
            }

            .back-icon i:hover {
                color: #34AF6D;
            }

            .form-group {
                margin-bottom: 20px;
            }

            label {
                font-size: 14px;
                font-weight: bold;
                color: #333;
                margin-bottom: 10px;
                display: block;
            }

            input[type="text"],
            input[type="number"],
            select,
            textarea {
                width: 100%;
                padding: 15px;
                border: 1px solid #dcdcdc;
                border-radius: 8px;
                font-size: 14px;
                color: #333;
                background-color: #fafafa;
                transition: border 0.3s;
                box-sizing: border-box;
            }

            input:focus,
            select:focus,
            textarea:focus {
                border-color: #34AF6D;
                outline: none;
            }

            textarea {
                resize: vertical;
                min-height: 100px;
            }

            button {
                width: 100%;
                padding: 15px;
                background-color: #34AF6D;
                color: #fff;
                border: none;
                border-radius: 8px;
                font-size: 16px;
                font-weight: bold;
                cursor: pointer;
                transition: background-color 0.3s;
            }

            button:hover {
                background-color: #2e9a5e;
            }

            .other-bank {
                margin-top: 10px;
                display: none;
            }

            #bankName[value="other"]:checked ~ .other-bank {
                display: block;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="back-icon">
                <a href="javascript:history.back()">
                    <i class='bx bx-arrow-back'></i>
                </a>
            </div>
            <h2>YÊU CẦU HOÀN TIỀN</h2>
            <form action="refund" method="POST" onsubmit="return validateForm()">
                <div class="form-group">
                    <label for="customerName">Họ tên khách hàng</label>
                    <input type="text" id="customerName" name="customerName" value="${user.acc_fullname}" required>
                    <input type="hidden" id="cusId" name="cusId" value="${user.acc_id}">
                </div>

                <div class="form-group">
                    <label for="orderNumber">Mã đơn phòng</label>
                    <input type="text" id="orderNumber" name="orderNumber" value="${booking.booking_id}" readonly>
                </div>

                <div class="form-group">
                    <label for="amount">Số tiền hoàn</label>
                    <input type="text" id="amountDisplay" 
                           value="<fmt:formatNumber value="${booking.booking_total}" type="number" pattern="#,##0"/>VND" 
                           readonly>
                    <input type="hidden" id="amount" name="amount" value="${booking.booking_total}">
                </div>

                <div class="form-group">
                    <label for="bankAccount">Số tài khoản ngân hàng</label>
                    <input type="text" id="bankAccount" name="bankAccount" required>
                </div>

                <div class="form-group">
                    <label for="bankName">Tên ngân hàng</label>
                    <select id="bankName" name="bankName" onchange="toggleOtherBank()" required>
                        <option value="">Chọn ngân hàng</option>
                        <option value="BIDV">BIDV</option>
                        <option value="Vietcombank">Vietcombank</option>
                        <option value="Techcombank">Techcombank</option>
                        <option value="ACB">ACB</option>
                        <option value="MBBank">MB Bank</option>
                        <option value="other">Ngân hàng khác</option>
                    </select>
                    <div class="other-bank" id="otherBankDiv">
                        <input type="text" id="otherBankName" name="otherBankName" placeholder="Nhập tên ngân hàng">
                    </div>
                </div>

                <div class="form-group">
                    <label for="reason">Lý do hoàn tiền</label>
                    <textarea id="reason" name="reason" rows="4" required></textarea>
                </div>

                <button type="submit">Gửi yêu cầu</button>
            </form>
        </div>

        <script>
            function toggleOtherBank() {
                var bankSelect = document.getElementById('bankName');
                var otherBankDiv = document.getElementById('otherBankDiv');
                var otherBankInput = document.getElementById('otherBankName');

                if (bankSelect.value === 'other') {
                    otherBankDiv.style.display = 'block';
                    otherBankInput.required = true;
                } else {
                    otherBankDiv.style.display = 'none';
                    otherBankInput.required = false;
                }
            }
            function validateForm() {
                var customerName = document.getElementById('customerName').value;
                var orderNumber = document.getElementById('orderNumber').value;
                var actualAmount = document.getElementById('actualAmount').value; // Lấy giá trị thật từ hidden input
                var bankAccount = document.getElementById('bankAccount').value;
                var bankName = document.getElementById('bankName').value;
                var otherBankName = document.getElementById('otherBankName').value;
                var reason = document.getElementById('reason').value;

                if (customerName.trim() === '') {
                    alert('Vui lòng nhập họ tên khách hàng');
                    return false;
                }

                if (orderNumber.trim() === '') {
                    alert('Vui lòng nhập mã đơn hàng');
                    return false;
                }

                if (actualAmount <= 0) { // Kiểm tra giá trị thật
                    alert('Số tiền hoàn phải lớn hơn 0');
                    return false;
                }

                if (bankAccount.trim() === '') {
                    alert('Vui lòng nhập số tài khoản ngân hàng');
                    return false;
                }

                if (bankName === '') {
                    alert('Vui lòng chọn ngân hàng');
                    return false;
                }

                if (bankName === 'other' && otherBankName.trim() === '') {
                    alert('Vui lòng nhập tên ngân hàng khác');
                    return false;
                }

                if (reason.trim() === '') {
                    alert('Vui lòng nhập lý do hoàn tiền');
                    return false;
                }

                return true;
            }

            function formatCurrency(number) {
                return new Intl.NumberFormat('vi-VN', {
                    minimumFractionDigits: 0,
                    maximumFractionDigits: 0
                }).format(number) + 'VND';
            }
        </script>
    </body>
</html>