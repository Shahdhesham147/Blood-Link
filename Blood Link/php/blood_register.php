<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <title>pation page</title>
    <link href="bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/bank.css" />
</head>

<body class="heading">
    <div class="bank">
        <img src="../img/Red and White Modern Blood Donor Illustration Charity  Logo/2.png" alt="Logo" class="logo">
       <div class="navbar">
        <div class="menu">
               <a href="../php/HomePage.php" class="z">الصفحه الرئيسيه</a>
      <a href="../php/contact number.php" class="z">ارقام التواصل</a>
      <a href="../php/messages.php" class="z">الرسائل</a>
            
        </div>
    </div>
    </div>
    <div class="info">
        <div class="info-co">
            <div class="form">
        <h1>تسجيل دخول لمسئول بنك الدم</h1>
                <form action="../php/bloadBanck.php" method="POST">
                    <input type="text" name="name" placeholder=": الإسم ثلاثي" required />
                    <input type="text" name="blood_bank_id" placeholder=": معرف بنك الدم" required />
                    <select name="location" required>
                        <option selected disabled>مكان البنك</option>
                        <option value="القاهرة">القاهرة</option>
                        <option value="المنوفية">المنوفية</option>
                        <option value="القليوبية">القليوبية</option>
                        <option value="الدقهلية">الدقهلية</option>
                        <option value="المنصورة">المنصورة</option>
                        <option value="الأقصر">الأقصر</option>
                    </select>
                    <br><br>
                    <button type="submit" id="btn">تسجيل</button>
                </form>
            </div>
        </div>
    </div>

    <script>
        let btn = document.getElementById('btn');
        btn.onclick = function () {
            alert('جاري تنفيذ طلبك');
        }
      
    </script>

</body>
</html>
