<?php
$host = "localhost";
$user = "root";
$password = "";
$dbname = "4"; 

$conn = new mysqli($host, $user, $password, $dbname);
if ($conn->connect_error) {
    die("فشل الاتصال: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $full_name = $_POST['full_name'] ?? '';
    $national_id = $_POST['national_id'] ?? '';
    $password = $_POST['password'] ?? '';
    $bank_location	 = $_POST['bank_location	'] ?? '';

    if ($full_name && $national_id && $password && $location) {
        $stmt = $conn->prepare("INSERT INTO bank_admins (full_name, national_id, password, location) VALUES (?, ?, ?, ?)");

        if ($stmt) {
            $stmt->bind_param("ssss", $full_name, $national_id, $password, $location);
            if ($stmt->execute()) {
                header("Location: ../php/bload_register.php?success=1");
                exit;
            } else {
                header("Location: ../php/bload_register.php?error=1");
                exit;
            }
        } else {
            die("خطأ في تحضير الاستعلام: " . $conn->error);
        }
    } else {
        header("Location: ../php/bload_register.php?error=1");
        exit;
    }
}

$conn->close();

?>