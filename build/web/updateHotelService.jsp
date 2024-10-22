<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cập nhật dịch vụ khách sạn</title>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <style>
            body {
  font-family: 'Poppins', sans-serif;
  background-color: #f3f4f6;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  margin: 0;
  padding: 20px;
}

.container {
  max-width: 600px;
  width: 100%;
  background-color: #fff;
  padding: 40px;
  border-radius: 12px;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
  border: 1px solid #e3e4e8;
  transition: box-shadow 0.3s ease, transform 0.3s ease;
}

.container:hover {
  transform: scale(1.02);
}

h1 {
  text-align: center;
  font-size: 24px;
  color: #34AF6D;
  margin-bottom: 30px;
  font-weight: 600;
}

.form-group {
  margin-bottom: 15px;
}

.form-control {
  width: 100%;
  padding: 10px;
  border: 1px solid #dcdcdc;
  border-radius: 8px;
  font-size: 14px;
  font-family: 'Poppins', sans-serif;
  transition: border-color 0.3s ease;
}

.form-control:hover,
.form-control:focus {
  border-color: #34AF6D;
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
  transition: color 0.3s ease;
}

.back-icon i:hover {
  color: #34AF6D;
}

#submitBtn {
  width: 100%;
  padding: 15px;
  background-color: #34AF6D;
  color: #fff;
  border: none;
  border-radius: 8px;
  font-size: 16px;
  font-weight: bold;
  cursor: pointer;
  font-family: 'Poppins', sans-serif;
  transition: background-color 0.3s ease;
}

#submitBtn:hover {
  background-color: #2a8d58;
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
            <h1>CHỈNH SỬA DỊCH VỤ KHÁCH SẠN</h1>
            <form id="updateForm" action="updatehotelservice" method="post">
                <div class="form-group"> 
                    <label for="hotel_sv">Chọn các loại dịch vụ</label> 
                    <select id="hotel_sv" name="hotel_sv[]U" multiple class="form-control">
                        <c:forEach var="service" items="${allServices}">
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
                <input type="hidden" name="hotelId" value="${sessionScope.hotel.hotel_id}">
                <button type="submit" id="submitBtn">Cập nhật</button>
            </form>
        </div>
    </body>
</html>