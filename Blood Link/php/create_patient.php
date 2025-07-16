<?php
$host = "localhost";
$user = "root";
$pass = "";
$db = "4"; 

$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) {
    die("فشل الاتصال: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  
    $first_name  = $_POST['first_name'];
    $last_name   = $_POST['last_name'];
    $phone       = $_POST['phone'];
    $email       = $_POST['email'];
    $national_id = $_POST['national_id'];
    $password    = password_hash($_POST['password'], PASSWORD_DEFAULT);
    $dob         = $_POST['dob'];
    $gender      = $_POST['gender'];
    $blood_type  = $_POST['blood_type'];

    
    $stmt = $conn->prepare("INSERT INTO users (first_name, last_name, phone, email, national_id, password, dob, gender, blood_type)
                            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");

    if ($stmt === false) {
        die("فشل في تحضير الاستعلام: " . $conn->error);
    }


    $stmt->bind_param("sssssssss", $first_name, $last_name, $phone, $email, $national_id, $password, $dob, $gender, $blood_type);


    if ($stmt->execute()) {

        $user_id = $stmt->insert_id;


        $conn->query("INSERT INTO patients (user_id, national_id, first_name, last_name, phone_number, blood_type, birth_date, address, password)
                      VALUES ($user_id, '$national_id', '$first_name', '$last_name', '$phone', '$blood_type', '$dob', '', '$password')");

        echo "<p style='color:green;'>✅ تم التسجيل كمريض بنجاح</p>";
    } else {
        echo "<p style='color:red;'>❌ فشل في التسجيل: " . $stmt->error . "</p>";
    }


    $stmt->close();
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <title>تسجيل مريض</title>
</head>
<body>
    <h2>تسجيل مريض جديد</h2>
    
<form method="POST" action="create_patient.php">
        <input type="text" name="first_name" placeholder="الاسم الأول" required><br>
        <input type="text" name="last_name" placeholder="الاسم الأخير" required><br>
        <input type="text" name="phone" placeholder="رقم الهاتف" required><br>
        <input type="email" name="email" placeholder="البريد الإلكتروني" required><br>
        <input type="text" name="national_id" placeholder="الرقم القومي" required><br>
        <input type="password" name="password" placeholder="كلمة المرور" required><br>
        <input type="date" name="dob" required><br>
        <select name="gender" required>
            <option value="ذكر">ذكر</option>
            <option value="أنثى">أنثى</option>
        </select><br>
        <select name="blood_type" required>
            <option value="O+">O+</option>
            <option value="A+">A+</option>
            <option value="B+">B+</option>
            <option value="AB+">AB+</option>
        </select><br>

        <button type="submit">تسجيل كمريض</button>
    </form>
</body>
</html>
