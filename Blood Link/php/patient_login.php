<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>تسجيل الدخول - بنك الدم</title>
    <link rel="stylesheet" href="../css/login.css"/>
</head>
<body>
    <div class="bg"></div>
    <img src="../img/Red and White Modern Blood Donor Illustration Charity  Logo/2.png" alt="Logo">
    
    <h1>بنك الدم</h1>
    <div class="para">
        <h3>نحن هنا لتقديم افضل خدمه لك</h3>
        <h3>تسجيل الدخول يعني موافقتك علي شروط الاستخدام وسياسة الخصوصية</h3>
    </div>
    
    <div class="Login">
        <img src="../img/Red and White Modern Blood Donor Illustration Charity  Logo/2.png" alt="Logo" class="IMG_login">
        
        <div class="textt">
            <form action="../php/conn_login_paient.php" method="POST" id="LoginForm">
                <input type="text" placeholder="الرقم القومي" name="national_id" required>
                <input type="password" placeholder="كلمة المرور" name="password" required>
                
                <a href="enter phone or email.php" class="password">
                    <button type="button" class="a">نسيت كلمة المرور</button>
                </a>
                
                <button type="submit" class="q" id="btn">الدخول</button>
            </form>
        </div>
    </div>
</body>
</html>