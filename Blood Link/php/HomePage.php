<!DOCTYPE html>
<html lang="ar">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>الصفحة الرئيسية</title>
  <link rel="stylesheet" href="../css/Home page.css">
</head>
<body>
  <div class="bg"></div>
  <img src="../img/Red and White Modern Blood Donor Illustration Charity  Logo/2.png" alt="">

  <div class="navbar">
    <div class="menu">
  
       <a href="../php/HomePage.php" class="z">الصفحه الرئيسيه</a>
      <a href="../php/contact number.php" class="z">ارقام التواصل</a>
      <a href="../php/messages.php" class="z">الرسائل</a>
      
    </div>
  </div>

  <h1>الصفحه الرئيسيه</h1>
  <div class="line"></div>

  <div class="btn">
    <button type="button" onclick="selectRole('patient')">مريض</button>
    <button type="button" onclick="selectRole('donor')">متبرع</button>
    <button type="button" onclick="window.location.href='blood_register.php'">بنك الدم</button>
  </div>

  <script>
    function selectRole(role) {
      localStorage.setItem("selectedRole", role);
      window.location.href = "Sign_up.php";
    }
  </script>
</body>
</html>