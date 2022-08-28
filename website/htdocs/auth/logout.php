
<?php
	include("auth.php");

	if(isset($_SESSION['logged'])) {
		if($_SESSION['logged'] == 1) {
			$sid = $_SESSION['securityID'];
			mysqli_query($cosodulieu, "UPDATE `accounts` SET `sessionID` = '' WHERE `SID` = '$sid'");
			/*
			unset($_SESSION['logged']);
			unset($_SESSION['idtaikhoan']);
			unset($_SESSION['diachiip']);
			unset($_SESSION['taikhoan']);
			unset($_SESSION['matkhau']);
			*/
			$sid = -1;
			session_unset();
			session_destroy();
			return header("location: ./");
		}
		else return include("../errors/404.php");
	}
	else return include("../errors/404.php");
?>
