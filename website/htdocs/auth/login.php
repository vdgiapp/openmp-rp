
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
					$matkhau = $_REQUEST['log_matkhau'];

					$query = "SELECT * FROM `accounts` WHERE `Account` = '$taikhoan'";
					$result = mysqli_query($cosodulieu, $query);
                    $rdata = mysqli_fetch_assoc($result);
					if(mysqli_num_rows($result) > 0) {
                        
                        if(password_verify($matkhau, $rdata['Password'])) {
                            $sid = $rdata['SID'];
    						if($rdata['Online'] == 1) return warn_authmsg('Vui lòng thoát trò chơi trước khi đăng nhập!');

                            $bandata = $rdata['BanData'];
                            sscanf($bandata, "%d %d %d %d %s %d %d %d", $isbanned, $banday, $banmonth, $banyear, $banby, $unbanday, $unbanmonth, $unbanyear);
                            $banreason = $rdata['BanReason'];

    						if($isbanned == 1) {
    							// check date to unban
    							if(!(date("Y") > $unbanyear || (date("d") >= $unbanday && date("m") >= $unbanmonth && date("Y") == $unbanyear))) {
                                    return warn_authmsg('Tài khoản của bạn đang bị khoá từ ngày '.$banday.'/'.$banmonth.'/'.$banyear.' cho đến ngày '.$unbanday.'/'.$unbanmonth.'/'.$unbanyear.'.');
    							}
                                //return green_authmsg('Tài khoản đã được mở khoá do đã hết hoặc quá thời gian khoá. Hiện tại bạn đã có thể đăng nhập!');
                                mysqli_query($cosodulieu, "UPDATE `accounts` SET `BanData` = '0 0 0 0 none 0 0 0' WHERE `SID` = '$sid'");
                            }

    						else { // All is good

    							// Lưu vào Session (Server)
    							$_SESSION['securityID'] = $rdata['SID'];
    				 			$_SESSION['logged'] = 1;
                                $date = date("H i s d m Y");
                                $sessionID = session_id();
    				 			mysqli_query($cosodulieu, "UPDATE `accounts` SET `LastTimeLogged` = '$date', `sessionID` = '$sessionID' WHERE `SID` = '$sid'");

    				 			return header("location: ../");
    			 			}
                        }
                        else return warn_authmsg('Thông tin mật khẩu không chính xác. Vui lòng thử lại!');
                    }
					else return warn_authmsg('Thông tin tài khoản không chính xác. Hãy bấm vào tab "Đăng ký" nếu bạn muốn tạo tài khoản!');
				}
				else return warn_authmsg('Bạn không thể thực hiện hành động này vì đang xảy ra lỗi khi kết nối dữ liệu!');
			}
		}
		header("location: ./");
	}
	else return include("../errors/404.php");

?>
