<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>


        <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
        <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>

        <title>Group 1</title>
        <style>
            .pagination {
                display: flex;
                list-style-type: none;
                padding: 0;
                justify-content: center;
                margin-top: 20px;
            }
            .pagination li {
                margin: 0 5px;
            }
            .pagination a {
                display: flex;
                align-items: center;
                justify-content: center;
                min-width: 40px;
                height: 40px;
                font-size: 16px;
                color: #00B6F3;
                font-weight: 500;
                text-decoration: none;
                transition: all 0.3s;
                border-radius: 20px;
                background-color: rgba(0,182,143,0.1);
                padding: 0 10px;
            }
            .pagination a:hover,
            .pagination a.active {
                color: white;
                background-color: #00B6F3;
            }
            .pagination .nav-button {
                width: auto;
            }
            .pagination .disabled {
                opacity: 0.5;
                pointer-events: none;
            }
            .pagination i {
                margin: 0 5px;
            }
            .filter-toggle-btn {
                position: fixed;
                left: 0;
                top: 200px;
                background: #00B6F3;
                color: white;
                border: none;
                border-radius: 0 4px 4px 0;
                padding: 8px 12px;
                height: 35px;
                font-size: 13px;
                font-weight: 500;
                display: flex;
                align-items: center;
                gap: 6px;
                cursor: pointer;
                box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
                transition: all 0.3s ease;
                z-index: 1000;
            }

            .filter-toggle-btn:hover {
                background: #0095c8;
                padding-left: 15px;
            }

            .filter-toggle-btn i {
                font-size: 14px;
            }

            /* Sliding panel */
            .filter-wrapper {
                position: fixed;
                left: -320px;
                top: 0;
                width: 320px;
                height: 100vh;
                background: #fff;
                z-index: 999;
                transition: all 0.3s ease;
                box-shadow: 5px 0 15px rgba(0, 0, 0, 0.1);
                overflow-y: auto;
            }

            .filter-wrapper.active {
                left: 0;
            }

            /* Filter content */
            .filter-section {
                padding: 25px;
                padding-top: 60px;
                margin: 0;
                min-height: 100vh;
            }

            .filter-title {
                font-size: 18px;
                font-weight: 600;
                margin-bottom: 20px;
                color: #2c3e50;
                padding-bottom: 12px;
                border-bottom: 2px solid #f0f2f5;
                position: relative;
            }

            .filter-title:after {
                content: '';
                position: absolute;
                bottom: -2px;
                left: 0;
                width: 50px;
                height: 2px;
                background: #00B6F3;
            }

            .filter-group {
                margin-bottom: 22px;
            }

            .filter-label {
                display: block;
                margin-bottom: 12px;
                color: #2c3e50;
                font-weight: 500;
                font-size: 15px;
            }

            /* Form controls */
            .filter-select {
                width: 100%;
                padding: 10px 12px;
                border: 1.5px solid #e1e8ef;
                border-radius: 8px;
                margin-bottom: 12px;
                font-size: 14px;
                color: #2c3e50;
                background-color: #fff;
                transition: all 0.3s ease;
                appearance: none;
                background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='12' fill='%232c3e50' viewBox='0 0 16 16'%3E%3Cpath d='M7.247 11.14L2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z'/%3E%3C/svg%3E");
                background-repeat: no-repeat;
                background-position: calc(100% - 12px) center;
                padding-right: 35px;
            }

            .filter-select:focus {
                border-color: #00B6F3;
                outline: none;
                box-shadow: 0 0 0 3px rgba(0, 182, 243, 0.1);
            }

            .filter-checkbox {
                margin-bottom: 12px;
                display: flex;
                align-items: center;
                cursor: pointer;
            }

            .filter-checkbox input[type="checkbox"] {
                appearance: none;
                -webkit-appearance: none;
                width: 20px;
                height: 20px;
                border: 2px solid #e1e8ef;
                border-radius: 4px;
                margin-right: 10px;
                position: relative;
                cursor: pointer;
                transition: all 0.2s ease;
            }

            .filter-checkbox input[type="checkbox"]:checked {
                background-color: #00B6F3;
                border-color: #00B6F3;
            }

            .filter-checkbox input[type="checkbox"]:checked::after {
                content: '';
                position: absolute;
                left: 6px;
                top: 2px;
                width: 5px;
                height: 10px;
                border: solid white;
                border-width: 0 2px 2px 0;
                transform: rotate(45deg);
            }

            .filter-checkbox label {
                color: #4a5568;
                font-size: 14px;
                user-select: none;
                cursor: pointer;
            }

            .filter-checkbox:hover label {
                color: #2c3e50;
            }

            .filter-checkbox:hover input[type="checkbox"]:not(:checked) {
                border-color: #00B6F3;
            }

            /* Buttons */
            .filter-button {
                width: 100%;
                padding: 12px 20px;
                border: none;
                border-radius: 8px;
                font-size: 15px;
                font-weight: 500;
                cursor: pointer;
                transition: all 0.3s ease;
                margin-top: 15px;
            }

            .filter-button:not(.clear-filter) {
                background: #00B6F3;
                color: white;
                box-shadow: 0 2px 8px rgba(0, 182, 243, 0.3);
            }

            .filter-button:not(.clear-filter):hover {
                background: #0095c8;
                box-shadow: 0 4px 12px rgba(0, 182, 243, 0.4);
                transform: translateY(-1px);
            }

            .clear-filter {
                background: #fff;
                color: #dc3545;
                border: 1.5px solid #dc3545;
                margin-top: 10px;
            }

            .clear-filter:hover {
                background: #dc3545;
                color: #fff;
                box-shadow: 0 4px 12px rgba(220, 53, 69, 0.2);
                transform: translateY(-1px);
            }

            /* Close button */
            .filter-close {
                position: absolute;
                top: 20px;
                right: 20px;
                background: none;
                border: none;
                font-size: 20px;
                color: #2c3e50;
                cursor: pointer;
                padding: 5px;
                z-index: 1001;
                transition: all 0.2s ease;
            }

            .filter-close:hover {
                color: #00B6F3;
                transform: scale(1.1);
            }

            /* Overlay */
            .filter-overlay {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(0, 0, 0, 0.5);
                opacity: 0;
                visibility: hidden;
                transition: all 0.3s ease;
                z-index: 998;
            }
            .filter-toggle-btn {
                /* Giữ nguyên các thuộc tính khác */
                transition: all 0.3s ease, transform 0.3s ease;
            }

            .filter-toggle-btn.hidden {
                transform: translateX(-100%);
                opacity: 0;
            }

            .filter-overlay.active {
                opacity: 1;
                visibility: visible;
            }

            /* Scrollbar */
            .filter-wrapper::-webkit-scrollbar {
                width: 6px;
            }

            .filter-wrapper::-webkit-scrollbar-track {
                background: #f1f1f1;
            }

            .filter-wrapper::-webkit-scrollbar-thumb {
                background: #00B6F3;
                border-radius: 3px;
            }

            /* Animations */
            @keyframes slideIn {
                from {
                    left: -320px;
                    opacity: 0;
                }
                to {
                    left: 0;
                    opacity: 1;
                }
            }

            @keyframes slideOut {
                from {
                    left: 0;
                    opacity: 1;
                }
                to {
                    left: -320px;
                    opacity: 0;
                }
            }

            .filter-wrapper.sliding-in {
                animation: slideIn 0.3s ease forwards;
            }

            .filter-wrapper.sliding-out {
                animation: slideOut 0.3s ease forwards;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid">      
            <div class="container py-3">
                <button class="filter-toggle-btn" id="filterToggleBtn">
                    <i class="fas fa-filter"></i>
                    <span>Bộ lọc</span>
                </button>
                <div class="filter-wrapper" id="filterWrapper">
                    <form action="filter-hotels" method="GET" id="filterForm">
                        <div class="filter-section">
                            <h3 class="filter-title">Bộ lọc tìm kiếm</h3>

                            <!-- Star Rating Filter -->
                            <div class="filter-group">
                                <label class="filter-label">Hạng sao</label>
                                <div class="filter-checkbox">
                                    <input type="checkbox" name="star" value="5" id="star5">
                                    <label for="star5">5 sao</label>
                                </div>
                                <div class="filter-checkbox">
                                    <input type="checkbox" name="star" value="4" id="star4">
                                    <label for="star4">4 sao</label>
                                </div>
                                <div class="filter-checkbox">
                                    <input type="checkbox" name="star" value="3" id="star3">
                                    <label for="star3">3 sao</label>
                                </div>
                                <div class="filter-checkbox">
                                    <input type="checkbox" name="star" value="2" id="star2">
                                    <label for="star2">2 sao</label>
                                </div>
                                <div class="filter-checkbox">
                                    <input type="checkbox" name="star" value="1" id="star1">
                                    <label for="star1">1 sao</label>
                                </div>
                            </div>

                            <!-- Location Filter -->
                            <div class="filter-group">
                                <label class="filter-label">Địa điểm</label>
                                <select name="city" class="filter-select" id="city">
                                    <option value="">Chọn tỉnh thành</option>
                                </select>

                                <select name="district" class="filter-select" id="district">
                                    <option value="">Chọn quận huyện</option>
                                </select>

                                <select name="ward" class="filter-select" id="ward">
                                    <option value="">Chọn phường xã</option>
                                </select>
                            </div>

                            <!-- Hotel Type Filter -->
                            <div class="filter-group">
                                <label class="filter-label">Loại khách sạn</label>
                                <select name="type" class="filter-select">
                                    <option value="">Tất cả</option>
                                    <option value="Khách sạn">Khách sạn</option>
                                    <option value="Villa">Villa</option>
                                    <option value="Căn hộ">Căn hộ</option>
                                    <option value="Nhà nghỉ">Nhà nghỉ</option>
                                    <option value="Resort">Resort</option>
                                    <option value="Nhà trọ">Nhà trọ</option>
                                </select>
                            </div>

                            <!-- Amenities Filter -->
                            <div class="filter-group">
                                <label class="filter-label">Tiện nghi</label>
                                <c:forEach items="${servicesList}" var="service">
                                    <div class="filter-checkbox">
                                        <input type="checkbox" name="services" value="${service.service_id}" id="service_${service.service_id}">
                                        <label for="service_${service.service_id}">${service.service_name}</label>
                                    </div>
                                </c:forEach>
                            </div>

                            <button type="submit" class="filter-button">Áp dụng</button>
                            <button type="reset" class="filter-button clear-filter" id="clearFilter">Xóa bộ lọc</button>
                        </div>
                    </form>
                </div>
                <div class="row">
                    <h2 class="heading-home"><span>Tất cả khách sạn</span></h2>
                    <div class="row" id="all-hotel">
                        <c:forEach items="${listH}" var="hotel">
                            <c:set var="address" value="${fn:trim(hotel.hotel_street)}${not empty hotel.hotel_ward ? ', '.concat(hotel.hotel_ward) : ''}${not empty hotel.hotel_district ? ', '.concat(hotel.hotel_district) : ''}${not empty hotel.hotel_city ? ', '.concat(hotel.hotel_city) : ''}" />
                            <div class="col-sm-3">
                                <div class="hotel">
                                    <div class="img">
                                        <a href="hotel-details?id=${hotel.hotel_id}">
                                            <img src="${hotel.hotel_imagesGeneral}" alt="${hotel.hotel_name}">
                                        </a>
                                    </div>
                                    <div class="info">
                                        <h3 class="title"><a href="hotel-details?id=${hotel.hotel_id}">${hotel.hotel_name}</a></h3>
                                        <span class="map">
                                            <a href="search?index=1&search=${hotel.hotel_city}">${hotel.hotel_city}</a> • 
                                            <a href="#" class="show_map" data-hotel-address="${address}" data-toggle="modal" data-target="#myModal">Bản đồ</a>
                                        </span><br>
                                        <span class="stars">
                                            <c:forEach begin="1" end="${hotel.hotel_star}">
                                                <img alt="" src="images/star.png">
                                            </c:forEach>
                                        </span><br>
                                        <span class="address">
                                            <em>
                                                <c:if test="${not empty hotel.hotel_street}">${hotel.hotel_street}</c:if>
                                                <c:if test="${not empty hotel.hotel_ward}">, ${hotel.hotel_ward}</c:if>
                                                <c:if test="${not empty hotel.hotel_district}">, ${hotel.hotel_district}</c:if>
                                                <c:if test="${not empty hotel.hotel_city}">, ${hotel.hotel_city}</c:if>
                                                </em>
                                            </span>
                                            <a class="readmore" title="Chi tiết" href="hotel-details?id=${hotel.hotel_id}">Chi tiết</a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <!-- Modal hiển thị bản đồ -->
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="myModalLabel">Map Display</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div id="map" style="height: 400px;"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Xử lý phân trang -->
                    <div class="pages" id="pagination">
                        <ul class="pagination">
                            <li>
                                <a href="${pageContext.request.contextPath}/${source}?index=1" class="pagination-item nav-button ${tag == 1 ? 'disabled' : ''}" id="firstPage">
                                    <i class="fa fa-angle-double-left"></i> Đầu
                                </a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/${source}?index=${tag-1}" class="pagination-item nav-button ${tag == 1 ? 'disabled' : ''}" id="prevPage">
                                    <i class="fa fa-angle-left"></i> Trước
                                </a>
                            </li>
                            <c:forEach begin="1" end="${endP}" var="i">
                                <li>
                                    <a href="${pageContext.request.contextPath}/${source}?index=${i}" class="pagination-item ${tag == i ? 'active' : ''}">${i}</a>
                                </li>
                            </c:forEach>
                            <li>
                                <a href="${pageContext.request.contextPath}/${source}?index=${tag+1}" class="pagination-item nav-button ${tag == endP ? 'disabled' : ''}" id="nextPage">
                                    Sau <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/${source}?index=${endP}" class="pagination-item nav-button ${tag == endP ? 'disabled' : ''}" id="lastPage">
                                    Cuối <i class="fa fa-angle-double-right"></i>
                                </a>
                            </li>
                        </ul>
                    </div>

                    <!-- JavaScript -->
                    <script>
                        var map;

                        function initMap(lat, lon, address) {
                            if (map) {
                                map.remove();
                            }
                            map = L.map('map').setView([lat, lon], 15);
                            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                                attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
                            }).addTo(map);
                            L.marker([lat, lon]).addTo(map).bindPopup(address).openPopup();
                        }

                        function geocodeAddress(address) {
                            var apiUrl = "https://nominatim.openstreetmap.org/search?format=json&q=" + encodeURIComponent(address);
                            fetch(apiUrl)
                                    .then(function (response) {
                                        return response.json();
                                    })
                                    .then(function (data) {
                                        if (data.length > 0) {
                                            var location = data[0];
                                            var lat = parseFloat(location.lat);
                                            var lon = parseFloat(location.lon);
                                            initMap(lat, lon, address);
                                        } else {
                                            alert("Không tìm thấy kết quả cho địa chỉ đã nhập.");
                                        }
                                    })
                                    .catch(function (error) {
                                        console.error("Lỗi:", error);
                                    });
                        }

                        document.addEventListener('DOMContentLoaded', function () {
                            $('.show_map').on('click', function () {
                                var address = $(this).data('hotel-address');
                                geocodeAddress(address);
                            });

                            $('#myModal').on('shown.bs.modal', function () {
                                setTimeout(function () {
                                    if (map) {
                                        map.invalidateSize();
                                    }
                                }, 100);
                            });

                            // Xử lý phân trang
                            const paginationItems = document.querySelectorAll('.pagination-item');
                            const currentPage = ${tag};
                            const totalPages = ${endP};

                            if (currentPage === 1) {
                                document.getElementById('firstPage').classList.add('disabled');
                                document.getElementById('prevPage').classList.add('disabled');
                            }

                            if (currentPage === totalPages) {
                                document.getElementById('nextPage').classList.add('disabled');
                                document.getElementById('lastPage').classList.add('disabled');
                            }

                            paginationItems.forEach(item => {
                                if (parseInt(item.textContent) === currentPage) {
                                    item.classList.add('active');
                                }
                            });
                        });
                        document.addEventListener('DOMContentLoaded', function () {
                            const filterToggleBtn = document.getElementById('filterToggleBtn');
                            const filterWrapper = document.getElementById('filterWrapper');
                            const body = document.body;

                            const overlay = document.createElement('div');
                            overlay.className = 'filter-overlay';
                            body.appendChild(overlay);


                            const closeBtn = document.createElement('button');
                            closeBtn.className = 'filter-close';
                            closeBtn.innerHTML = '<i class="fas fa-times"></i>';
                            filterWrapper.appendChild(closeBtn);


                            function toggleFilter() {
                                filterWrapper.classList.toggle('active');
                                overlay.classList.toggle('active');
                                filterToggleBtn.classList.toggle('hidden');

                                if (filterWrapper.classList.contains('active')) {
                                    body.style.overflow = 'hidden';
                                    filterWrapper.classList.add('sliding-in');
                                    filterWrapper.classList.remove('sliding-out');
                                } else {
                                    body.style.overflow = '';
                                    filterWrapper.classList.add('sliding-out');
                                    filterWrapper.classList.remove('sliding-in');
                                    setTimeout(() => {
                                        filterToggleBtn.classList.remove('hidden');
                                    }, 300);
                                }
                            }

                            filterToggleBtn.addEventListener('click', toggleFilter);
                            closeBtn.addEventListener('click', toggleFilter);
                            overlay.addEventListener('click', toggleFilter);
                            document.addEventListener('keydown', function (e) {
                                if (e.key === 'Escape' && filterWrapper.classList.contains('active')) {
                                    toggleFilter();
                                }
                            });
                            filterWrapper.addEventListener('click', function (e) {
                                e.stopPropagation();
                            });
                        });

                        //api thành phố

                        const API_URL = "https://raw.githubusercontent.com/kenzouno1/DiaGioiHanhChinhVN/master/data.json";

                        const citis = document.getElementById("city");
                        const districts = document.getElementById("district");
                        const wards = document.getElementById("ward");

                        async function loadLocationData() {
                            try {
                                console.log('Fetching location data...');
                                const response = await fetch(API_URL);

                                if (!response.ok) {
                                    throw new Error(`HTTP error! status: ${response.status}`);
                                }

                                const data = await response.json();
                                console.log('Data received:', data);

                                if (!Array.isArray(data)) {
                                    throw new Error('Invalid data format received');
                                }

                                renderCities(data);
                            } catch (error) {
                                console.error('Error loading location data:', error);
                                // Show error to user
                                citis.innerHTML = '<option value="">Error loading data</option>';
                            }
                        }

                        function renderCities(data) {
                            try {
                                console.log('Rendering cities...');
                                // Reset selections
                                citis.innerHTML = '<option value="">Chọn tỉnh thành</option>';
                                districts.innerHTML = '<option value="">Chọn quận huyện</option>';
                                wards.innerHTML = '<option value="">Chọn phường xã</option>';

                                data.forEach(city => {
                                    const option = document.createElement('option');
                                    option.value = city.Id;
                                    option.textContent = city.Name;
                                    citis.appendChild(option);
                                });


                                citis.addEventListener('change', function () {
                                    console.log('City selected:', this.value);
                                    districts.innerHTML = '<option value="">Chọn quận huyện</option>';
                                    wards.innerHTML = '<option value="">Chọn phường xã</option>';

                                    if (this.value) {
                                        const selectedCity = data.find(city => city.Id === this.value);
                                        if (selectedCity && selectedCity.Districts) {
                                            selectedCity.Districts.forEach(district => {
                                                const option = document.createElement('option');
                                                option.value = district.Id;
                                                option.textContent = district.Name;
                                                districts.appendChild(option);
                                            });
                                        }
                                    }
                                });

                                districts.addEventListener('change', function () {
                                    console.log('District selected:', this.value);
                                    wards.innerHTML = '<option value="">Chọn phường xã</option>';

                                    if (this.value && citis.value) {
                                        const selectedCity = data.find(city => city.Id === citis.value);
                                        if (selectedCity) {
                                            const selectedDistrict = selectedCity.Districts.find(district => district.Id === this.value);
                                            if (selectedDistrict && selectedDistrict.Wards) {
                                                selectedDistrict.Wards.forEach(ward => {
                                                    const option = document.createElement('option');
                                                    option.value = ward.Id;
                                                    option.textContent = ward.Name;
                                                    wards.appendChild(option);
                                                });
                                            }
                                        }
                                    }
                                });

                            } catch (error) {
                                console.error('Error rendering cities:', error);
                            }
                        }
                        document.addEventListener('DOMContentLoaded', () => {
                            console.log('DOM loaded, initializing location data...');
                            loadLocationData();
                        });

                        document.getElementById('clearFilter')?.addEventListener('click', function (e) {
                            e.preventDefault();
                            document.getElementById('filterForm').reset();
                            districts.innerHTML = '<option value="">Chọn quận huyện</option>';
                            wards.innerHTML = '<option value="">Chọn phường xã</option>';
                        });
                    </script>
                </div>
            </div>
        </div>
    </body>
</html>