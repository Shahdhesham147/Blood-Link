<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

$servername = "localhost";
$username = "root"; // عدله إذا كان لديك باسورد
$password = "";
$dbname = "blood_bank"; // تأكد أن اسم قاعدة البيانات صحيح

// الاتصال بقاعدة البيانات
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die(json_encode(["error" => "فشل الاتصال بقاعدة البيانات: " . $conn->connect_error]));
}

// جلب بيانات بنوك الدم
$sql = "SELECT * FROM bloodbanks";  // تأكد أن اسم الجدول صحيح
$result = $conn->query($sql);

$bloodbanks = [];

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $bloodbanks[] = $row;
    }
    echo json_encode($bloodbanks, JSON_PRETTY_PRINT);
} else {
    echo json_encode(["message" => "لا يوجد بنوك دم"]);
}

$conn->close();
?>