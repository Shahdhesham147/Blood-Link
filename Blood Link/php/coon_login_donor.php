<?php
session_start();


$host = "localhost";
$db_user = "root";
$db_pass = "";
$db_name = "4";


$conn = new mysqli($host, $db_user, $db_pass, $db_name);


if ($conn->connect_error) {
    die("فشل الاتصال بقاعدة البيانات: " . $conn->connect_error);
}


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $national_id = $_POST['national_id'];
    $password = $_POST['password'];


    $query = "SELECT * FROM donor WHERE national_id = '$national_id' AND password = '$password'";
    $result = $conn->query($query);

    if ($result->num_rows === 1) {

        $_SESSION['national_id'] = $national_id;
        header("Location: donor.php");
        exit();
    } else {

        echo "<p style='color:red;'>الرقم القومي أو كلمة المرور خطأ.</p>";
    }
}
?>
