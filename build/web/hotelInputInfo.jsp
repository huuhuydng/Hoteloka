<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Hotel Information Upload</title>
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
            <h1>Hotel Information Upload</h1>
            <form id="hotelInfoForm" action="addhotel" method="POST">
                <div class="form-wrapper">
                    <!-- Hotel Name -->
                    <div class="form-group">
                        <label for="hotel_name">Hotel Name</label>
                        <input type="text" id="hotel_name" name="hotel_name" required value="<%= (String) session.getAttribute("hotel_name") != null ? (String) session.getAttribute("hotel_name") : ""%>">
                    </div>

                    <!-- Star Rating -->
                    <div class="form-group">
                        <label for="hotel_star">Star Rating</label>
                        <div class="star-rating" id="hotel_star">
                            <input type="radio" id="star5" name="hotel_star" value="5" <%= "5".equals((String) session.getAttribute("hotel_star")) ? "checked" : ""%> />
                            <label for="star5" class="star">&#9733;</label>
                            <input type="radio" id="star4" name="hotel_star" value="4" <%= "4".equals((String) session.getAttribute("hotel_star")) ? "checked" : ""%> />
                            <label for="star4" class="star">&#9733;</label>
                            <input type="radio" id="star3" name="hotel_star" value="3" <%= "3".equals((String) session.getAttribute("hotel_star")) ? "checked" : ""%> />
                            <label for="star3" class="star">&#9733;</label>
                            <input type="radio" id="star2" name="hotel_star" value="2" <%= "2".equals((String) session.getAttribute("hotel_star")) ? "checked" : ""%> />
                            <label for="star2" class="star">&#9733;</label>
                            <input type="radio" id="star1" name="hotel_star" value="1" <%= "1".equals((String) session.getAttribute("hotel_star")) ? "checked" : ""%> />
                            <label for="star1" class="star">&#9733;</label>
                        </div>
                    </div>

                    <!-- Number of Room Types -->
                    <div class="form-group">
                        <label for="hotel_numTypeRoom">Number of Room Types</label>
                        <select id="hotel_numTypeRoom" name="hotel_numTypeRoom" required>
                            <option value="">Select number of room types</option>
                            <option value="1" <%= "1".equals((String) session.getAttribute("hotel_numTypeRoom")) ? "selected" : ""%> >1</option>
                            <option value="2" <%= "2".equals((String) session.getAttribute("hotel_numTypeRoom")) ? "selected" : ""%> >2</option>
                            <option value="3" <%= "3".equals((String) session.getAttribute("hotel_numTypeRoom")) ? "selected" : ""%> >3</option>
                            <option value="4" <%= "4".equals((String) session.getAttribute("hotel_numTypeRoom")) ? "selected" : ""%> >4</option>
                            <option value="5" <%= "5".equals((String) session.getAttribute("hotel_numTypeRoom")) ? "selected" : ""%> >5</option>
                        </select>
                    </div>

                    <!-- Hotel Type -->
                    <div class="form-group">
                        <label for="hotel_type">Hotel Type</label>
                        <select id="hotel_type" name="hotel_type" required>
                            <option value="">Select hotel type</option>
                            <option value="Hotel" <%= "Hotel".equals((String) session.getAttribute("hotel_type")) ? "selected" : ""%> >Hotel</option>
                            <option value="Villa" <%= "Villa".equals((String) session.getAttribute("hotel_type")) ? "selected" : ""%> >Villa</option>
                            <option value="Apartment" <%= "Apartment".equals((String) session.getAttribute("hotel_type")) ? "selected" : ""%> >Apartment</option>
                            <option value="Motel" <%= "Motel".equals((String) session.getAttribute("hotel_type")) ? "selected" : ""%> >Motel</option>
                            <option value="Resort" <%= "Resort".equals((String) session.getAttribute("hotel_type")) ? "selected" : ""%> >Resort</option>
                        </select>
                    </div>

                    <!-- City -->
                    <div class="form-group">
                        <label for="hotel_city">City</label>
                        <select id="hotel_city" name="hotel_city" required>
                            <option value="">Select city</option>
                            <option value="City1" <%= "City1".equals((String) session.getAttribute("hotel_city")) ? "selected" : ""%> >City1</option>
                            <option value="City2" <%= "City2".equals((String) session.getAttribute("hotel_city")) ? "selected" : ""%> >City2</option>
                            <option value="City3" <%= "City3".equals((String) session.getAttribute("hotel_city")) ? "selected" : ""%> >City3</option>
                        </select>
                    </div>

                    <!-- District -->
                    <div class="form-group">
                        <label for="hotel_district">District</label>
                        <select id="hotel_district" name="hotel_district" required>
                            <option value="">Select district</option>
                            <option value="District1" <%= "District1".equals((String) session.getAttribute("hotel_district")) ? "selected" : ""%> >District1</option>
                            <option value="District2" <%= "District2".equals((String) session.getAttribute("hotel_district")) ? "selected" : ""%> >District2</option>
                            <option value="District3" <%= "District3".equals((String) session.getAttribute("hotel_district")) ? "selected" : ""%> >District3</option>
                        </select>
                    </div>

                    <!-- Ward -->
                    <div class="form-group">
                        <label for="hotel_ward">Ward</label>
                        <select id="hotel_ward" name="hotel_ward" required>
                            <option value="">Select ward</option>
                            <option value="Ward1" <%= "Ward1".equals((String) session.getAttribute("hotel_ward")) ? "selected" : ""%> >Ward1</option>
                            <option value="Ward2" <%= "Ward2".equals((String) session.getAttribute("hotel_ward")) ? "selected" : ""%> >Ward2</option>
                            <option value="Ward3" <%= "Ward3".equals((String) session.getAttribute("hotel_ward")) ? "selected" : ""%> >Ward3</option>
                        </select>
                    </div>

                    <!-- Street Address -->
                    <div class="form-group">
                        <label for="hotel_street">Street Address</label>
                        <input type="text" id="hotel_street" name="hotel_street" required value="<%= (String) session.getAttribute("hotel_street") != null ? (String) session.getAttribute("hotel_street") : ""%>">
                    </div>

                    <!-- Phone Number -->
                    <div class="form-group">
                        <label for="hotel_phone">Phone Number</label>
                        <input type="tel" id="hotel_phone" name="hotel_phone" required value="<%= (String) session.getAttribute("hotel_phone") != null ? (String) session.getAttribute("hotel_phone") : ""%>" pattern="^(0|\+?84)([0-9]{9,11})$" title="Phone number must start with 0 or +84 and have 10-13 digits.">
                    </div>

                    <!-- General Image URL -->
                    <div class="form-group">
                        <label for="hotel_imagesGeneral">General Image URL</label>
                        <input type="url" id="hotel_imagesGeneral" name="hotel_imagesGeneral" required value="<%= (String) session.getAttribute("hotel_imagesGeneral") != null ? (String) session.getAttribute("hotel_imagesGeneral") : ""%>" pattern="https?://.+" title="Please enter a valid URL starting with http:// or https://">
                    </div>

                    <!-- Detailed Image URLs -->
                    <div class="form-group">
                        <label for="hotel_imagesDetail">Detailed Image URLs (comma-separated)</label>
                        <input type="text" id="hotel_imagesDetail" name="hotel_imagesDetail" required value="<%= (String) session.getAttribute("hotel_imagesDetail") != null ? (String) session.getAttribute("hotel_imagesDetail") : ""%>" pattern="(https?://[^\s,]+(,(https?://[^\s,]+))*)?" title="Please enter valid URLs separated by commas without spaces">
                    </div>

                    <div class="form-group">
                        <label for="hotel_sv">Select Services</label>
                        <select id="hotel_sv" name="hotel_sv[]" multiple class="form-control">
                            <c:forEach var="service" items="${services}">
                                <c:set var="isSelected" value="false" />
                                <c:forEach var="selectedService" items="${sessionScope.selectedServices}">
                                    <c:if test="${service.service_id eq selectedService}">
                                        <c:set var="isSelected" value="true" />
                                    </c:if>
                                </c:forEach>
                                <option value="${service.service_id}" ${isSelected ? 'selected' : ''}>${service.service_name}</option>
                            </c:forEach>
                        </select>
                        <small class="form-text text-muted">Hold Ctrl (Windows) or Command (Mac) to select multiple services.</small>
                    </div>

                    <!-- Services -->
                    <div class="form-group">
                        <label for="hotel_services">Services Detail</label>
                        <textarea id="hotel_services" name="hotel_services" rows="4" required><%= (String) session.getAttribute("hotel_services") != null ? (String) session.getAttribute("hotel_services") : ""%></textarea>
                    </div>

                    <!-- Check-in/Check-out Policy -->
                    <div class="form-group">
                        <label for="hotel_checkin_checkout">Check-in/Check-out Policy</label>
                        <textarea id="hotel_checkin_checkout" name="hotel_checkin_checkout" rows="4" required><%= (String) session.getAttribute("hotel_checkin_checkout") != null ? (String) session.getAttribute("hotel_checkin_checkout") : ""%></textarea>
                    </div>

                    <!-- Child Policy -->
                    <div class="form-group">
                        <label for="hotel_child_policy">Child Policy</label>
                        <textarea id="hotel_child_policy" name="hotel_child_policy" rows="4" required><%= (String) session.getAttribute("hotel_child_policy") != null ? (String) session.getAttribute("hotel_child_policy") : ""%></textarea>
                    </div>

                    <!-- Cancellation Policy -->
                    <div class="form-group">
                        <label for="hotel_cancellation_policy">Cancellation Policy</label>
                        <textarea id="hotel_cancellation_policy" name="hotel_cancellation_policy" rows="4" required><%= (String) session.getAttribute("hotel_cancellation_policy") != null ? (String) session.getAttribute("hotel_cancellation_policy") : ""%></textarea>
                    </div>

                    <!-- Notes -->
                    <div class="form-group">
                        <label for="hotel_notes">Notes</label>
                        <textarea id="hotel_notes" name="hotel_notes" rows="4" required><%= (String) session.getAttribute("hotel_notes") != null ? (String) session.getAttribute("hotel_notes") : ""%></textarea>
                    </div>

                    <!-- Hotel Description -->
                    <div class="form-group">
                        <label for="hotel_desc">Hotel Description</label>
                        <textarea id="hotel_desc" name="hotel_desc" rows="4" required><%= (String) session.getAttribute("hotel_desc") != null ? (String) session.getAttribute("hotel_desc") : ""%></textarea>
                    </div>
                </div>

                <!-- Hidden fields for city, district, and ward names -->
                <input type="hidden" id="selectedCityName" name="selectedCityName">
                <input type="hidden" id="selectedDistrictName" name="selectedDistrictName">
                <input type="hidden" id="selectedWardName" name="selectedWardName">

                <div class="nav-buttons">
                    <button type="button" class="nav-button back-button" onclick="window.location.href = 'userInfo.jsp'">Back</button>
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
