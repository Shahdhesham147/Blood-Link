<?php

$host = "localhost";
$user = "root";
$password = "";
$database = "4"; 

$conn = new mysqli($host, $user, $password, $database);


if ($conn->connect_error) {
    die("فشل الاتصال: " . $conn->connect_error);
}

$donor_data = null;
$message = "";
$message_type = "";


if (isset($_GET['national_id'])) {
    $national_id = $_GET['national_id'];

 
    $sql = "SELECT first_name, last_name, gender, birth_date, address, national_id, blood_type, phone_number FROM donor WHERE national_id = ?";
    $stmt = $conn->prepare($sql);

    if ($stmt === false) {
       
        die("فشل التحضير للاستعلام: " . $conn->error);
    }

    $stmt->bind_param("s", $national_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $donor_data = $result->fetch_assoc();
    } else {
        $message = "❌ لم يتم العثور على هذا الرقم القومي!";
        $message_type = "error";
    }

    $stmt->close();
}
?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>الصفحة الشخصية للمتبرع</title>
    <link rel="stylesheet" href="../css/Donor profile page.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
</head>
<body>
    <div class="bg"></div>
    <img src="../img/Red and White Modern Blood Donor Illustration Charity  Logo/2.png" alt="Logo">
    <div class="profile">
        <i class="fa-regular fa-user"></i>
        <h3 class="icon">الصفحة الشخصية للمتبرع</h3>
    </div>
    <div class="navbar">
        <div class="menu">
               <a href="../php/HomePage.php" class="z">الصفحه الرئيسيه</a>
      <a href="../php/contact number.php" class="z">ارقام التواصل</a>
      <a href="../php/messages.php" class="z">الرسائل</a>
              <a href="../php/gift.php"class="z" >الهدايا</a>
        </div>
    </div>
    <form class="profile-form">
        <div class="form1">
            <div class="x">
                <input type="text" value="<?php echo isset($donor_data['first_name']) ? $donor_data['first_name'] . ' ' . $donor_data['last_name'] : ''; ?>" readonly/>
                <label for="name">الاسم</label>
            </div>
           
            <div class="x">
                <input type="text" value="<?php echo isset($donor_data['birth_date']) ? date('d/m/Y', strtotime($donor_data['birth_date'])) : ''; ?>" readonly/>
                <label for="text">تاريخ الميلاد</label>
            </div>
            <div class="x">
                <input type="text" value="<?php echo isset($donor_data['address']) ? $donor_data['address'] : ''; ?>" readonly/>
                <label for="text">العنوان</label>
            </div>
            <div class="x">
                <input type="text" value="<?php echo isset($donor_data['national_id']) ? $donor_data['national_id'] : ''; ?>" readonly/>
                <label for="name">الرقم القومي</label>
            </div>
        </div>
        <div class="form2">
            <div class="x">
                <input type="text" value="<?php echo isset($donor_data['blood_type']) ? $donor_data['blood_type'] : ''; ?>" readonly/>
                <label for="name">فصيلة الدم</label>
            </div>
            <div class="x">
                <input type="text" value="<?php echo isset($donor_data['phone_number']) ? $donor_data['phone_number'] : ''; ?>" readonly/>
                <label for="name">رقم التليفون</label>
            </div>
        </div>
    </form>
</body>
</html>
