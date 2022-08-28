
<?php

	if($_SERVER['REQUEST_METHOD'] == 'POST') {

		include("auth.php");
		date_default_timezone_set('Asia/Ho_Chi_Minh');

		if(isset($_SESSION['auth_state'])) {
			if($_SESSION['auth_state'] == 0) {
				return header("location: http://localhost");
			}
		}

		if(isset($_REQUEST['register'])) {

			if(isset($_SESSION['csdl_state'])) {

				if($_SESSION['csdl_state'] == 1) {


					$taikhoan = $_REQUEST['reg_taikhoan'];
					$email = $_REQUEST['reg_email'];
					$matkhaur = $_REQUEST['reg_matkhau'];
					$mkcap2r = $_REQUEST['reg_mkcap2'];

                    $options = [
                    	'cost' => 12,
                    ];
                    $matkhau = password_hash($matkhaur, PASSWORD_BCRYPT, $options);
					if(!(is_null($mkcap2r) || $mkcap2r == '')) $mkcap2 = password_hash($mkcap2r, PASSWORD_BCRYPT, $options);

					$query = "SELECT * FROM `accounts` WHERE `Account` = '$taikhoan'";
					$result = mysqli_query($cosodulieu, $query);
					$rdata = mysqli_fetch_assoc($result);
		 			if(mysqli_num_rows($result) && $rdata['Account'] == $taikhoan) return warn_authmsg('Tài khoản này đã được đăng ký, vui lòng sử dụng tài khoản khác để đăng ký!');

					$query = "SELECT * FROM `accounts` WHERE `Email` = '$email'";
					$result = mysqli_query($cosodulieu, $query);
					$rdata = mysqli_fetch_assoc($result);
					if(mysqli_num_rows($result) && $rdata['Email'] == $email) return warn_authmsg('Email này đã được đăng ký, vui lòng sử dụng email khác để đăng ký tài khoản!');

	 				if(!preg_match("/^[a-zA-Z0-9._]+$/", $taikhoan)) return warn_authmsg('Tài khoản của bạn chỉ được gồm những kí tự "A-Z", "a-z", "0-9", "_" (gạch dưới) hoặc "." (dấu chấm).');
	 				if(!isValidEmail($email)) return warn_authmsg('Email bạn vừa nhập không hợp lệ hoặc không tồn tại!');

	 				//$ip = getUserIp();
	 				$logdate = date("H i s d m Y");
	 				$regdate = date("d m Y");
	 				//$maxacnhan = 100000 + rand(99999,899999);

	 				$query = "INSERT INTO `accounts` (`Account`, `DisplayName`, `Email`, `Password`, `Password2`, `DateCreated`, `LastTimeLogged`) VALUES ('$taikhoan', '$taikhoan', '$email', '$matkhau', '$mkcap2', '$regdate', '$logdate')";
	 				mysqli_query($cosodulieu, $query);
					mysqli_query($cosodulieu, "UPDATE `serverinfo` SET `Registered` = `Registered` + 1");

	 				green_authmsg('Đã đăng ký thành công tài khoản "'.$taikhoan.'" với email "'.$email.'"');

	 				/* Send mail
	 				$mail->setFrom('hyperg.vn@aol.com', 'HyperG Community Vietnam');
				    $mail->addReplyTo('hyperg.vn@aol.com', 'HyperG Community Vietnam');
				    $mail->addAddress($email, $taikhoan);
	 				$mail->isHTML(true);
					$mail->Subject = 'HGC - Xác nhận tài khoản của bạn';
					$mail->Body = '<big>Xin chào '.$email.', bạn đã đăng ký thành công tài khoản '.$taikhoan.'.<br />Mã xác nhận của bạn là: '.$maxacnhan.'.<br />Để xác nhận, hãy bấm vào <a href="http://hyperg.vn/auth/verify.php">liên kết này</a>.</big>';
					$mail->AltBody = 'Xin chào '.$email.', bạn đã đăng ký thành công tài khoản '.$taikhoan.'. Mã xác nhận của bạn là: '.$maxacnhan.' - Để xác nhận, hãy truy cập liên kết này: "http://hyperg.vn/auth/verify.php"';
					$mail->MsgHTML = '<big>Xin chào '.$email.', bạn đã đăng ký thành công tài khoản '.$taikhoan.'.<br />Mã xác nhận của bạn là: '.$maxacnhan.'.<br />Để xác nhận, hãy bấm vào <a href="http://hyperg.vn/auth/verify.php">liên kết này</a>.</big>';

					if(!$mail->Send()) {
						return warn_authmsg('Lỗi: ' . $mail->ErrorInfo);
					}

					if($mail->Send()) {

					}
					*/
				}

				else return warn_authmsg('Bạn không thể thực hiện hành động này vì đang xảy ra lỗi khi kết nối dữ liệu!');
			}
		}
		header("location: ./");
	}
	else return include("../errors/404.php");

?>
