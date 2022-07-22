
<?php

 	if($_SERVER['REQUEST_METHOD'] == 'POST') {

		include("auth.php");
		date_default_timezone_set('Asia/Ho_Chi_Minh');
		
		if(isset($_SESSION['auth_state'])) {
			if($_SESSION['auth_state'] == 0) {
				return header("location: ../");
			}
		}

		if(isset($_REQUEST['login'])) {

			if(isset($_SESSION['csdl_state'])) {

				if($_SESSION['csdl_state'] == 1) {

						$taikhoan = $_REQUEST['log_taikhoan'];
						$matkhaur = $_REQUEST['log_matkhau'];
						$matkhau = hash("sha256", $matkhaur);
						$query = "SELECT * FROM `accounts` WHERE `Account` = '$taikhoan' AND `Password` = '$matkhau'";
						$result = mysqli_query($cosodulieu, $query);

						if(mysqli_num_rows($result) > 0) {

							$ip = getUserIp();
							$date = date("H i s d m Y");
					 		mysqli_query($cosodulieu, "UPDATE `accounts` SET `LastLogin` = '$date' WHERE `Account` = '$taikhoan'");
							$rdata = mysqli_fetch_assoc($result);

							if($rdata['Online'] == 1) {
								return warn_authmsg('Vui lòng thoát trò chơi trước khi đăng nhập!');
							}

							else {
								if($rdata['Blacklist'] == 1) { // blacklisted

									$bldate = $rdata['BlacklistDate'];
									$ubldate = $rdata['UnblacklistDate'];
									$blreason = $rdata['BlacklistReason'];
									sscanf($ubldate, "%d %d %d", $ublday, $ublmonth, $ublyear);
									sscanf($bldate, "%d %d %d", $blday, $blmonth, $blyear);

									// check date to un-blacklist
									if(date("d") >= $ublday && date("m") >= $ublmonth && date("Y") >= $ublyear) {
										mysqli_query($cosodulieu, "UPDATE `accounts` SET `Blacklist` = '0', `BlacklistReason` = '', `BlacklistDate` = '', `BlacklistBy` = '', `UnblacklistDate` = '' WHERE `Account` = '$taikhoan'");
										return green_authmsg('Tài khoản đã được mở khoá do đã hết hoặc quá thời gian khoá. Hiện tại bạn đã có thể đăng nhập!');
									}
									else return warn_authmsg('Tài khoản của bạn đang bị khoá từ ngày '.$blday.'/'.$blmonth.'/'.$blyear.' cho đến ngày '.$ublday.'/'.$ublmonth.'/'.$ublyear.'.');
								}

								else { // All is good

									// Lưu vào Session (Server)
									$_SESSION['idtaikhoan'] = $rdata['PID'];
									$_SESSION['diachiip'] = $rdata['IP'];
						 			$_SESSION['taikhoan'] = $rdata['Account'];
						 			$_SESSION['matkhau'] = $rdata['Password'];
						 			$_SESSION['logged'] = 1;

						 			$log_token = setToken(32);
						 			$_SESSION['token'] = $log_token;

						 			mysqli_query($cosodulieu, "UPDATE `accounts` SET `IP` = '$ip', `LastLogin` = '$date', `Token` = '$log_token' WHERE `Account` = '$taikhoan'");

						 			return header("location: ../");
					 			}
				 			}
						}
						else {
							return warn_authmsg('Tài khoản hoặc mật khẩu không chính xác. Vui lòng thử lại!');
						}
				}

				else {
					return warn_authmsg('Bạn không thể thực hiện hành động này vì đang xảy ra lỗi khi kết nối dữ liệu!');
				}
			}
		}
		header("location: ./");
	}
	else return include("../errors/404.php");
	
?>