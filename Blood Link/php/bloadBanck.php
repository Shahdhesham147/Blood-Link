<?php
session_start();

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "4"; 

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("فشل الاتصال: " . $conn->connect_error);
}

$blood_bank_id = $_POST['blood_bank_id'] ?? '';

if (empty($blood_bank_id)) {
    die("يرجى إدخال معرف بنك الدم.");
}

$sql = "SELECT * FROM bloodbanks WHERE bloodbank_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $blood_bank_id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows === 1) {
    $bank = $result->fetch_assoc();

    $_SESSION['blood_bank_id'] = $bank['bloodbank_id'];
    $_SESSION['name'] = $bank['name'];
    $_SESSION['address'] = $bank['address'];
    $_SESSION['blood_quantity'] = $bank['blood_quantity'];
    $_SESSION['phone'] = $bank['phone'];
    $_SESSION['promotions'] = $bank['promotions'];
    $_SESSION['feedback'] = $bank['feedback'];
    $_SESSION['license_number'] = $bank['license_number'];
    $_SESSION['hospital_id'] = $bank['hospital_id'];
    $_SESSION['blood_bags_needed'] = $bank['blood_bags_needed'];

    header("Location: blood_banck_profile.php");
    exit();
} else {
    echo "معرف بنك الدم غير صحيح أو غير مسجل.";
}

$stmt->close();
$conn->close();
?>
