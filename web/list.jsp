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
    </style>
</head>
<body>
    <div class="container-fluid">      
        <div class="container py-3">
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
                            .then(function(response) {
                                return response.json();
                            })
                            .then(function(data) {
                                if (data.length > 0) {
                                    var location = data[0];
                                    var lat = parseFloat(location.lat);
                                    var lon = parseFloat(location.lon);
                                    initMap(lat, lon, address); 
                                } else {
                                    alert("Không tìm thấy kết quả cho địa chỉ đã nhập.");
                                }
                            })
                            .catch(function(error) {
                                console.error("Lỗi:", error);
                            });
                    }

                    document.addEventListener('DOMContentLoaded', function() {
                        $('.show_map').on('click', function() {
                            var address = $(this).data('hotel-address'); 
                            geocodeAddress(address);
                        });

                        $('#myModal').on('shown.bs.modal', function() {
                            setTimeout(function() {
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
                </script>
            </div>
        </div>
    </div>
</body>
</html>
