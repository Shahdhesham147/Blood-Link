<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require '../vendor/autoload.php'; 

$conn = new mysqli("localhost", "root", "", "4");
if ($conn->connect_error) die("فشل الاتصال: " . $conn->connect_error);

$email = $_POST['email'] ?? '';
if (empty($email)) die("يرجى إدخال بريد إلكتروني");

$stmt = $conn->prepare("SELECT * FROM users WHERE email = ?");
$stmt->bind_param("s", $email);
$stmt->execute();
$result = $stmt->get_result();

if ($result && $result->num_rows > 0) {
    $token = bin2hex(random_bytes(16));
    $expire = date("Y-m-d H:i:s", strtotime("+1 hour"));

    $stmt = $conn->prepare("UPDATE users SET reset_token = ?, reset_token_expire = ? WHERE email = ?");
    $stmt->bind_param("sss", $token, $expire, $email);
    $stmt->execute();

    $resetLink = "http://localhost/Project/php/reset_password.php?token=$token";

   
    $mail = new PHPMailer(true);
    try {
        $mail->isSMTP();
        $mail->Host = 'sandbox.smtp.mailtrap.io';
        $mail->SMTPAuth = true;
        $mail->Username = 'your_mailtrap_username'; 
        $mail->Password = 'your_mailtrap_password';
        $mail->Port = 2525;

        $mail->setFrom('no-reply@example.com', 'Blood Bank System');
        $mail->addAddress($email);
        $mail->isHTML(true);
        $mail->Subject = "إعادة تعيين كلمة المرور";
        $mail->Body = "انقر على الرابط التالي لإعادة تعيين كلمة المرور:<br><a href='$resetLink'>$resetLink</a>";

        $mail->send();
        echo "📧 تم إرسال رابط استعادة كلمة المرور إلى بريدك.";
    } catch (Exception $e) {
        echo "❌ فشل الإرسال: {$mail->ErrorInfo}";
    }
} else {
    echo "❌ البريد الإلكتروني غير موجود في النظام.";
}
?>

</body>
</html>