<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

$servername = "localhost";
$username = "root"; // عدله لو فيه باسورد
$password = "";
$dbname = "blood_bank"; // تأكد من اسم قاعدة البيانات

// الاتصال بقاعدة البيانات
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die(json_encode(["error" => "فشل الاتصال بقاعدة البيانات: " . $conn->connect_error]));
}

// جلب بيانات سيارات الإسعاف
$sql = "SELECT * FROM ambulancecars";  // تأكد أن الجدول موجود
$result = $conn->query($sql);

$ambulances = [];

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $ambulances[] = $row;
    }
    echo json_encode($ambulances, JSON_PRETTY_PRINT);
} else {
    echo json_encode(["message" => "لا توجد سيارات إسعاف"]);
}

$conn->close();
?>