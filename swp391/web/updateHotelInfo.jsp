<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <title>Update Hotel Information</title>
        <style>
                 body {
                font-family: "Poppins", sans-serif;
                background-color: #f0f2f5;
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
                margin: 0;
                padding: 20px;
                box-sizing: border-box;
            }

            .container {
                max-width: 500px;
                width: 100%;
                background-color: #fff;
                padding: 40px;
                border-radius: 20px;
                box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
                transition: transform 0.3s ease, box-shadow 0.3s ease;
            }

            .container:hover {
                transform: translateY(-5px);
                box-shadow: 0 20px 40px rgba(0, 0, 0, 0.15);
            }

            h1 {
                text-align: center;
                font-size: 28px;
                color: #34AF6D;
                margin-bottom: 30px;
                font-weight: 600;
            }

            .form-group {
                margin-bottom: 25px;
            }

            label {
                font-size: 14px;
                font-weight: 500;
                color: #333;
                margin-bottom: 8px;
                display: block;
            }

            input[type="text"],
            select,
            textarea {
                width: 100%;
                padding: 12px 15px;
                border: 1px solid #dcdcdc;
                border-radius: 8px;
                font-size: 14px;
                color: #333;
                background-color: #fafafa;
                transition: all 0.3s ease;
                box-sizing: border-box;
            }

            input[type="text"]:focus,
            select:focus,
            textarea:focus {
                border-color: #34AF6D;
                outline: none;
                box-shadow: 0 0 0 3px rgba(52, 175, 109, 0.1);
            }

            select {
                appearance: none;
                -webkit-appearance: none;
                -moz-appearance: none;
                background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='12' fill='%23333' viewBox='0 0 16 16'%3E%3Cpath d='M7.247 11.14L2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z'/%3E%3C/svg%3E");
                background-repeat: no-repeat;
                background-position: right 15px center;
                padding-right: 35px;
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
                font-weight: 600;
                cursor: pointer;
                transition: background-color 0.3s, transform 0.1s;
            }

            button:hover {
                background-color: #2e9a5e;
            }

            button:active {
                transform: scale(0.98);
            }

            .back-icon {
                display: flex;
                justify-content: flex-start;
                margin-bottom: 20px;
            }

            .back-icon i {
                font-size: 24px;
                color: #333;
                cursor: pointer;
                transition: color 0.3s;
            }

            .back-icon i:hover {
                color: #34AF6D;
            }


            .star-rating {
                display: flex;
                flex-direction: row-reverse;
                justify-content: flex-end;
                align-items: center;
                margin-bottom: 15px;
            }

            .star-rating input[type="radio"] {
                display: none;
            }

            .star {
                font-size: 24px;
                color: #dcdcdc;
                cursor: pointer;
                transition: color 0.3s;
                margin-right: 5px;
            }

            .star-rating .star:hover,
            .star-rating .star:hover ~ .star {
                color: #34AF6D;
            }

            .star-rating input[type="radio"]:checked + .star,
            .star-rating input[type="radio"]:checked ~ .star {
                color: #34AF6D;
            }
        </style>
    </head>
    <body>
        <c:if test="${sessionScope.account == null}">
            <script>
                window.location.href = "login.jsp";
            </script>
        </c:if>
        <div class="container">
            <div class="back-icon">
                <a href="javascript:history.back()">
                    <i class='bx bx-arrow-back'></i>
                </a>
            </div>
            <h1>CHỈNH SỬA THÔNG TIN CHUNG</h1>
            <form action="updatehotelinfo" method="post">
                <div class="form-group">
                    <label for="hotel_name">Tên Khách Sạn</label>
                    <input type="text" id="hotel_name" name="hotel_nameU" required value="${sessionScope.hotel.hotel_name}">
                </div>
                <div class="form-group">
                    <label for="hotel_type">Loại khách sạn</label>
                    <select id="hotel_type" name="hotel_typeU" required>
                        <option value="Khách sạn" ${sessionScope.hotel.type_name == 'Khách sạn' ? 'selected' : ''}>Khách sạn</option>
                        <option value="Villa" ${sessionScope.hotel.type_name == 'Villa' ? 'selected' : ''}>Villa</option>
                        <option value="Căn hộ" ${sessionScope.hotel.type_name == 'Căn hộ' ? 'selected' : ''}>Căn hộ</option>
                        <option value="Nhà nghỉ" ${sessionScope.hotel.type_name == 'Nhà nghỉ' ? 'selected' : ''}>Nhà nghỉ</option>
                        <option value="Resort" ${sessionScope.hotel.type_name == 'Resort' ? 'selected' : ''}>Resort</option>
                        <option value="Nhà trọ" ${sessionScope.hotel.type_name == 'Nhà trọ' ? 'selected' : ''}>Nhà trọ</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="hotel_star">Số sao</label>
                    <div class="star-rating" id="hotel_star">
                        <input type="radio" id="star5" name="hotel_starU" value="5" ${sessionScope.hotel.hotel_star == '5' ? 'checked' : ''}/>
                        <label for="star5" class="star">&#9733;</label>
                        <input type="radio" id="star4" name="hotel_starU" value="4" ${sessionScope.hotel.hotel_star == '4' ? 'checked' : ''}/>
                        <label for="star4" class="star">&#9733;</label>
                        <input type="radio" id="star3" name="hotel_starU" value="3" ${sessionScope.hotel.hotel_star == '3' ? 'checked' : ''}/>
                        <label for="star3" class="star">&#9733;</label>
                        <input type="radio" id="star2" name="hotel_starU" value="2" ${sessionScope.hotel.hotel_star == '2' ? 'checked' : ''}/>
                        <label for="star2" class="star">&#9733;</label>
                        <input type="radio" id="star1" name="hotel_starU" value="1" ${sessionScope.hotel.hotel_star == '1' ? 'checked' : ''}/>
                        <label for="star1" class="star">&#9733;</label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="hotel_desc">Mô tả khách sạn</label>
                    <textarea id="hotel_desc" name="hotel_descU" rows="4" required>${sessionScope.hotel.hotel_desc}</textarea>
                </div>
                <input type="hidden" name="hotelId" value=${sessionScope.hotel.hotel_id}>
                <button type="submit">Cập nhật</button>                
            </form>
        </div>
    </body>
</html>