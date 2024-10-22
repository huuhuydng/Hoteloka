<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cập nhật ảnh chi tiết khách sạn</title>
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
            transition: box-shadow 0.3s ease;
        }

        .container:hover {
            transform: scale(1.02);
                transition: transform 0.3s ease;
        }

        h1 {
            text-align: center;
            font-size: 24px;
            color: #34AF6D;
            margin-bottom: 30px;
            font-weight: 600;
        }

        .image-input-container {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }

        .image-input {
            flex-grow: 1;
            padding: 10px;
            border: 1px solid #dcdcdc;
            border-radius: 8px;
            font-size: 14px;
            font-family: 'Poppins', sans-serif;
            transition: border-color 0.3s ease;
        }

        .image-input:hover, .image-input:focus {
            border-color: #34AF6D;
        }

        .remove-btn {
            background-color: transparent;
            color: #ff4d4d;
            border: none;
            font-size: 24px;
            cursor: pointer;
            margin-left: 10px;
            transition: color 0.3s ease;
        }

        .remove-btn:hover {
            color: #ff1a1a;
        }

        #addImageBtn {
            background-color: transparent;
            color: #34AF6D;
            border: none;
            font-size: 24px;
            cursor: pointer;
            margin-bottom: 20px;
            transition: color 0.3s ease;
        }

        #addImageBtn:hover {
            color: #2a8d58;
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
    </style>
</head>
<body>
    <div class="container">
        <div class="back-icon">
            <a href="javascript:history.back()">
                <i class='bx bx-arrow-back'></i>
            </a>
        </div>
        <h1>CHỈNH SỬA ẢNH CHI TIẾT KHÁCH SẠN</h1>
        <form id="updateForm" action="updateimagesdetail" method="post">
            <div id="imageInputs"></div>
            <button type="button" id="addImageBtn"><i class='bx bx-plus-circle'></i></button>
            <input type="hidden" name="hotelId" value="${sessionScope.hotel.hotel_id}">
            <input type="hidden" id="hotel_imagesDetailU" name="hotel_imagesDetailU">
            <button type="submit" id="submitBtn">Cập nhật</button>
        </form>
    </div>

    <script>
        const imageInputs = document.getElementById('imageInputs');
        const addImageBtn = document.getElementById('addImageBtn');
        const updateForm = document.getElementById('updateForm');
        const hotel_imagesDetailU = document.getElementById('hotel_imagesDetailU');

        const existingImages = [
            <c:forEach items="${sessionScope.hotel.imagesDetail}" var="image" varStatus="status">
                "${image}"<c:if test="${!status.last}">,</c:if>
            </c:forEach>
        ];

        if (existingImages.length > 0) {
            existingImages.forEach(image => {
                if (image.trim()) {
                    addImageInput(image.trim());
                }
            });
        } else {
            addImageInput();
        }

        addImageBtn.addEventListener('click', () => addImageInput());

        updateForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const images = Array.from(document.querySelectorAll('.image-input'))
                                .map(input => input.value.trim())
                                .filter(value => value !== '');
            hotel_imagesDetailU.value = images.join(',');
            updateForm.submit();
        });

        function addImageInput(value = '') {
            const container = document.createElement('div');
            container.className = 'image-input-container';

            const input = document.createElement('input');
            input.type = 'url';
            input.className = 'image-input';
            input.value = value;
            input.placeholder = 'Nhập URL ảnh';
            input.required = true;

            const removeBtn = document.createElement('button');
            removeBtn.type = 'button';
            removeBtn.className = 'remove-btn';
            removeBtn.innerHTML = '<i class="bx bx-trash"></i>';
            removeBtn.onclick = () => container.remove();

            container.appendChild(input);
            container.appendChild(removeBtn);
            imageInputs.appendChild(container);
        }
    </script>
</body>
</html>