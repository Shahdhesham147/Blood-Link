<?php
$host = "localhost";
$user = "root";
$password = "";
$database = "4";

$conn = new mysqli($host, $user, $password, $database);
if ($conn->connect_error) {
    die("فشل الاتصال: " . $conn->connect_error);
}

$message = "";
$message_type = "";
$current_id = "";
$current_address = "";
$current_nearest = "";
$current_hospital = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $national_id      = $_POST['id'];
    $address          = $_POST['location'];
    $nearest_location = $_POST['nearest'];
    $hospital_name    = $_POST['hospital_name'];

    $check_sql  = "SELECT * FROM donor WHERE national_id = ?";
    $check_stmt = $conn->prepare($check_sql);
    $check_stmt->bind_param("s", $national_id);
    $check_stmt->execute();
    $result     = $check_stmt->get_result();

    if ($result->num_rows > 0) {
        $update_sql  = "UPDATE donor 
                        SET address = ?, nearest_location = ?, hospital_name = ?
                        WHERE national_id = ?";
        $update_stmt = $conn->prepare($update_sql);
        $update_stmt->bind_param("ssss", $address, $nearest_location, $hospital_name, $national_id);

        if ($update_stmt->execute()) {
            $message         = "✅ تم تحديث البيانات بنجاح!";
            $message_type    = "success";
            $current_id      = $national_id;
            $current_address = $address;
            $current_nearest = $nearest_location;
            $current_hospital= $hospital_name;
        } else {
            $message      = "❌ حدث خطأ أثناء تحديث البيانات!";
            $message_type = "error";
        }
        $update_stmt->close();
    } else {
        $message      = "❌ لم يتم العثور على هذا الرقم القومي!";
        $message_type = "error";
    }
    header("Location: ../php/Donor_profile.php?national_id=" . $national_id);


    $check_stmt->close();
}
?>
<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <title>صفحة المتبرع</title>
    <link href="bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/donor.css" />
</head>
<body>

<div class="pation">
    <img src="../img/Red and White Modern Blood Donor Illustration Charity  Logo/2.png" alt="Logo">
    <div class="navbar">
        <div class="menu">
     <a href="../php/HomePage.php" class="z">الصفحه الرئيسيه</a>
      <a href="../php/contact number.php" class="z">ارقام التواصل</a>
      <a href="../php/messages.php" class="z">الرسائل</a>
              <a href="../php/gift.php"class="z" >الهدايا</a>
        </div>
    </div>
</div>

<div class="info">
    <div class="info-co">
        <div class="form">

<h1>تسجيل الدخول لمتبرع</h1>

            <?php if (!empty($message)): ?>
                <div style="color: <?= $message_type === 'success' ? 'green' : 'red' ?>;">
                    <?= $message ?>
                </div>
            <?php endif; ?>

            <form method="POST">
                <input type="text" id="id" name="id" placeholder=": الرقم القومي" required 
                       value="<?= htmlspecialchars($current_id) ?>" />

                <div class="location">
                    <input type="text" name="nearest" placeholder="اقرب مكان" class="location_1" required 
                           value="<?= htmlspecialchars($current_nearest) ?>">

                    <select id="location" name="location" class="location_2" required>
                        <option disabled <?= $current_address == "" ? 'selected' : '' ?>>العنوان</option>
                        <option value="القاهرة"   <?= $current_address == "القاهرة"   ? "selected" : "" ?>>القاهرة</option>
                        <option value="المنوفية"  <?= $current_address == "المنوفية"  ? "selected" : "" ?>>المنوفية</option>
                        <option value="القليوبية" <?= $current_address == "القليوبية" ? "selected" : "" ?>>القليوبية</option>
                        <option value="الدقهلية"  <?= $current_address == "الدقهلية"  ? "selected" : "" ?>>الدقهلية</option>
                        <option value="المنصورة"  <?= $current_address == "المنصورة"  ? "selected" : "" ?>>المنصورة</option>
                        <option value="الأقصر"    <?= $current_address == "الأقصر"    ? "selected" : "" ?>>الأقصر</option>
                    </select>
                </div>

          <input list="blood_options" name="blood_type" placeholder="فصيلة الدم" required>
      <datalist id="blood_options">
        <option value="O+">
        <option value="O-">
        <option value="A+">
        <option value="A-">
        <option value="B+">
        <option value="B-">
        <option value="AB+">
        <option value="AB-">
      </datalist>

                <button type="submit" id="btn">تسجيل الطلب </button>
            </form>
        </div>
    </div>
</div>
<div class="map">
    <h3 class="Map">لمعرفه اقرب بنك دم لتبرع</h3>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13816.769241319986!2d31.238928282617195!3d30.03134019999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14584732119e2793%3A0x453fe76754c0176c!2z2YXYs9iq2LTZgdmJINin2YTZgti12LEg2KfZhNi52YrZhtmK!5e0!3m2!1sar!2seg!4v1724165697648!5m2!1sar!2seg" 
        width="600"height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>

<script>
document.getElementById("location").addEventListener("change", function () {
    const selectedLocation = this.value;
    const nearestPlaceInput = document.querySelector(".location_1");

    let nearestPlace = "غير متوفر";
    let hospitalName = "";

    switch (selectedLocation) {
        case "القاهرة":
            nearestPlace = "مستشفى قصر العيني";
            hospitalName = "مستشفى قصر العيني";
            break;
        case "المنوفية":
            nearestPlace = "مستشفى شبين الكوم";
            hospitalName = "مستشفى شبين الكوم";
            break;
        case "القليوبية":
            nearestPlace = "مستشفى بنها التعليمي";
            hospitalName = "مستشفى بنها التعليمي";
            break;
        case "الدقهلية":
            nearestPlace = "مستشفى الطوارئ بالمنصورة";
            hospitalName = "مستشفى الطوارئ بالمنصورة";
            break;
        case "المنصورة":
            nearestPlace = "مستشفى الجامعة";
            hospitalName = "مستشفى الجامعة";
            break;
        case "الأقصر":
            nearestPlace = "مستشفى الأقصر الدولي";
            hospitalName = "مستشفى الأقصر الدولي";
            break;
    }

    nearestPlaceInput.value = nearestPlace;
    document.querySelector('input[name="hospital_name"]').value = hospitalName;
});
</script>

</body>
</html>
