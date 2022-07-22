<?php
    session_start();
    date_default_timezone_set('Asia/Ho_Chi_Minh');
    
    $database = mysqli_connect('localhost', 'root', '', 'hyperg.vn');
    if(isset($_SESSION['logged'])) {
        if($_SESSION['logged'] == 1) {
            $taikhoan = $_SESSION['taikhoan'];
            $matkhau = $_SESSION['matkhau'];
            $query = "SELECT * FROM `hgc.accounts` WHERE `Account`='$taikhoan' AND `Password`='$matkhau'";
            mysqli_query($database, "SET NAMES 'utf8'");
            $result = mysqli_query($database, $query);
            if(mysqli_num_rows($result) > 0) $rdata = mysqli_fetch_assoc($result);
            if($rdata['HGSA'] == 1) return include("auth/logout.php");
            if($rdata['Token'] != $_SESSION['token']) return header("location: ../../auth/logout.php");
        }
        else return include("../../errors/404.php");
    }
    else return include("../../errors/404.php");
?>

<!DOCTYPE html>

<html lang="vi">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>HGC - Cài đặt tài khoản</title>

    <link rel="icon" type="image/png" href="../../favicon.png">

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">


    <!-- START: Styles -->
    <!-- Google Fonts -->
    <link href="../../assets/css/open-sans.css" rel="stylesheet" type="text/css">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="../../assets/vendor/bootstrap/dist/css/bootstrap.min.css">

    <!-- FontAwesome -->
    <script defer src="../../assets/vendor/fontawesome-free/js/all.js"></script>
    <script defer src="../../assets/vendor/fontawesome-free/js/v4-shims.js"></script>

    <!-- IonIcons -->
    <link rel="stylesheet" href="../../assets/vendor/ionicons/css/ionicons.min.css">

    <!-- Flickity -->
    <link rel="stylesheet" href="../../assets/vendor/flickity/dist/flickity.min.css">

    <!-- Photoswipe -->
    <link rel="stylesheet" type="text/css" href="../../assets/vendor/photoswipe/dist/photoswipe.css">
    <link rel="stylesheet" type="text/css" href="../../assets/vendor/photoswipe/dist/default-skin/default-skin.css">

    <!-- Seiyria Bootstrap Slider -->
    <link rel="stylesheet" href="../../assets/vendor/bootstrap-slider/dist/css/bootstrap-slider.min.css">

    <!-- Summernote -->
    <link rel="stylesheet" type="text/css" href="../../assets/vendor/summernote/dist/summernote-bs4.css">

    <!-- HyperG -->
    <link rel="stylesheet" href="../../assets/css/hyperg.css">

    <!-- Custom Styles -->
    <link rel="stylesheet" href="../../assets/css/custom.css">
    
    <!-- END: Styles -->

    <!-- jQuery -->
    <script src="../../assets/vendor/jquery/dist/jquery.min.js"></script>
    
    
</head>
<body>
<header class="nk-header nk-header-opaque">

<!-- START: Top Contacts -->
<div class="nk-contacts-top">
    <div class="container">
        <div class="nk-contacts-left">
            <ul class="nk-social-links">
                <li><a target="_blank" class="nk-social-facebook" href="https://fb.com/groups/hyperg.vn"><span class="fab fa-facebook"></span></a></li>
                <li><a target="_blank" class="nk-social-youtube" href="#"><span class="fab fa-youtube"></span></a></li>
            </ul>
        </div>

        <div class="nk-contacts-right">
            <ul class="nk-contacts-icons">
                    <li>
                        <?php
                            // check if logged
                            if(isset($_SESSION['logged'])) {
                                if($_SESSION['logged'] == 1) {
                                    echo '<form method="post" action="../../account/settings">
                                                <button type="submit" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-info">
                                                    <span class="fa fa-user"></span>&ensp;'.$rdata['DisplayName'].'&ensp;-&ensp;PID: '.$rdata['PID'].' &ensp;
                                                </button>
                                            </form>';
                                }
                                else echo '<form method="post" action="../../auth">
                                                <button type="submit" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-info">
                                                    <span class="fa fa-user"></span>&ensp;Tài khoản
                                                </button>
                                            </form>';
                            }
                            else echo '<form method="post" action="../../auth">
                                            <button type="submit" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-info">
                                                <span class="fa fa-user"></span>&ensp;Tài khoản
                                            </button>
                                        </form>';
                        ?>
                    </li>
                </ul>
            </div>
        </div>
    </div>
<!-- END: Top Contacts -->

    

    <!--
        START: Navbar

        Additional Classes:
            .nk-navbar-sticky
            .nk-navbar-transparent
            .nk-navbar-autohide
    -->
    <nav class="nk-navbar nk-navbar-top nk-navbar-sticky nk-navbar-autohide">
        <div class="container">
            <div class="nk-nav-table">
                
                <a href="../../" class="nk-nav-logo">
                    <img src="../../assets/images/logo.png" alt="HyperG" width="199">
                </a>
                
                <ul class="nk-nav nk-nav-right d-none d-lg-table-cell" data-nav-mobile="#nk-nav-mobile">
 
        </li>

        <li>
            <a href="../../info">
                Thông tin
            </a>
        <li>

        <li>
            <a href="../../forum">
                Diễn đàn
            </a>
        </li>

        <li class=" nk-drop-item">
            <a href="#">
                Máy chủ
            </a><ul class="dropdown">
        </li>
        <li>
            <a href="">
                HG:SA (SA-MP)
            </a>
        </li>
            </ul>

        <li class=" nk-drop-item">
            <a href="../../downloads">
                Tải xuống
            </a><ul class="dropdown">
        </li>
        <li>
            <a href="../../downloads/games">
                Trò chơi
            </a>
        </li>
        <li>
            <a href="../../downloads/updates">
                Cập nhật
            </a>
        </li>
            </ul>

        <?php
            if(isset($_SESSION['logged'])) {
                if($_SESSION['logged'] == 1) {
                    echo '<li class="nk-drop-item active">
                            <a href="../../account/settings">Tài khoản</a>
                            <ul class="dropdown">
                        </li>
                        <li><a href="../../account/hgsa.cp">Nhân vật (HG:SA)</a></li>
                        <li class="active"><a href="../../account/settings">Cài đặt tài khoản</a></li>
                        <li><a href="../../auth/logout.php">Đăng xuất</a></li>
                        </ul>';
                }
                else echo '';
            }
            else echo '';
        ?>

        <li></li>

        </li>
                </ul>
                <ul class="nk-nav nk-nav-right nk-nav-icons">
                    
                        <li class="single-icon d-lg-none">
                            <a href="#" class="no-link-effect" data-nav-toggle="#nk-nav-mobile">
                                <span class="nk-icon-burger">
                                    <span class="nk-t-1"></span>
                                    <span class="nk-t-2"></span>
                                    <span class="nk-t-3"></span>
                                </span>
                            </a>
                        </li>
                    
                    
                </ul>
            </div>
        </div>
    </nav>
    <!-- END: Navbar -->

</header>

    
    
        <!--
    START: Navbar Mobile

    Additional Classes:
        .nk-navbar-left-side
        .nk-navbar-right-side
        .nk-navbar-lg
        .nk-navbar-overlay-content
-->
<div id="nk-nav-mobile" class="nk-navbar nk-navbar-side nk-navbar-right-side nk-navbar-overlay-content d-lg-none">
    <div class="nano">
        <div class="nano-content">
            <a href="../../index.html" class="nk-nav-logo">
                <img src="../../assets/images/logo.png" alt="" width="120">
            </a>
            <div class="nk-navbar-mobile-content">
                <ul class="nk-nav">
                    <!-- Here will be inserted menu from [data-mobile-menu="#nk-nav-mobile"] -->
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- END: Navbar Mobile -->

    

    <div class="nk-main">
        
            <div class="nk-gap-2"></div>
        

        
<div class="container">
    <div class="row vertical-gap">
        <!--
        <div class="col-lg-4">
        </div>
        <div class="col-lg-8">
        </div>
    -->
    </div>

    <div class="nk-gap-4"></div>
    <div class="row vertical-gap text-white">
        <div class="col-lg-12 nk-box-2">
            <b style="text-align: center; display: block; font-size: 30px;">CÀI ĐẶT TÀI KHOẢN</b>
        </div>

        <div class="col-lg-4 nk-box-2"> <!--bg-dark-2-->
            <big style="font-size: 18px;"><strong>Tài khoản :</strong>&ensp;
                <?php echo $rdata['Account'];?>
            </big>
        </div>
        <div class="col-lg-2 nk-box-2"> <!--bg-dark-2-->
            <big style="font-size: 18px;"><strong>PID :</strong>&ensp;
                <?php echo $rdata['PID'];?>
            </big>
        </div>

        <div class="col-lg-4 nk-box-2">
            <big style="font-size: 18px;"><strong>Tên hiển thị :</strong>&ensp;
                <?php echo $rdata['DisplayName']; ?>
            </big>
        </div>
        <div class="col-lg-2 nk-box-2">
            <big style="font-size: 18px;"><a href="#change_dname">Thay đổi</a></big>
        </div>

        <div class="col-lg-4 nk-box-2"> <!--bg-dark-2-->
            <big style="font-size: 18px;"><strong>Email :</strong>&ensp;
                <?php
                    if($rdata['Confirm'] != 1) {
                        echo $rdata['Email'].' (Chưa xác nhận)';
                    }
                    else echo $rdata['Email'];
                ?>
            </big>
        </div>

        <div class="col-lg-2 nk-box-2">
            <big style="font-size: 18px;">
                <a href="change_email.php">Thay đổi</a><br />
                <?php
                    if($rdata['Confirm'] != 1) {
                        echo '<a href="verify_email.php">Xác nhận</a>';
                    }
                    else echo '';
                ?>
            </big>
        </div>

        <div class="col-lg-4 nk-box-2">
            <big style="font-size: 18px;"><strong>Ngày sinh :</strong>&ensp;
                <?php
                    sscanf($rdata['Birthday'], "%02d %02d %04d", $bday, $bmonth, $byear);
                    echo $bday.'/'.$bmonth.'/'.$byear;
                ?>
            </big>
        </div>
        <div class="col-lg-2 nk-box-2">
            <big style="font-size: 18px;"><a href="change_birth.php">Thay đổi</a></big>
        </div>

        <div class="col-lg-4 nk-box-2">
            <big style="font-size: 18px;"><strong>Mật khẩu :</strong>&ensp;
                <?php echo "****************"; ?>
            </big>
        </div>
        <div class="col-lg-2 nk-box-2">
            <big style="font-size: 18px;"><a href="change_pass.php">Thay đổi</a></big>
        </div>

        <div class="col-lg-4 nk-box-2">
            <big style="font-size: 18px;"><strong>Mật khẩu cấp 2 :</strong>&ensp;
                <?php echo "******" ?>
            </big>
        </div>
        <div class="col-lg-2 nk-box-2">
            <big style="font-size: 18px;"><a href="change_pass2.php">Thay đổi</a></big>
        </div>

        <div class="col-lg-6 nk-box-2">
            <big style="font-size: 18px;"><strong>Lần cuối:</strong>&ensp;
                <?php
                    sscanf($rdata['LastLogin'], "%02d %02d %02d %02d %02d %04d", $l1, $l2, $l3, $l4, $l5, $l6);
                    echo $l1.':'.$l2.':'.$l3.' - '.$l4.'/'.$l5.'/'.$l6;
                ?>
            </big>
        </div>

        <div class="col-lg-6 nk-box-2">
            <big style="font-size: 18px;"><strong>Ngày đăng ký :</strong>&ensp;
                <?php
                    sscanf($rdata['CreatedDate'], "%02d %02d %04d", $l1, $l2, $l3);
                    echo $l1.'/'.$l2.'/'.$l3;
                ?>
            </big>
        </div>
    </div>
</div>

<div class="nk-gap-6"></div>
<div class="nk-gap-6"></div>
<div class="nk-gap-6"></div>
        
<!-- START: Footer -->
<footer class="nk-footer">

    <div class="nk-copyright">
        <div class="container">
            <div class="nk-copyright-left">
                <a href="">HyperG Community Vietnam</a>
            </div>
            <div class="nk-copyright-right">
                <ul class="nk-social-links-2">
                    <li><a target="_blank" class="nk-social-facebook" href="https://fb.com/groups/hyperg.vn"><span class="fab fa-facebook"></span></a></li>
                    <li><a target="_blank" class="nk-social-youtube" href="#"><span class="fab fa-youtube"></span></a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>
<!-- END: Footer -->

</div>

<!-- START: Page Background -->

    <img class="nk-page-background-top" src="../../assets/images/bg-top-4.png" alt="">
    <img class="nk-page-background-bottom" src="../../assets/images/bg-bottom.png" alt="">

<!-- END: Page Background -->
    
<!-- START: Scripts -->

<!-- Object Fit Polyfill -->
<script src="../../assets/vendor/object-fit-images/dist/ofi.min.js"></script>

<!-- GSAP -->
<script src="../../assets/vendor/gsap/src/minified/TweenMax.min.js"></script>
<script src="../../assets/vendor/gsap/src/minified/plugins/ScrollToPlugin.min.js"></script>

<!-- Popper -->
<script src="../../assets/vendor/popper.js/dist/umd/popper.min.js"></script>

<!-- Bootstrap -->
<script src="../../assets/vendor/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Sticky Kit -->
<script src="../../assets/vendor/sticky-kit/dist/sticky-kit.min.js"></script>

<!-- Jarallax -->
<script src="../../assets/vendor/jarallax/dist/jarallax.min.js"></script>
<script src="../../assets/vendor/jarallax/dist/jarallax-video.min.js"></script>

<!-- imagesLoaded -->
<script src="../../assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>

<!-- Flickity -->
<script src="../../assets/vendor/flickity/dist/flickity.pkgd.min.js"></script>

<!-- Photoswipe -->
<script src="../../assets/vendor/photoswipe/dist/photoswipe.min.js"></script>
<script src="../../assets/vendor/photoswipe/dist/photoswipe-ui-default.min.js"></script>

<!-- Jquery Validation -->
<script src="../../assets/vendor/jquery-validation/dist/jquery.validate.min.js"></script>

<!-- Jquery Countdown + Moment -->
<script src="../../assets/vendor/jquery-countdown/dist/jquery.countdown.min.js"></script>
<script src="../../assets/vendor/moment/min/moment.min.js"></script>
<script src="../../assets/vendor/moment-timezone/builds/moment-timezone-with-data.min.js"></script>

<!-- Hammer.js -->
<script src="../../assets/vendor/hammerjs/hammer.min.js"></script>

<!-- NanoSroller -->
<script src="../../assets/vendor/nanoscroller/bin/javascripts/jquery.nanoscroller.js"></script>

<!-- SoundManager2 -->
<script src="../../assets/vendor/soundmanager2/script/soundmanager2-nodebug-jsmin.js"></script>

<!-- Seiyria Bootstrap Slider -->
<script src="../../assets/vendor/bootstrap-slider/dist/bootstrap-slider.min.js"></script>

<!-- Summernote -->
<script src="../../assets/vendor/summernote/dist/summernote-bs4.min.js"></script>

<!-- nK Share -->
<script src="../../assets/plugins/nk-share/nk-share.js"></script>

<!-- hyperg -->
<script src="../../assets/js/hyperg.min.js"></script>
<script src="../../assets/js/hyperg-init.js"></script>
<!-- END: Scripts -->
    
</body>
</html>
