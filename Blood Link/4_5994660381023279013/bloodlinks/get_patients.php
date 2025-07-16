<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

$servername = "localhost";
$username = "root"; // لو عامل باسورد غيره هنا
$password = "";
$dbname = "blood_bank"; // تأكد إنه اسم قاعدة البيانات الصحيح

// الاتصال بقاعدة البيانات
$conn = new mysqli($servername, $username, $password, $dbname);

// التحقق من الاتصال
if ($conn->connect_error) {
    die(json_encode(["error" => "فشل الاتصال بقاعدة البيانات: " . $conn->connect_error]));
}

// جلب بيانات المرضى المحتاجين للتبرع
$sql = "SELECT * FROM patients";  // تأكد أن اسم الجدول صحيح
$result = $conn->query($sql);

$patients = [];

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $patients[] = $row;
    }
    echo json_encode($patients, JSON_PRETTY_PRINT);
} else {
    echo json_encode(["message" => "لا يوجد مرضى محتاجين للتبرع"]);
}

$conn->close();
?>