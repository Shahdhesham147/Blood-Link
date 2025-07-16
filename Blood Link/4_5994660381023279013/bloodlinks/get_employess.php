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

// جلب بيانات الموظفين
$sql = "SELECT * FROM employees";  // تأكد أن الجدول موجود
$result = $conn->query($sql);

$employees = [];

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $employees[] = $row;
    }
    echo json_encode($employees, JSON_PRETTY_PRINT);
} else {
    echo json_encode(["message" => "لا يوجد موظفين"]);
}

$conn->close();
?>