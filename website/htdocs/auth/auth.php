<?php
    session_start();
    date_default_timezone_set('Asia/Ho_Chi_Minh');

    /* Mailer
    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\Exception;

    require '../mail/src/Exception.php';
    require '../mail/src/PHPMailer.php';
    require '../mail/src/SMTP.php';

    $mail = new PHPMailer();
    $mail->setLanguage('vi', '../mail/language/directory/');

    $mail->SMTPDebug = 3;
    $mail->isSMTP();
    $mail->Host = 'smtp.aol.com';
    $mail->SMTPAuth = true;
    $mail->Username = 'hyperg.vn@aol.com';
    $mail->Password = '151607389';
    $mail->SMTPSecure = 'ssl';
    $mail->Port = 465; // 25, 465, 587
    */

    // start auth
    $cosodulieu = mysqli_connect('localhost', 'root', '', 'sa-mp');
    mysqli_query($cosodulieu, "SET NAMES 'utf8'");

    if($cosodulieu) {
        $_SESSION['csdl_state'] = 1; // co the dang nhap, dang ky
    }

    if(!$cosodulieu) {
        $_SESSION['csdl_state'] = 0;  // ko the dang, nhap dang ky
        return $_SESSION['auth_msg'] = '<span style="color: #ff4c4c;">Hiện tại không thể thực hiện hành động này vì có sự cố khi kết nối đến cơ sở dữ liệu.</span>';
    }

    function warn_authmsg($message) {
        header("location: ../auth");
        return $_SESSION['auth_msg'] = '<span style="color: #ff4c4c;">'.$message.'</span>';
    }

    function green_authmsg($message) {
        header("location: ../auth");
        return $_SESSION['auth_msg'] = '<span style="color: #90ee90;">'.$message.'</span>';
    }

    function getUserIp() {
        if (!empty($_SERVER['HTTP_CLIENT_IP'])) $ip = $_SERVER['HTTP_CLIENT_IP'];
        elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        else $ip = $_SERVER['REMOTE_ADDR'];
        return $ip;
    }

    function isValidEmail($cemail) {
        /*
        if(!strpos($cemail, '@gmail.com') ||
        !strpos($cemail, '@outlook.com') ||
        !strpos($cemail, '@hotmail.com') ||
        !strpos($cemail, '@protonmail.com') ||
        !strpos($cemail, '@protonmail.ch') ||
        !strpos($cemail, '@yahoo.com') ||
        !strpos($cemail, '@zohomail.com') ||
        !strpos($cemail, '@zoho.com') ||
        !strpos($cemail, '@yandex.com') ||
        !strpos($cemail, '@icloud.com') ||
        !strpos($cemail, '@gmx.com') ||
        !strpos($cemail, '@gmx.us') ||
        !strpos($cemail, '@aol.com') ||
        !strpos($cemail, '@aim.com')) return false;
        else return true;
        */
        if(!filter_var($cemail, FILTER_VALIDATE_EMAIL)) return false;
        return true;
    }
?>
