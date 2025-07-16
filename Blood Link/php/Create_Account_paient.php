
<!DOCTYPE html>
<html lang="ar">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>تسجيل <?php echo $role_display[$role] ?? 'مستخدم'; ?></title>
  <link rel="stylesheet" href="../css/CreatAccountPation.css" />

</head>
<body>
    <img src="../img/Red and White Modern Blood Donor Illustration Charity  Logo/2.png" alt="شعار الموقع" class="Logo">

  <div class="bg">
    <h1>إنشاء حساب جديد</h1>
    <div class="line"></div>

    
<form id="signupForm" action="db_create_account_paient.php" method="POST">
      <input type="hidden" name="role" value="<?php echo $role; ?>">

      <input type="text" name="first_name" placeholder="الاسم الأول" required>
      <input type="text" name="last_name" placeholder="الاسم الثاني" required>

      <input type="tel" name="phone_number" placeholder="رقم الهاتف" required>
      <input type="email" name="email" placeholder="البريد الإلكتروني" required>
      <input type="text" name="national_id" placeholder="الرقم القومي" required>

      <input type="password" name="password" placeholder="كلمة السر" id="password" required>
      <input type="password" name="confirm_password" placeholder="تأكيد كلمة السر" id="confirm_password" required>

      <div class="DATE">
        <input type="date" name="dob" class="Data" required>
        <label class="DATE">تاريخ الميلاد</label>
      </div>

      <input list="gender_options" name="gender" placeholder="النوع" required>
      <datalist id="gender_options">
        <option value="ذكر">
        <option value="أنثى">
      </datalist>

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

      <button type="submit" id="btn">تسجيل البيانات</button>
      <div id="message" class="error"></div>
    </form>

  </div>
  
  <script>
    document.getElementById("signupForm").addEventListener("submit", function(e) {
      var pass = document.getElementById("password").value;
      var confirm = document.getElementById("confirm_password").value;
      var dob = document.getElementById("dob").value;
      var message = document.getElementById("message");

      if (pass !== confirm) {
        e.preventDefault();
        message.textContent = "❌ كلمة السر غير متطابقة!";
        return;
      }

      const today = new Date();
      const birthDate = new Date(dob);
      let age = today.getFullYear() - birthDate.getFullYear();
      const m = today.getMonth() - birthDate.getMonth();
      if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) age--;

      if (age < 18) {
        e.preventDefault();
        message.textContent = "❌ يجب أن يكون عمرك 18 سنة أو أكثر.";
        return;
      }
header("Location: pation_login.php");
exit();



      message.textContent = "";
    });
  </script>
</body>
</html>