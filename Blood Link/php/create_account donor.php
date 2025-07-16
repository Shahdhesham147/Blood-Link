<!DOCTYPE html>
<html lang="ar">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>إنشاء حساب جديد</title>
  <link rel="stylesheet" href="../css/CreateAccount.css" />
  
</head>
<body>
  <div class="bg"></div>

  <img src="../img/Red and White Modern Blood Donor Illustration Charity  Logo/2.png" alt="شعار الموقع">
  <h1>إنشاء حساب جديد</h1>
  <div class="line"></div>

  <div class="FORM">
    
<form id="signupForm" action="../php/db_create account donors.php" method="POST">

      <input type="text" placeholder="الاسم الأول" name="first_name" class="Data" required>
      <input type="text" placeholder="الاسم الثاني" name="last_name" class="Data" required>
      <input type="tel" placeholder="رقم الهاتف" name="phone" class="Data" required>
      <input type="email" placeholder="البريد الإلكتروني" name="email" class="Data" required>
      <input type="tel" placeholder="الرقم القومي" name="national_id" class="Data" required>

      <input type="password" placeholder="كلمة السر"name="password" class="Data" id="password" required>
      <input type="password" placeholder="تأكيد كلمة السر" name="confirm_password" class="Data" id="confirm_password" required>

      <div class="DATE">
        <input type="date" name="dob" class="Data" required>
        <label>تاريخ الميلاد</label>
      </div>

      <input list="gender_options" name="gender" placeholder="النوع" class="Data" required>
      <datalist id="gender_options">
        <option value="ذكر">
        <option value="أنثى">
      </datalist>

      <input list="blood_options" name="blood_type" placeholder="فصيلة الدم" class="Data" required>
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

      <button type="submit" id="btn">تسجيل البيانات</button>
      <div id="message" class="error"></div>
    </form>
  </div>

  <script>
    document.getElementById("signupForm").addEventListener("submit", function(e) {
      var pass = document.getElementById("password").value;
      var confirm = document.getElementById("confirm_password").value;
      var message = document.getElementById("message");

      if (pass !== confirm) {
        e.preventDefault();
        message.textContent = "❌ كلمة السر غير متطابقة!";
      } else {
        message.textContent = "";
      }
    });
  </script>
</body>
</html>