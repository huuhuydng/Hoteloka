<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Tính Giá Phòng</title>
</head>
<body>
    <div class="container">
        <h1>Giá Phòng</h1>
        <p class="price">Giá: <span id="price">15,000</span> VN?</p>
        <label for="quantity">S? l??ng:</label>
        <input type="number" id="quantity" value="1" min="1" onchange="calculateTotal()">
        <p class="total">T?ng giá: <span id="total">15,000</span> VN?</p>
    </div>

    <script>
        function calculateTotal() {
            const price = 15000;
            const quantity = document.getElementById('quantity').value;
            const total = price * quantity;
            document.getElementById('total').innerText = total.toLocaleString();
        }
    </script>
</body>
</html>
