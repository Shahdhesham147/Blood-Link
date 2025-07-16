<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "4";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("فشل الاتصال: " . $conn->connect_error);
}

$name = $_POST['name'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$gift = $_POST['gift'];
$gift_number = $_POST['gift_number'];


$sql = "INSERT INTO messages (name, blood_bank, delivery_time, price, other_info, other_email, other_phone)
        VALUES ('$name', '---', '---', '---', '$gift', '$email', '$phone')";

if ($conn->query($sql) === TRUE) {
    $last_id = $conn->insert_id;
    header("Location: messages.php?id=$last_id"); 
    exit();
} else {
    echo "خطأ: " . $conn->error;
}
$conn->close();
?>
