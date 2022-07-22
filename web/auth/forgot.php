
<?php
	if($_SERVER['REQUEST_METHOD'] == 'POST') {
		include("auth.php");

		return warn_authmsg('Hiện tại hệ thống quên mật khẩu chưa được hoàn thiện. Hãy thử lại sau!');
	}
	else return include("../errors/404.php");
?>