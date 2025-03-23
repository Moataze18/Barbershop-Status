<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>عدد الزبائن في المحل</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; padding: 50px; background-color: #f4f4f4; }
        h1 { color: #333; }
        .counter { font-size: 48px; margin: 20px; font-weight: bold; }
        .admin-panel { margin-top: 20px; }
        button { font-size: 18px; padding: 10px 20px; margin: 5px; cursor: pointer; }
    </style>
</head>
<body>

    <h1>عدد الزبائن في المحل الآن</h1>
    <div class="counter" id="count">0</div>

    <!-- لوحة تحكم الأدمن -->
    <div class="admin-panel">
        <button onclick="increase()">+1</button>
        <button onclick="decrease()">-1</button>
    </div>

    <script>
        let count = localStorage.getItem("customerCount") || 0;
        document.getElementById("count").innerText = count;

        function updateCount() {
            document.getElementById("count").innerText = count;
            localStorage.setItem("customerCount", count);
        }

        function increase() {
            count++;
            updateCount();
        }

        function decrease() {
            if (count > 0) count--;
            updateCount();
        }
    </script>

</body>
</html>
