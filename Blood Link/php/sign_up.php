<!DOCTYPE html>
<html lang="ar">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>تسجيل الدخول أو إنشاء حساب</title>
  <link rel="stylesheet" href="../css/Sign up.css">
</head>
<body>
  <div class="bg"></div>
  <img src="../img/Red and White Modern Blood Donor Illustration Charity  Logo/2.png" alt="شعار">

  <div class="navbar">
    <div class="menu">
      <a href="../php/HomePage.php" class="z">الصفحه الرئيسيه</a>
      <a href="../php/contact number.php" class="z">ارقام التواصل</a>
      <a href="../php/messages.php" class="z">الرسائل</a>
              <a href="../php/gift.php"class="z" >الهدايا</a>
    </div>
  </div>

  <div class="input1">
    <button type="button" onclick="goToRegister()"> انشاء حساب جديد</button>
  </div>
  <div class="input2">
    <button type="button" onclick="goToLogin()">تسجيل الدخول</button>
  </div>

  <script>
    function goToRegister() {
      const role = localStorage.getItem('selectedRole');
      if (role === 'patient') {
        window.location.href = '../php/create_account_paient.php?role=patient';
      } else if (role === 'donor') {
        window.location.href = '../php/create_account donor.php?role=donor';
      } else {
        alert("من فضلك اختر نوع المستخدم أولاً من الصفحة الرئيسية");
      }
    }

    function goToLogin() {
      const role = localStorage.getItem('selectedRole');
      if (role === 'patient') {
        window.location.href = 'patient_login.php';
      } else if (role === 'donor') {
        window.location.href = '../php/donor_login.php';
      } else {
        alert("من فضلك اختر نوع المستخدم أولاً من الصفحة الرئيسية");
      }
    }
  </script>
</body>
</html>
