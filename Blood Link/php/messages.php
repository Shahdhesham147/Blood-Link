 <?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "4";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("فشل الاتصال: " . $conn->connect_error);
}

$id = isset($_GET['id']) ? intval($_GET['id']) : 0;
$sql = "SELECT * FROM messages WHERE id = $id";
$result = $conn->query($sql);
$data = $result->fetch_assoc();
?>
<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <title>الرسائل</title>
    <link rel="stylesheet" href="../css/messages.css">
</head>
<body>
    <div class="bg"></div>
    <img src="../img/Red and White Modern Blood Donor Illustration Charity  Logo/2.png" class="logo" />
    <div class="navbar">
        <div class="menu">
            <a href="../php/HomePage.php" class="z">الصفحه الرئيسيه</a>
      <a href="../php/contact number.php" class="z">ارقام التواصل</a>
      <a href="../php/messages.php" class="z">الرسائل</a>
        </div>
    </div>
    <h1>الرسائل</h1>
    <div class="line"></div>

    <?php if ($data): ?>
    <form class="messages">
        <div class="form1">
            <div class="x">
                <input type="text" value="<?= htmlspecialchars($data['name']) ?>" readonly />
                <label>الاسم</label>
            </div>
            <div class="x">
                <input type="text" value="<?= htmlspecialchars($data['blood_bank']) ?>" readonly />
                <label>اقرب بنك دم</label>
            </div>
            <div class="x">
                <input type="text" value="<?= htmlspecialchars($data['delivery_time']) ?>" readonly />
                <label>موعد التسليم</label>
            </div>
            <div class="x">
                <input type="text" value="<?= htmlspecialchars($data['price']) ?>" readonly />
                <label>السعر</label>
            </div>
            <div class="x">
                <input type="text" value="<?= htmlspecialchars($data['price']) ?>" readonly />
                <label>اقرب سياره اسعاف لتبرع</label>
            </div>
        </div>
        <div class="form2">
            <div class="x">
                <input type="text" value="<?= htmlspecialchars($data['other_info']) ?>" readonly />
                <label>الهدايا</label>
            </div>
            <div class="x">
                <input type="text" value="<?= htmlspecialchars($data['other_email']) ?>" readonly />
                <label>البريد الالكتروني الخاص بك</label>
            </div>
            <div class="x">
                <input type="text" value="<?= htmlspecialchars($data['other_phone']) ?>" readonly />
                <label>اسباب الاحتياج</label>
            </div>
        </div>
    </form>
    <?php else: ?>
        <p style="text-align: center;">لا توجد بيانات لعرضها.</p>
    <?php endif; ?>

</body>
</html>
