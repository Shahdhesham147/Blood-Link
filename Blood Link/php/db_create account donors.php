<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "4";


$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("فشل الاتصال بقاعدة البيانات: " . $conn->connect_error);
}


if ($_SERVER["REQUEST_METHOD"] === "POST") {

    $first_name     = $_POST["first_name"] ?? '';
    $last_name      = $_POST["last_name"] ?? '';
    $phone          = $_POST["phone"] ?? '';
    $email          = $_POST["email"] ?? '';
    $national_id    = $_POST["national_id"] ?? '';
    $password       = $_POST["password"] ?? '';
    $dob            = $_POST["dob"] ?? '';
    $gender         = $_POST["gender"] ?? '';
    $blood_type     = $_POST["blood_type"] ?? '';


    if (!empty($first_name) && !empty($last_name) && !empty($phone) && !empty($email) && !empty($national_id) && !empty($password)) {


        $check = $conn->prepare("SELECT * FROM patients WHERE national_id = ?");
        $check->bind_param("s", $national_id);
        $check->execute();
        $result = $check->get_result();

        if ($result->num_rows > 0) {
            echo "⚠️ هذا المستخدم مسجل بالفعل.";
        } else {

            $stmt = $conn->prepare("
                INSERT INTO donor (first_name, last_name, phone_number, blood_type, birth_date, address, password, national_id)
                VALUES (?, ?, ?, ?, ?, ?, ?, ?)
            ");

            $address = "غير محدد حالياً"; // أو اجعله من النموذج إذا أردت
            $stmt->bind_param("ssssssss", $first_name, $last_name, $phone, $blood_type, $dob, $address, $password, $national_id);

            if ($stmt->execute()) {
                echo "✅ تم إنشاء الحساب وتسجيل البيانات بنجاح.";
            } else {
                echo "❌ خطأ في التسجيل: " . $stmt->error;
            }

            $stmt->close();
        }

        $check->close();
    } else {
        echo "❌ يرجى تعبئة جميع الحقول المطلوبة.";
    }
}

$conn->close();
?>

</body>
</html>