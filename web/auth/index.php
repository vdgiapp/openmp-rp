<?php
    include("auth.php");

    if(isset($_SESSION['logged'])) { // logged
        if($_SESSION['logged'] == 1) {
            return include("../errors/404.php");
        }
    }
    if(isset($_SESSION['auth_state'])) { // admin turn off auth
        if($_SESSION['auth_state'] == 0) {
            return include("../errors/404.php");
        }
    }
?>

<!DOCTYPE html>
  
<html lang="vi">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>HGC - Tài khoản</title>

    <meta name="author" content="HyperG Community Vietnam - Tài khoản">
    <meta name="description" content="Đăng nhập hoặc đăng ký vào HyperG Community Vietnam với tài khoản của bạn!">
    <meta name="keywords" content="sa-mp vietnam, samp việt nam, samp việt, gta roleplay, gta online, hgc roleplay, sa-mp roleplay, sa-mp viet, sa-mp tdm, sa-mp dm, san andreas multiplayer, gta v roleplay, gta v vietnam, gta vietnam, hgc rp, hgc-rp, hgc group, hyperg community vn, hyperg community vietnam, hyperg san andreas, gta viet, gta sa full rip, luat rp, luật rp, hyperg gta, hyperg samp, hyperg gtav">

    <!-- Google / Search Engine Tags -->
    <meta itemprop="name" content="HGC - Tài khoản">
    <meta itemprop="description" content="Đăng nhập hoặc đăng ký vào HyperG Community Vietnam với tài khoản của bạn!">
    <meta itemprop="image" content="http://localhost/favicon.png">

    <!-- Facebook Meta Tags -->
    <meta property="og:url" content="http://localhost/auth">
    <meta property="og:type" content="website">
    <meta property="og:title" content="HGC - Đăng nhập">
    <meta property="og:description" content="Đăng nhập hoặc đăng ký vào HyperG Community Vietnam với tài khoản của bạn!">
    <meta property="og:image" content="http://localhost/favicon.png">

    <!-- Twitter Meta Tags -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="HGC - Đăng nhập">
    <meta name="twitter:description" content="Đăng nhập hoặc đăng ký vào HyperG Community Vietnam với tài khoản của bạn!">
    <meta name="twitter:image" content="http://localhost/favicon.png">

    <link rel="icon" type="image/png" href="../favicon.png">

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">


    <!-- START: Styles -->
    <!-- Google Fonts -->
    <link href="../assets/css/open-sans.css" rel="stylesheet" type="text/css">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="../assets/vendor/bootstrap/dist/css/bootstrap.min.css">

    <!-- FontAwesome -->
    <script defer src="../assets/vendor/fontawesome-free/js/all.js"></script>
    <script defer src="../assets/vendor/fontawesome-free/js/v4-shims.js"></script>

    <!-- IonIcons -->
    <link rel="stylesheet" href="../assets/vendor/ionicons/css/ionicons.min.css">

    <!-- Flickity -->
    <link rel="stylesheet" href="../assets/vendor/flickity/dist/flickity.min.css">

    <!-- Photoswipe -->
    <link rel="stylesheet" type="text/css" href="../assets/vendor/photoswipe/dist/photoswipe.css">
    <link rel="stylesheet" type="text/css" href="../assets/vendor/photoswipe/dist/default-skin/default-skin.css">

    <!-- Seiyria Bootstrap Slider -->
    <link rel="stylesheet" href="../assets/vendor/bootstrap-slider/dist/css/bootstrap-slider.min.css">

    <!-- Summernote -->
    <link rel="stylesheet" type="text/css" href="../assets/vendor/summernote/dist/summernote-bs4.css">

    <!-- HyperG -->
    <link rel="stylesheet" href="../assets/css/hyperg.css">

    <!-- Custom Styles -->
    <link rel="stylesheet" href="../assets/css/custom.css">
    
    <!-- END: Styles -->

    <!-- jQuery -->
    <script src="../assets/vendor/jquery/dist/jquery.min.js"></script>
    
</head>

<body>
<header class="nk-header nk-header-opaque">
    
<!-- START: Top Contacts -->
<div class="nk-contacts-top">
    <div class="container">
        <div class="nk-contacts-left">
            <ul class="nk-social-links">
                <li><a target="_blank" class="nk-social-facebook" href="https://fb.com/groups/localhost"><span class="fab fa-facebook"></span></a></li>
                <li><a target="_blank" class="nk-social-youtube" href="#"><span class="fab fa-youtube"></span></a></li>
            </ul>
        </div>
        <div class="nk-contacts-right">
            <ul class="nk-contacts-icons">              
                <li>
                    <form method="post" action="./">
                        <button type="submit" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-info">
                            <span class="fa fa-user"></span>&ensp;Tài khoản
                        </button>
                    </form>
                </li>
            </ul>
        </div>
    </div>
</div>

    <nav class="nk-navbar nk-navbar-top nk-navbar-sticky nk-navbar-autohide">
        <div class="container">
            <div class="nk-nav-table">
                <a href="http://localhost/" class="nk-nav-logo">
                    <img src="../assets/images/logo.png" alt="HyperG" width="199">
                </a>
                <ul class="nk-nav nk-nav-right d-none d-lg-table-cell" data-nav-mobile="#nk-nav-mobile">
        </li>
        
        <li>
            <a href="../info">
                Thông tin
            </a>
        <li>

        <li>
            <a href="../forum">
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
            <a href="../downloads">
                Tải xuống
            </a><ul class="dropdown">
        </li>
        <li>
            <a href="../downloads/games">
                Trò chơi
            </a>
        </li>
        <li>
            <a href="../downloads/updates">
                Cập nhật
            </a>
        </li>
            </ul>
        
        <li></li>
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
 
<!-- START: Navbar Mobile -->
<div id="nk-nav-mobile" class="nk-navbar nk-navbar-side nk-navbar-right-side nk-navbar-overlay-content d-lg-none">
    <div class="nano">
        <div class="nano-content">
            <a href="http://localhost/" class="nk-nav-logo">
                <img src="../assets/images/logo.png" alt="" width="120">
            </a>
            <div class="nk-navbar-mobile-content">
                <ul class="nk-nav">
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- END: Navbar Mobile -->

<div class="nk-main">  
<!-- START: Breadcrumbs -->
<div class="nk-gap-1"></div>
<div class="container">
    <ul class="nk-breadcrumbs">
        
        
        <li><a href="http://localhost/">Trang chủ</a></li>
        
        
        <li><span class="fa fa-angle-right"></span></li>
        
        <li><a href="./">Tài khoản</a></li>
        
        
        <li><span class="fa fa-angle-right"></span></li>
        
        <li><span>Tài khoản</span></li>
        
    </ul>
</div>
<div class="nk-gap-1"></div>
<!-- END: Breadcrumbs -->

    <div class="container">
        <div class="row vertical-gap">
            <div class="col-lg-8">
                <div class="nk-tabs">
                    <ul class="nav nav-tabs nav-tabs-fill" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" href="#dangnhaptab" role="tab" data-toggle="tab">Đăng nhập</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#dangkytab" role="tab" data-toggle="tab">Đăng ký</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#quenmktab" role="tab" data-toggle="tab">Quên mật khẩu</a>
                        </li>
                    </ul>
                <div class="tab-content">
                    <!-- Dang nhap -->
                    <div role="tabpanel" class="tab-pane fade show active" id="dangnhaptab">
                        <div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div>
                        <strong class="col-md-10">
                            Hãy nhập tài khoản và mật khẩu mà bạn đã đăng ký vào ô trống.<br />Nếu chưa có tài khoản, hãy nhấn vào nút "Đăng ký" phía trên để chuyển đến tab đăng ký.</strong>
                        <div class="nk-gap"></div>
                        <?php if(isset($_SESSION['auth_msg'])) { echo $_SESSION['auth_msg'];}?>
                        <div class="nk-gap"></div>

                        <form method="post" action="login.php" id="dangnhap" accept-charset="utf-8">
                            <div class="col-md-8">
                                <label>Tài khoản</label>
                                <input type="text" value="" name="log_taikhoan" id="log_taikhoan" class="form-control" placeholder="" required="true" rangelength="[6 24]" />
                                <div class="nk-gap"></div><div class="nk-gap"></div>

                                <label>Mật khẩu</label>
                                <input type="password" value="" name="log_matkhau" id="log_matkhau" class="form-control" placeholder="" required="true" minlength="6" />
                                <div class="nk-gap"></div><div class="nk-gap"></div>

                                <!-- <input type="checkbox" value="" name="log_remember" id="log_remember" checked /><strong>&ensp;Ghi nhớ</strong> -->
                            </div>
                            <div class="nk-gap"></div>

                            <div class="col-md-8">
                                <input type="submit" name="login" value="Đăng nhập tài khoản" class="nk-btn nk-btn-rounded nk-btn-color-white nk-btn-block" />
                            </div>
                        </form>

                        <div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div>
        			</div>

                    <!-- Dang ky -->
                    <div role="tabpanel" class="tab-pane fade" id="dangkytab">
                        <div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div>
                        <strong class="col-md-10">Lưu ý: Không đăng ký cùng một lúc quá nhiều tài khoản trong cùng một IP, không clone tài khoản nhằm mục đích cá nhân hoặc mục đích xấu.</strong>
                        <div class="nk-gap"></div>
                        <?php if(isset($_SESSION['auth_msg'])) { echo $_SESSION['auth_msg'];}?>
                        <div class="nk-gap"></div>

                        <form method="post" action="register.php">
                            <div class="col-md-8">
                                <label>Tài khoản</label>
                                <input type="text" value="" name="reg_taikhoan" id="reg_taikhoan" class="form-control" placeholder="" required="true" rangelength="[6 24]" />
                                <div class="nk-gap"></div><div class="nk-gap"></div>

                                <label>Email</label>
                                <input type="email" value="" name="reg_email" id="reg_email" class="form-control" placeholder="" required="true" email="true" />
                                <div class="nk-gap"></div><div class="nk-gap"></div>

                                <label>Mật khẩu</label>
                                <input type="password" value="" name="reg_matkhau" id="reg_matkhau" class="form-control" placeholder="" required="true" minlength="6" />
                                <div class="nk-gap"></div><div class="nk-gap"></div>
  
                                <label>Xác nhận</label>
                                <input type="password" value="" name="reg_xacnhan" id="reg_xacnhan" class="form-control" placeholder="" required="true" equalTo="#reg_matkhau" />
                            </div>

                            <div class="col-md-5">
                                <div class="nk-gap"></div><div class="nk-gap"></div>
                                <label>Mật khẩu cấp 2</label>
                                <input type="password" value="" name="reg_mkcap2" id="reg_mkcap2" class="form-control" placeholder="" digits="true" minlength="6" maxlength="6" />
                            </div>                                              
                            <div class="nk-gap"></div>

                            <span class="col-md-10">Mật khẩu cấp 2 phải gồm 6 chữ số. Bỏ qua nếu không cần thiết.</span>

                            <div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div>

                            <div class="col-md-8">
                                <input type="submit" name="register" value="Đăng ký tài khoản" class="nk-btn nk-btn-rounded nk-btn-color-white nk-btn-block" />
                            </div>
                        </form>

                        <div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div>
                    </div>

                    <!-- Quen mk -->
                    <div role="tabpanel" class="tab-pane fade" id="quenmktab">
                        <div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div>
                        <strong class="col-md-10">Lưu ý : Khi thư xác nhận được gửi về email của bạn, hãy đăng nhập và kiểm tra "Hộp thư đến", "Quảng cáo", "Thư rác" hoặc "Spam" để lấy mã xác nhận và liên kết.</strong>
                        <div class="nk-gap"></div>
                        <?php if(isset($_SESSION['auth_msg'])) { echo $_SESSION['auth_msg'];}?>
                        <div class="nk-gap"></div>

                        <form method="post" action="forgot.php">
                            <div class="col-md-8">
                                <label>Email</label>
                                <input type="email" value="" name="fg_email" id="fg_email" class="form-control" placeholder="" required="true" email="true" />
                            </div>
                            <div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div>

                            <div class="col-md-8">
                                <input type="submit" name="forgot" value="Gửi liên kết và mã xác nhận" class="nk-btn nk-btn-rounded nk-btn-color-white nk-btn-block" />
                            </div>
                        </form>

                        <div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div><div class="nk-gap"></div>
                    </div>
        		</div>
        	</div>
    	</div>
        <div class="col-lg-4">
            <!--
                START: Sidebar

                Additional Classes:
                    .nk-sidebar-left
                    .nk-sidebar-right
                    .nk-sidebar-sticky
            -->
            <aside class="nk-sidebar nk-sidebar-right nk-sidebar-sticky">
                <div class="nk-widget"></div>
            </aside>
        </div>
    </div>
                <!-- END: Sidebar -->
            </div>
        </div>
    

    <div class="nk-gap-2"></div>


    </div></div>
<!-- START: Footer -->
<footer class="nk-footer">

    <div class="nk-copyright">
        <div class="container">
            <div class="nk-copyright-left">
                <a href="../">HyperG Community Vietnam</a>
            </div>
            <div class="nk-copyright-right">
                <ul class="nk-social-links-2">
                    <li><a target="_blank" class="nk-social-facebook" href="https://fb.com/groups/localhost"><span class="fab fa-facebook"></span></a></li>
                    <li><a target="_blank" class="nk-social-youtube" href="#"><span class="fab fa-youtube"></span></a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>
<!-- END: Footer -->

        
    </div>


<!-- START: Page Background -->

<img class="nk-page-background-top" src="../assets/images/bg-top-4.png" alt="">
<img class="nk-page-background-bottom" src="../assets/images/bg-bottom.png" alt="">

<!-- END: Page Background -->

<!-- START: Scripts -->

<!-- Object Fit Polyfill -->
<script src="../assets/vendor/object-fit-images/dist/ofi.min.js"></script>

<!-- GSAP -->
<script src="../assets/vendor/gsap/src/minified/TweenMax.min.js"></script>
<script src="../assets/vendor/gsap/src/minified/plugins/ScrollToPlugin.min.js"></script>

<!-- Popper -->
<script src="../assets/vendor/popper.js/dist/umd/popper.min.js"></script>

<!-- Bootstrap -->
<script src="../assets/vendor/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Sticky Kit -->
<script src="../assets/vendor/sticky-kit/dist/sticky-kit.min.js"></script>

<!-- Jarallax -->
<script src="../assets/vendor/jarallax/dist/jarallax.min.js"></script>
<script src="../assets/vendor/jarallax/dist/jarallax-video.min.js"></script>

<!-- imagesLoaded -->
<script src="../assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>

<!-- Flickity -->
<script src="../assets/vendor/flickity/dist/flickity.pkgd.min.js"></script>

<!-- Photoswipe -->
<script src="../assets/vendor/photoswipe/dist/photoswipe.min.js"></script>
<script src="../assets/vendor/photoswipe/dist/photoswipe-ui-default.min.js"></script>

<!-- Jquery Validation -->
<script src="../assets/vendor/jquery-validation/dist/jquery.validate.min.js"></script>

<!-- Jquery Countdown + Moment -->
<script src="../assets/vendor/jquery-countdown/dist/jquery.countdown.min.js"></script>
<script src="../assets/vendor/moment/min/moment.min.js"></script>
<script src="../assets/vendor/moment-timezone/builds/moment-timezone-with-data.min.js"></script>

<!-- Hammer.js -->
<script src="../assets/vendor/hammerjs/hammer.min.js"></script>

<!-- NanoSroller -->
<script src="../assets/vendor/nanoscroller/bin/javascripts/jquery.nanoscroller.js"></script>

<!-- SoundManager2 -->
<script src="../assets/vendor/soundmanager2/script/soundmanager2-nodebug-jsmin.js"></script>

<!-- Seiyria Bootstrap Slider -->
<script src="../assets/vendor/bootstrap-slider/dist/bootstrap-slider.min.js"></script>

<!-- Summernote -->
<script src="../assets/vendor/summernote/dist/summernote-bs4.min.js"></script>

<!-- nK Share -->
<script src="../assets/plugins/nk-share/nk-share.js"></script>

<!-- HyperG -->
<script src="../assets/js/hyperg.min.js"></script>
<script src="../assets/js/hyperg-init.js"></script>

<!-- JQ Validation - Vietnamese Language -->
<script type="text/javascript"> $.extend($.validator.messages, {
    required: "Trường hợp này là bắt buộc!",
    minlength: "Độ dài tối thiểu là {0} kí tự!",
    maxlength: "Độ dài tối đa là {0} kí tự!",
    equalTo: "Thông tin không trùng khớp!",
    remote: "Hãy chỉnh lại thông tin này!",
    email: "Địa chỉ email không hợp lệ!",
    url: "Địa chỉ URL không hợp lệ!",
    date: "Ngày tháng không hợp lệ!",
    dateISO: "Ngày tháng không hợp lệ (ISO)!",
    number: "Giá trị không hợp lệ!",
    digits: "Chỉ được phép nhập chữ số!",
    rangelength: "Độ dài phải nằm trong khoảng {0} đến {1} kí tự!",
    range: "Giá trị phải nằm trong khoảng {0} đến {1} đơn vị.",
    max: "Giá trị phải nhỏ hơn hoặc bằng {0} đơn vị!",
    min: "Giá trị phải lớn hơn hoặc bằng {0} đơn vị!",
    step: "Giá trị phải là những số chia hết cho {0} đơn vị!"});
</script>
<!-- END: Scripts -->

<?php
    unset($_SESSION['auth_msg']); 
?>

</body>
</html>

