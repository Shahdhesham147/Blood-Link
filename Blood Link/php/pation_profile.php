<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "4";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("فشل الاتصال بقاعدة البيانات: " . $conn->connect_error);
}


$national_id = $_GET['national_id'] ?? '';


$sql = "SELECT * FROM patients WHERE national_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $national_id);
$stmt->execute();
$result = $stmt->get_result();

$patient = null;
if ($result->num_rows > 0) {
 
    $patient = $result->fetch_assoc();
}

$stmt->close();
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>الصفحة الشخصية للمريض</title>
    <link rel="stylesheet" href="../css/Patient's profile page.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
</head>
<body>
    <div class="bg"></div>
    <img src="../img/Red and White Modern Blood Donor Illustration Charity  Logo/2.png" alt="">

    <div class="profile">
        <i class="fa-regular fa-user "></i>
        <h3 class="icon">الصفحه الشخصيه للمريض</h3>
    </div>

    <div class="navbar">
        <div class="menu">
               <a href="../php/HomePage.php" class="z">الصفحه الرئيسيه</a>
      <a href="../php/contact number.php" class="z">ارقام التواصل</a>
      <a href="../php/messages.php" class="z">الرسائل</a>
              
        </div>
    </div>

    <form class="profile-form">
        <div class="form1">
            <div class="x">
                <input type="text" value="<?= $patient['first_name'] ?? '' ?>" readonly />
                <label for="name">الاسم الاول</label>
            </div>
            <div class="x">
                <input type="text" value="<?= $patient['last_name'] ?? '' ?>" readonly />
                <label for="email">الاسم التاني</label>
            </div>
           
            <div class="x">
                <input type="text" value="<?= $patient['blood_type'] ?? '' ?>" readonly />
                <label for="text">فصيله الدم</label>
            </div>
        </div>

        <div class="form2">
          
            <div class="x">
                <input type="date" value="<?= $patient['dob'] ?? '' ?>" readonly />
                <label for="email">تاريخ الميلاد</label>
            </div>
            <div class="x">
                <input type="text" value="<?= $patient['address'] ?? '' ?>" readonly />
                <label for="text">العنوان</label>
            </div>
            <div class="x">
                <input type="text" value="<?= $patient['national_id'] ?? '' ?>" readonly />
                <label for="text">الرقم القومي</label>
            </div>
        </div>

    </form>
</body>
</html>
