<?php
session_start();

if (!isset($_SESSION['blood_bank_id'])) {
    header("Location: your_login_page.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>صفحة بنك الدم</title>
    <link rel="stylesheet" href="../css/bloodBank.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
    <div class="bg"></div>
    <img src="../img/Red and White Modern Blood Donor Illustration Charity  Logo/2.png" alt="">
    <div class="profile">
        <i class="fa-regular fa-user"></i>
        <h3 class="icon">صفحة بنك الدم</h3>
    </div>-
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
                <input type="text" value="<?php echo htmlspecialchars($_SESSION['name']); ?>" readonly />
                <label>اسم بنك الدم</label>
            </div>
            <div class="x">
                <input type="text" value="<?php echo htmlspecialchars($_SESSION['blood_bank_id']); ?>" readonly />
                <label>رقم بنك الدم</label>
            </div>
            <div class="x">
                <input type="text" value="<?php echo htmlspecialchars($_SESSION['hospital_id']); ?>" readonly />
                <label>المستشفى</label>
            </div>
            <div class="x">
                <input type="text" value="<?php echo htmlspecialchars($_SESSION['blood_quantity']); ?>" readonly />
                <label>عدد أكياس الدم المتوفرة</label>
            </div>
            <div class="x">
                <input type="text" value="<?php echo htmlspecialchars($_SESSION['license_number']); ?>" readonly />
                <label>الرخصة</label>
            </div>
        </div>
        <div class="form2">
            <div class="x">
                <input type="text" value="<?php echo htmlspecialchars($_SESSION['promotions']); ?>" readonly />
                <label>العروض / الفصائل المتوفرة</label>
            </div>
            <div class="x">
                <input type="text" value="<?php echo htmlspecialchars($_SESSION['address']); ?>" readonly />
                <label>العنوان</label>
            </div>
            <div class="x">
                <input type="text" value="<?php echo htmlspecialchars($_SESSION['blood_bags_needed']); ?>" readonly />
                <label>عدد أكياس الدم المطلوبة</label>
            </div>
            <div class="x">
                <input type="text" value="<?php echo htmlspecialchars($_SESSION['phone']); ?>" readonly />
                <label>رقم الهاتف</label>
            </div>
        </div>
    </form>
</body>
</html>
