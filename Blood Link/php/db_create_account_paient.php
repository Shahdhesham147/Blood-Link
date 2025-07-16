<?php
$host = "localhost";
$username = "root";
$password = "";
$database = "4";

$conn = new mysqli($host, $username, $password, $database);
if ($conn->connect_error) {
    die("فشل الاتصال بقاعدة البيانات: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $first_name   = $_POST['first_name'] ?? '';
    $last_name    = $_POST['last_name'] ?? '';
    $phone = $_POST['phone_number'] ?? '';
    $blood_type   = $_POST['blood_type'] ?? '';
    $birth_date   = $_POST['birth_date'] ?? '';
    $address      = $_POST['address'] ?? '';
    $national_id  = $_POST['national_id'] ?? '';
    $password     = $_POST['password'] ?? ''; 


    $stmt = $conn->prepare("INSERT INTO patients (first_name, last_name, phone_number, blood_type, birth_date, address, national_id, password) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
    
    if ($stmt) {
        $stmt->bind_param("ssssssss", $first_name, $last_name, $phone_number, $blood_type, $birth_date, $address, $national_id, $password);
        if ($stmt->execute()) {
            echo "✅ تم حفظ البيانات بنجاح.";
        } else {
            echo "❌ حدث خطأ أثناء الحفظ: " . $stmt->error;
        }
        $stmt->close();
    } else {
        echo "❌ فشل في تحضير الاستعلام: " . $conn->error;
    }
}

$conn->close();
?>

</body>
</html>