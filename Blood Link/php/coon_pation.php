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
    
    $national_id = $_POST['national_id'] ?? '';
    $nearest_location = $_POST['nearest_location'] ?? '';
    $location = $_POST['location'] ?? '';
    $price = $_POST['price'] ?? '';
    $quantity = $_POST['quantity'] ?? '';
    $reason = $_POST['reason'] ?? '';

   
    if (!empty($national_id) && !empty($nearest_location) && !empty($location) && !empty($quantity) && !empty($reason)) {

        $checkQuery = "SELECT * FROM patients WHERE national_id = ?";
        $stmtCheck = $conn->prepare($checkQuery);
        $stmtCheck->bind_param("s", $national_id);
        $stmtCheck->execute();
        $result = $stmtCheck->get_result();

        if ($result->num_rows > 0) {
            $updateQuery = "UPDATE patients SET nearest_location = ?, address = ?, price = ?, quantity = ?, reason = ? WHERE national_id = ?";
            $stmtUpdate = $conn->prepare($updateQuery);
            $stmtUpdate->bind_param("ssssss", $nearest_location, $location, $price, $quantity, $reason, $national_id);

            if ($stmtUpdate->execute()) {
                echo "✅ تم تحديث البيانات بنجاح.";
            } else {
                echo "❌ خطأ في تحديث البيانات: " . $stmtUpdate->error;
            }

            $stmtUpdate->close();
        } else {
            $insertQuery = "INSERT INTO patients (national_id, nearest_location, address, price, quantity, reason) VALUES (?, ?, ?, ?, ?, ?)";
            $stmtInsert = $conn->prepare($insertQuery);
            $stmtInsert->bind_param("ssssss", $national_id, $nearest_location, $location, $price, $quantity, $reason);

            if ($stmtInsert->execute()) {
                echo "✅ تم حفظ البيانات بنجاح.";
            } else {
                echo "❌ خطأ في إدخال البيانات: " . $stmtInsert->error;
            }

            $stmtInsert->close();
        }

        $stmtCheck->close();
    } else {
        echo "⚠ يرجى ملء جميع الحقول المطلوبة.";
    }
}
header("Location: ../php/Pation_profile.php?national_id=" . $national_id);
exit;
?>
$conn->close();
?>
