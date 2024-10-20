<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Hotel Information Update</title>
        <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
        <style>
            :root {
                --primary-color: #34AF6D;
                --secondary-color: #2C9E5F;
                --background-color: #F0F7F4;
                --text-color: #333333;
                --input-bg: #FFFFFF;
                --input-border: #E0E0E0;
            }

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: 'Poppins', sans-serif;
                background-color: var(--background-color);
                color: var(--text-color);
                line-height: 1.6;
            }

            .container {
                max-width: 800px;
                margin: 2rem auto;
                padding: 2rem;
                background-color: #FFFFFF;
                border-radius: 12px;
                box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            }

            h1 {
                text-align: center;
                color: var(--primary-color);
                margin-bottom: 2rem;
                font-size: 2.5rem;
            }

            .form-wrapper {
                display: flex;
                flex-direction: column;
            }

            .form-group {
                margin-bottom: 1.5rem;
            }

            label {
                display: block;
                margin-bottom: 0.5rem;
                font-weight: 600;
                color: var(--primary-color);
            }

            input[type="text"],
            input[type="tel"],
            input[type="number"],
            input[type="url"],
            select,
            textarea {
                width: 100%;
                padding: 0.75rem;
                border: 1px solid var(--input-border);
                border-radius: 6px;
                font-size: 1rem;
                transition: border-color 0.3s, box-shadow 0.3s;
            }

            input[type="text"]:focus,
            input[type="tel"]:focus,
            input[type="number"]:focus,
            input[type="url"]:focus,
            select:focus,
            textarea:focus {
                outline: none;
                border-color: var(--primary-color);
                box-shadow: 0 0 0 3px rgba(52, 175, 109, 0.1);
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

            .nav-buttons {
                display: flex;
                justify-content: space-between;
                margin-top: 2rem;
            }

            .nav-button {
                padding: 0.75rem 1.5rem;
                border: none;
                border-radius: 6px;
                font-size: 1rem;
                font-weight: 600;
                cursor: pointer;
                transition: background-color 0.3s, transform 0.1s;
            }

            .back-button {
                background-color: #f0f0f0;
                color: var(--text-color);
            }

            .next-button {
                background-color: var(--primary-color);
                color: white;
            }

            .nav-button:hover {
                transform: translateY(-2px);
            }

            .back-button:hover {
                background-color: #e0e0e0;
            }

            .next-button:hover {
                background-color: var(--secondary-color);
            }

            @media (max-width: 768px) {
                .container {
                    padding: 1rem;
                    margin: 1rem;
                }
            }
            #hotel_sv {
                width: 100%;
                height: auto;
                min-height: 150px;
                padding: 5px;
                border: 1px solid var(--input-border);
                border-radius: 4px;
                background-color: var(--input-bg);
                color: var(--text-color);
                font-size: 1rem;
            }

            #hotel_sv option {
                padding: 5px;
            }

            #hotel_sv option:checked {
                background-color: var(--primary-color);
                color: white;
            }

            .form-text {
                font-size: 0.875rem;
                margin-top: 0.25rem;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <c:if test="${sessionScope.account == null}">
                <script>
                    window.location.href = "login.jsp";
                </script>
            </c:if>
            <c:if test="${sessionScope.hotel == null}">
                <script>
                    window.location.href = "NullHotelServlet";
                </script>
            </c:if>
            <a style="color: #34AF6D;
               text-decoration: none" href="partnerInfo.jsp">Trở về</a>
            <h1>Cập nhật Khách Sạn</h1>

            <form id="hotelInfoForm" action="updateHotel" method="Post">
                <div class="form-wrapper">
                    <input type="hidden" name="hotel_id" value="${sessionScope.hotel.hotel_id}">

                    <!-- Hotel Name -->
                    <div class="form-group">
                        <label for="hotel_name">Tên Khách Sạn</label>
                        <input type="text" id="hotel_name" name="hotel_nameU" required value="${sessionScope.hotel.hotel_name}">
                    </div>

                    <!-- Star Rating -->
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

                    <!-- Number of Room Types -->
                    <div class="form-group">
                        <label for="hotel_numTypeRoom">Số lượng phòng</label>
                        <c:if test="${sessionScope.hotel.rooms.size() == null}">
                            <input type="text" id="hotel_city" name="hotel_cityU" readonly value="Null">
                        </c:if>
                        <c:if test="${sessionScope.hotel.rooms.size() != null}">
                            <input type="text" id="hotel_city" name="hotel_cityU" readonly value="${sessionScope.hotel.rooms.size()}">
                        </c:if>
                    </div>


                    <!-- Hotel Type -->
                    <div class="form-group">
                        <label for="hotel_type">Loại khách sạn</label>
                        <select id="hotel_type" name="hotel_typeU" required>
                            <option value="Hotel" ${sessionScope.hotel.type_name == 'Hotel' ? 'selected' : ''}>Hotel</option>
                            <option value="Villa" ${sessionScope.hotel.type_name == 'Villa' ? 'selected' : ''}>Villa</option>
                            <option value="Apartment" ${sessionScope.hotel.type_name == 'Apartment' ? 'selected' : ''}>Apartment</option>
                            <option value="Motel" ${sessionScope.hotel.type_name == 'Motel' ? 'selected' : ''}>Motel</option>
                            <option value="Resort" ${sessionScope.hotel.type_name == 'Resort' ? 'selected' : ''}>Resort</option>
                        </select>
                    </div>

                    <!-- City -->
                    <div class="form-group">
                        <label for="hotel_city">Thành phố</label>
                        <input type="text" id="hotel_city" name="hotel_cityU" readonly value="${sessionScope.hotel.hotel_city}">
                    </div>

                    <!-- District -->
                    <div class="form-group">
                        <label for="hotel_district">Quận</label>
                        <input type="text" id="hotel_district" name="hotel_districtU" readonly value="${sessionScope.hotel.hotel_district}">
                    </div>

                    <!-- Ward -->
                    <div class="form-group">
                        <label for="hotel_ward">Huyện</label>
                        <input type="text" id="hotel_ward" name="hotel_wardU" readonly value="${sessionScope.hotel.hotel_ward}">              
                    </div>

                    <!-- Street Address -->
                    <div class="form-group">
                        <label for="hotel_street">Tên đường</label>
                        <input type="text" id="hotel_street" name="hotel_streetU" required value="${sessionScope.hotel.hotel_street}">
                    </div>

                    <!-- Phone Number -->
                    <div class="form-group">
                        <label for="hotel_phone">Số điện thoại</label>
                        <input type="tel" id="hotel_phone" name="hotel_phone" required value="${sessionScope.account.acc_phone}" pattern="^(0|\+?84)([0-9]{9,11})$" title="Phone number must start with 0 or +84 and have 10-13 digits.">
                    </div>

                    <!-- General Image URL -->
                    <div class="form-group">
                        <label for="hotel_imagesGeneral">URL ảnh bìa</label>
                        <input type="url" id="hotel_imagesGeneral" name="hotel_imagesGeneralU" required value="${sessionScope.hotel.hotel_imagesGeneral}" pattern="https?://.+" title="Please enter a valid URL starting with http:// or https://">
                    </div>

                    <!-- Detailed Image URLs -->
                    <div class="form-group">
                        <label for="hotel_imagesDetail">URL ảnh chi tiết (chia giữa các link bằng dấu phẩy)</label>
                        <input type="url" id="hotel_imagesDetail" name="hotel_imagesDetailU" required value="${sessionScope.hotel.hotel_imagesDetail}" 
                               pattern="(https?://[^\s,]+(,(https?://[^\s,]+))*)?" 
                               title="Please enter valid URLs separated by commas without spaces">
                    </div>


                    <div class="form-group"> 
                        <label for="hotel_sv">Chọn các loại dịch vụ</label> 
                        <select id="hotel_sv" name="hotel_sv[]U" multiple class="form-control">
                            <c:forEach var="service" items="${all_service}">
                                <c:set var="isSelected" value="false" />
                                <c:forEach var="selectedService" items="${sessionScope.service}">
                                    <c:if test="${service.service_id eq selectedService.service_id}">
                                        <c:set var="isSelected" value="true" />
                                    </c:if>
                                </c:forEach>
                                <option value="${service.service_id}" ${isSelected ? 'selected' : ''}>${service.service_name}</option>
                            </c:forEach>
                        </select>
                        <small class="form-text text-muted">Giữ Ctrl(Windows) hoặc Command(Mac) để có thể chọn nhiều dịch vụ.</small>
                    </div>


                    <!--                     Services -->
                    <div class="form-group">
                        <label for="hotel_services">Dịch vụ bao gồm</label>
                        <textarea id="hotel_services" name="hotel_servicesU" rows="4" required>${sessionScope.hotel.hotel_policy}</textarea>
                    </div>

                    <!--                     Check-in/Check-out Policy -->
                    <div class="form-group">
                        <label for="hotel_checkin_checkout">Chính sách nhận và trả phòng</label>
                        <textarea id="hotel_checkin_checkout" name="hotel_checkin_checkoutU" rows="4" required><%= (String) session.getAttribute("hotel_checkin_checkout") != null ? (String) session.getAttribute("hotel_checkin_checkout") : ""%></textarea>
                    </div>

                    <!--                     Child Policy -->
                    <div class="form-group">
                        <label for="hotel_child_policy">Chính sách trẻ em</label>
                        <textarea id="hotel_child_policy" name="hotel_child_policyU" rows="4" required></textarea>
                    </div>

                    <!--                     Cancellation Policy -->
                    <div class="form-group">
                        <label for="hotel_cancellation_policy">Chính sách hoàn huỷ</label>
                        <textarea id="hotel_cancellation_policy" name="hotel_cancellation_policyU" rows="4" required><%= (String) session.getAttribute("hotel_cancellation_policy") != null ? (String) session.getAttribute("hotel_cancellation_policy") : ""%></textarea>
                    </div>

                    <!-- Notes -->
                    <div class="form-group">
                        <label for="hotel_notes">Ghi chú</label>
                        <textarea id="hotel_notes" name="hotel_notesU" rows="4" required><%= (String) session.getAttribute("hotel_notes") != null ? (String) session.getAttribute("hotel_notes") : ""%></textarea>
                    </div>

                    <!-- Hotel Description -->
                    <div class="form-group">
                        <label for="hotel_desc">Mô tả khách sạn</label>
                        <textarea id="hotel_desc" name="hotel_descU" rows="4" required>${sessionScope.hotel.hotel_desc}</textarea>
                    </div>
                </div>

                <!-- Hidden fields for city, district, and ward names -->
                <input type="hidden" id="selectedCityName" name="selectedCityName">
                <input type="hidden" id="selectedDistrictName" name="selectedDistrictName">
                <input type="hidden" id="selectedWardName" name="selectedWardName">

                <div class="nav-buttons">
                    <button type="button" class="nav-button back-button" onclick="window.location.href = 'partnerInfo.jsp'">Trở lại</button>
                    <input type="submit" value="Next" class="nav-button next-button">
                </div>
            </form>
        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
        <script>
                        var hotelCity = document.getElementById("hotel_city");
                        var hotelDistrict = document.getElementById("hotel_district");
                        var hotelWard = document.getElementById("hotel_ward");

                        var apiUrl = "https://raw.githubusercontent.com/kenzouno1/DiaGioiHanhChinhVN/master/data.json";

                        axios.get(apiUrl)
                                .then(function (response) {
                                    renderCity(response.data);
                                })
                                .catch(function (error) {
                                    console.error("Error fetching data: ", error);
                                });

                        function renderCity(data) {
                            for (const city of data) {
                                hotelCity.options[hotelCity.options.length] = new Option(city.Name, city.Id);
                            }

                            hotelCity.onchange = function () {
                                document.getElementById("selectedCityName").value = this.options[this.selectedIndex].text;
                                hotelDistrict.length = 1;
                                hotelWard.length = 1;
                                if (this.value !== "") {
                                    const selectedCity = data.find(n => n.Id === this.value);
                                    for (const district of selectedCity.Districts) {
                                        hotelDistrict.options[hotelDistrict.options.length] = new Option(district.Name, district.Id);
                                    }
                                }
                            };

                            hotelDistrict.onchange = function () {
                                document.getElementById("selectedDistrictName").value = this.options[this.selectedIndex].text;
                                hotelWard.length = 1;
                                const selectedCity = data.find(n => n.Id === hotelCity.value);
                                const selectedDistrict = selectedCity.Districts.find(d => d.Id === this.value);
                                if (this.value !== "") {
                                    for (const ward of selectedDistrict.Wards) {
                                        hotelWard.options[hotelWard.options.length] = new Option(ward.Name, ward.Id);
                                    }
                                }
                            };

                            hotelWard.onchange = function () {
                                document.getElementById("selectedWardName").value = this.options[this.selectedIndex].text;
                            };
                        }
        </script>

    </body>
</html>
