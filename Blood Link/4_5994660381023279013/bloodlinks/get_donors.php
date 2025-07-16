<?php
$servername = "localhost"; 
$username = "root"; 
$password = ""; 
$dbname = "blood_bank";

// إنشاء الاتصال
$conn = new mysqli($servername, $username, $password, $dbname);

// التحقق من نجاح الاتصال
if ($conn->connect_error) {
    die("فشل الاتصال: " . $conn->connect_error);
}

// تنفيذ استعلام لجلب المتبرعين
$sql = "SELECT * FROM donors";
$result = $conn->query($sql);

$donors = [];

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $donors[] = $row;
    }
}

// إرجاع البيانات بصيغة JSON
header('Content-Type: application/json');
echo json_encode($donors);

$conn->close();
?>