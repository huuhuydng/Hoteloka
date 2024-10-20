<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/10.0.0/swiper-bundle.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/10.0.0/swiper-bundle.min.js"></script>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Leaflet CSS and JS for the Map -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
    <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>

    <title>Search Results</title>

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
                <h2 class="heading-home"><span>Khách sạn bạn tìm thấy</span></h2>
                <div class="row" id="all-hotel">
                    <c:forEach items="${listSearch}" var="hotel">
                        <div class="col-sm-3">
                            <div class="hotel">
                                <div class="img">
                                    <a href="hotel-details?id=${hotel.hotel_id}">
                                        <img src="${hotel.hotel_imagesGeneral}" alt="${hotel.hotel_name}">
                                    </a>
                                </div>
                                <div class="info">
                                    <h3 class="title">
                                        <a href="hotel-details?id=${hotel.hotel_id}">${hotel.hotel_name}</a>
                                    </h3>
                                    <span class="map">
                                        <a href="hotels?city=${hotel.hotel_city}">${hotel.hotel_city}</a> • 
                                        <a href="#" class="show_map_search" data-hotel-address="${hotel.hotel_street}, ${hotel.hotel_city}" data-toggle="modal" data-target="#myModalSearch">Bản đồ</a>
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

                <!-- Pagination Handling -->
                <c:if test="${endPage > 0}">
                    <div class="pages" id="pagination">
                        <ul class="pagination">
                            <li>
                                <a href="${pageContext.request.contextPath}/${source}?index=1&search=${search}" class="pagination-item nav-button ${tag == 1 ? 'disabled' : ''}" id="firstPage">
                                    <i class="fa fa-angle-double-left"></i> Đầu
                                </a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/${source}?index=${tag-1}&search=${search}" class="pagination-item nav-button ${tag == 1 ? 'disabled' : ''}" id="prevPage">
                                    <i class="fa fa-angle-left"></i> Trước
                                </a>
                            </li>
                            <c:forEach begin="1" end="${endPage}" var="i">
                                <li>
                                    <a href="${pageContext.request.contextPath}/${source}?index=${i}&search=${search}" class="pagination-item ${tag == i ? 'active' : ''}">
                                        ${i}
                                    </a>
                                </li>
                            </c:forEach>
                            <li>
                                <a href="${pageContext.request.contextPath}/${source}?index=${tag+1}&search=${search}" class="pagination-item nav-button ${tag == endPage ? 'disabled' : ''}" id="nextPage">
                                    Sau <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/${source}?index=${endPage}&search=${search}" class="pagination-item nav-button ${tag == endPage ? 'disabled' : ''}" id="lastPage">
                                    Cuối <i class="fa fa-angle-double-right"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </c:if>

                <!-- Map Modal -->
                <div class="modal fade" id="myModalSearch" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="myModalLabel">Bản đồ khách sạn</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div id="map-search" style="height: 400px;"></div> 
                            </div>
                        </div>
                    </div>
                </div>

                <!-- JavaScript -->
                <script>
                    document.addEventListener('DOMContentLoaded', function () {
                        const paginationItems = document.querySelectorAll('.pagination-item');
                        const currentPage = ${tag}; 
                        const totalPages = ${endPage}; 

                        // Disable buttons if necessary
                        if (currentPage === 1) {
                            document.getElementById('firstPage').classList.add('disabled');
                            document.getElementById('prevPage').classList.add('disabled');
                        }

                        if (currentPage === totalPages) {
                            document.getElementById('nextPage').classList.add('disabled');
                            document.getElementById('lastPage').classList.add('disabled');
                        }

                        paginationItems.forEach(item => {
                            // Set the active class on the current page
                            if (parseInt(item.textContent) === currentPage) {
                                item.classList.add('active');
                            }
                        });


                        var mapSearch;

                        function initMapSearch(lat, lon,address) {
                            if (mapSearch) {
                                mapSearch.remove(); // Remove the previous map instance
                            }
                            mapSearch = L.map('map-search').setView([lat, lon], 15);
                            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                                attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
                            }).addTo(mapSearch);
                            L.marker([lat, lon]).addTo(mapSearch).bindPopup(address).openPopup();
                        }

                        function geocodeAddressSearch(address) {
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
                                        initMapSearch(lat, lon, address); 
                                    } else {
                                        alert("No results found for the provided address.");
                                    }
                                })
                                .catch(function(error) {
                                    console.error("Error:", error);
                                });
                        }

                        $('.show_map_search').on('click', function() {
                            var address = $(this).data('hotel-address'); // Get the address from the button's data attribute
                            geocodeAddressSearch(address); // Geocode the address and initialize the map
                        });

                        // When the modal is shown, make sure the map is correctly resized
                        $('#myModalSearch').on('shown.bs.modal', function() {
                            setTimeout(function() {
                                if (mapSearch) {
                                    mapSearch.invalidateSize();
                                }
                            }, 100);
                        });
                    });
                </script>
            </div>
        </div>
    </div>
</body>
</html>
