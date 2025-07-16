<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "4";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("فشل الاتصال بقاعدة البيانات: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
   
    $national_id = $get['national_id'] ?? '';
    $nearest_location = $get['nearest_location'] ?? '';
    $location = $get['location'] ?? '';
    $price = $get['price'] ?? '';
    $quantity = $get['quantity'] ?? '';
    $reason = $get['reason'] ?? '';


    if (!empty($national_id) && !empty($nearest_location) && !empty($location) && !empty($quantity) && !empty($reason)) {

   
        $stmt = $conn->prepare("INSERT INTO patients (national_id, nearest_location, address, price, quantity, reason) VALUES (?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("ssssss", $national_id, $nearest_location, $location, $price, $quantity, $reason);

        if ($stmt->execute()) {
            echo "✅ تم حفظ البيانات بنجاح.";
        } else {
            echo "❌ خطأ في إدخال البيانات: " . $stmt->error;
        }

        $stmt->close();
    } else {
        echo "⚠️ يرجى ملء جميع الحقول المطلوبة.";
    }
}

$conn->close();
?>

</body>
</html>