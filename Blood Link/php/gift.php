<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <title>هدايا المتبرعين</title>
    <link rel="stylesheet" href="../css/Gifts.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <form action="../php/request_gift.php" method="POST">
</head>
<body>

    <div class="bg"></div>
    <img src="../img/Red and White Modern Blood Donor Illustration Charity  Logo/2.png" alt="شعار الموقع"> 

    <div class="navbar">
        <div class="menu">
            <a href="../php/HomePage.php" class="z">الصفحه الرئيسيه</a>
            <a href="../php/contact number.php" class="z">ارقام التواصل</a>
            <a href="../php/messages.php" class="z">الرسائل</a>
            <a href="../php/gift.php" class="z">الهدايا</a>
        </div>
    </div>

    <div class="para">
        <h1>هدايا المتبرعين</h1>
        <div class="line"></div>
        <h3 class="life">
            لأنك أنقذت حياة، إحنا كمان عايزين نردلك الجميل! بنك الدم بيقدملك هدايا وعروض مميزة تقديرًا لتبرعك ودعمك للي محتاجين.
        </h3>
    </div>

    <div class="Gifts">
        <div class="CARD">
            <div class="card">
                <i class="fa-solid fa-stethoscope"></i>
                <h2>خصومات طبية</h2>
                <h6>قسائم خصم التحليل والكشف الطبي والأشعة</h6>
                <button onclick="openForm('خصومات طبية', 1)">طلب هدية</button>
            </div>
            <div class="card">
                <i class="fa-solid fa-dumbbell"></i>
                <h2>نادي صحي</h2>
                <h6>اشتراك مجاني أو خصم في الجيم المتعاقد معنا</h6>
                <button onclick="openForm('نادي صحي', 2)">طلب هدية</button>
            </div>
        </div>
        <div class="CARD">
            <div class="card">
                <i class="fa-solid fa-gift"></i>
                <h2>سحب شهري</h2>
                <h6>لكل متبرع فرصة يكسب هدايا على أجهزة</h6>
                <button onclick="openForm('سحب شهري', 3)">طلب هدية</button>
            </div>
            <div class="card">
                <i class="fa-solid fa-hand-holding-heart"></i>
                <h2>هدايا محفزة</h2>
                <h6>هدايا تحفيزية مثل ميداليات "أنقذ حياة مريض"</h6>
                <button onclick="openForm('هدايا محفزة', 4)">طلب هدية</button>
            </div>
        </div>
    </div>

    <!-- نموذج الطلب -->
    <div id="giftForm" style="display:none; background:#fff; padding:20px; border:1px solid #ccc; position:fixed; top:20%; left:30%; z-index:999;">
        <h3>طلب هدية</h3>
        <form action="request_gift.php" method="POST">
            <input type="hidden" id="giftType" name="gift">
            <input type="hidden" id="giftNumber" name="gift_number">
            <label>الاسم:</label><br>
            <input type="text" name="name" required><br>
            <label>البريد الإلكتروني:</label><br>
            <input type="email" name="email" required><br>
            <label>رقم الهاتف:</label><br>
            <input type="text" name="phone" required><br><br>
            <button type="submit">تأكيد الطلب</button>
            <button type="button" onclick="document.getElementById('giftForm').style.display='none'">إلغاء</button>
        </form>
    </div>

    <script>
        function openForm(giftName, giftNum) {
            document.getElementById('giftType').value = giftName;
            document.getElementById('giftNumber').value = giftNum;
            document.getElementById('giftForm').style.display = 'block';
        }
    </script>

</body>
</html>
