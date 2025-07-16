<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

$servername = "localhost";
$username = "root"; // غيره لو عندك باسورد
$password = "";
$dbname = "blood_bank"; // تأكد إنه الاسم الصح

// الاتصال بقاعدة البيانات
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die(json_encode(["error" => "فشل الاتصال بقاعدة البيانات: " . $conn->connect_error]));
}

// جلب بيانات المستشفيات
$sql = "SELECT * FROM hospitals";  // تأكد أن اسم الجدول صحيح
$result = $conn->query($sql);

$hospitals = [];

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $hospitals[] = $row;
    }
    echo json_encode($hospitals, JSON_PRETTY_PRINT);
} else {
    echo json_encode(["message" => "لا يوجد مستشفيات"]);
}

$conn->close();
?>