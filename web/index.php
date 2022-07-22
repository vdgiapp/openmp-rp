
<?php
    session_start();
    date_default_timezone_set('Asia/Ho_Chi_Minh');
    
    $database = mysqli_connect('localhost', 'root', '', 'sa-mp');
    if(isset($_SESSION['logged'])) {
        if($_SESSION['logged'] == 1) {
            $taikhoan = $_SESSION['taikhoan'];
            $matkhau = $_SESSION['matkhau'];
            $query = "SELECT * FROM `hgc.accounts` WHERE `Account`='$taikhoan' AND `Password`='$matkhau'";
            mysqli_query($database, "SET NAMES 'utf8'");
            $result = mysqli_query($database, $query);
            if(mysqli_num_rows($result) > 0) $rdata = mysqli_fetch_assoc($result);
            if($rdata['HGSA'] == 1) return include("auth/logout.php");
            if($rdata['Token'] != $_SESSION['token']) return header("location: auth/logout.php");
        }
    }
?>

<!DOCTYPE html>

<html lang="vi">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>HyperG Community Vietnam</title>

    <meta name="author" content="HyperG Community Vietnam">
    <meta name="description" content="HyperG Community Vietnam">
    <meta name="keywords" content="sa-mp vietnam, samp việt nam, samp việt, gta roleplay, gta online, hgc roleplay, sa-mp roleplay, sa-mp viet, sa-mp tdm, sa-mp dm, san andreas multiplayer, gta v roleplay, gta v vietnam, gta vietnam, hgc rp, hgc-rp, hgc group, hyperg community vn, hyperg community vietnam, hyperg san andreas, gta viet, gta sa full rip, luat rp, luật rp, hyperg gta, hyperg samp, hyperg gtav">

    <!-- Google / Search Engine Tags -->
    <meta itemprop="name" content="HyperG Community Vietnam">
    <meta itemprop="description" content="Chào mừng bạn đã đến HyperG Community Vietnam. Đây là một cộng đồng được phát triển lên từ một client của trò chơi GTA San Andreas mang tên SA-MP. Hãy khám phá cộng đồng của chúng tôi!">
    <meta itemprop="image" content="favicon.png">

    <!-- Facebook Meta Tags -->
    <meta property="og:url" content="http://hyperg.vn">
    <meta property="og:type" content="website">
    <meta property="og:title" content="HyperG Community Vietnam">
    <meta property="og:description" content="Chào mừng bạn đã đến HyperG Community Vietnam. Đây là một cộng đồng được phát triển lên từ một client của trò chơi GTA San Andreas mang tên SA-MP. Hãy khám phá cộng đồng của chúng tôi!">
    <meta property="og:image" content="favicon.png">

    <!-- Twitter Meta Tags -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="HyperG Community Vietnam">
    <meta name="twitter:description" content="Chào mừng bạn đã đến HyperG Community Vietnam. Đây là một cộng đồng được phát triển lên từ một client của trò chơi GTA San Andreas mang tên SA-MP. Hãy khám phá cộng đồng của chúng tôi!">
    <meta name="twitter:image" content="favicon.png">

    <link rel="icon" type="image/png" href="./favicon.png">

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">


    <!-- START: Styles -->
    <!-- Google Fonts -->
    <link href="assets/css/open-sans.css" rel="stylesheet" type="text/css">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/dist/css/bootstrap.min.css">

    <!-- FontAwesome -->
    <script defer src="assets/vendor/fontawesome-free/js/all.js"></script>
    <script defer src="assets/vendor/fontawesome-free/js/v4-shims.js"></script>

    <!-- IonIcons -->
    <link rel="stylesheet" href="assets/vendor/ionicons/css/ionicons.min.css">

    <!-- Flickity -->
    <link rel="stylesheet" href="assets/vendor/flickity/dist/flickity.min.css">

    <!-- Photoswipe -->
    <link rel="stylesheet" type="text/css" href="assets/vendor/photoswipe/dist/photoswipe.css">
    <link rel="stylesheet" type="text/css" href="assets/vendor/photoswipe/dist/default-skin/default-skin.css">

    <!-- Seiyria Bootstrap Slider -->
    <link rel="stylesheet" href="assets/vendor/bootstrap-slider/dist/css/bootstrap-slider.min.css">

    <!-- Summernote -->
    <link rel="stylesheet" type="text/css" href="assets/vendor/summernote/dist/summernote-bs4.css">

    <!-- HyperG -->
    <link rel="stylesheet" href="assets/css/hyperg.css">

    <!-- Custom Styles -->
    <link rel="stylesheet" href="assets/css/custom.css">
    
    <!-- END: Styles -->

    <!-- jQuery -->
    <script src="assets/vendor/jquery/dist/jquery.min.js"></script>
    
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
                                    echo '<form method="post" action="account/settings">
                                                <button type="submit" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-info">
                                                    <span class="fa fa-user"></span>&ensp;'.$rdata['DisplayName'].'&ensp;-&ensp;PID: '.$rdata['PID'].' &ensp;
                                                </button>
                                            </form>';
                                }
                                else echo '<form method="post" action="auth">
                                                <button type="submit" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-info">
                                                    <span class="fa fa-user"></span>&ensp;Tài khoản
                                                </button>
                                            </form>';
                            }
                            else echo '<form method="post" action="auth">
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
                
                <a href="" class="nk-nav-logo">
                    <img src="assets/images/logo.png" alt="HyperG" width="199">
                </a>
                
                <ul class="nk-nav nk-nav-right d-none d-lg-table-cell" data-nav-mobile="#nk-nav-mobile">
 
        </li>
        
        <li>
            <a href="info">
                Thông tin
            </a>
        <li>

        <li>
            <a href="forum">
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
            <a href="downloads">
                Tải xuống
            </a><ul class="dropdown">
        </li>
        <li>
            <a href="downloads/games">
                Trò chơi
            </a>
        </li>
        <li>
            <a href="downloads/updates">
                Cập nhật
            </a>
        </li>
    		</ul>

        <?php
            if(isset($_SESSION['logged'])) {
                if($_SESSION['logged'] == 1) {
                    echo '<li class=" nk-drop-item">
                            <a href="account/settings">Tài khoản</a>
                            <ul class="dropdown">
                        </li>
                        <li><a href="account/hgsa.cp">Nhân vật (HG:SA)</a></li>
                        <li><a href="account/settings">Cài đặt tài khoản</a></li>
                        <li><a href="auth/logout.php">Đăng xuất</a></li>
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

<div id="nk-nav-mobile" class="nk-navbar nk-navbar-side nk-navbar-right-side nk-navbar-overlay-content d-lg-none">
    <div class="nano">
        <div class="nano-content">
            <a href="" class="nk-nav-logo">
                <img src="assets/images/logo.png" alt="" width="120">
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

    <?php
        if(isset($_SESSION['logged'])) {
            sscanf($rdata['Birthday'], "%d %d %d", $bday, $bmonth, $byear);
            if(date("d") == $bday && date("m") == $bmonth) {
                echo '<div class="nk-info-box text-info">
                    <div class="nk-info-box-icon">
                        <i class="ion-information"></i>
                    </div>
                    
                    <h3>Chúc mừng sinh nhật!</h3>
                    <strong>Hôm này là ngày '.date("d").'/'.date("m").'/'.date("Y").' - ngày sinh nhật của bạn, '.$rdata['Account'].'! Chúc bạn có những giây phút vui vẻ, hạnh phúc bên người thân, bạn bè. Hi vọng bạn sẽ thành công, hạnh phúc trong công việc và cuộc sống.<br /><br /> - From : HyperG Community Vietnam</strong>
                </div>';
            }
            else echo '';
        }
        else echo '';
    ?>

    <!-- START: Image Slider -->
    <div class="nk-image-slider" data-autoplay="10000">
        
        <div class="nk-image-slider-item">
            <img src="assets/images/slide-1.jpg" alt="" class="nk-image-slider-img" data-thumb="assets/images/slide-1.jpg">
            
            <div class="nk-image-slider-content">
                
                    <h3 class="h4">HyperG San Andreas</h3>
                    <p class="text-white">Một máy chủ nhập vai thuộc trò chơi GTA San Andreas trên nền tảng SA-MP cho cả PC và Mobile. Máy chủ được tích hợp voicechat giúp giao tiếp trở nên dễ dàng hơn. Hãy tham gia máy chủ ngay!<br /><br />IP: HyperG.VN:7777</p>
                    <a target="_blank" href="https://monitor.sacnr.com/checker.html?hyperg.vn:7777" class="nk-btn nk-btn-rounded nk-btn-color-white nk-btn-hover-color-main-1">Thông tin</a>
                
            </div>
            
        </div>

        <div class="nk-image-slider-item">
            <img src="assets/images/slide-2.jpg" alt="" class="nk-image-slider-img" data-thumb="assets/images/slide-2.jpg">
            
            <div class="nk-image-slider-content">
                
                    <h3 class="h4">HyperG San Andreas</h3>
                    <p class="text-white">Một máy chủ nhập vai thuộc trò chơi GTA San Andreas trên nền tảng SA-MP cho cả PC và Mobile. Máy chủ được tích hợp voicechat giúp giao tiếp trở nên dễ dàng hơn. Hãy tham gia máy chủ ngay!<br /><br />IP: HyperG.VN:7777</p>
                    <a href="https://monitor.sacnr.com/checker.html?hyperg.vn:7777" class="nk-btn nk-btn-rounded nk-btn-color-white nk-btn-hover-color-main-1">Thông tin</a>
                
            </div>
            
        </div>
        
    </div>
    <!-- END: Image Slider -->
    
    <!-- START: Latest News -->
    <div class="nk-gap-2"></div>
    <h3 class="nk-decorated-h-2"><span><span class="text-main-1">Information </span>- Thông tin</span></h3>
    <div class="nk-gap"></div>

    <div class="nk-news-box">
        <div class="nk-news-box-list">
            <div class="nano">
                <div class="nano-content">
                    
                    
                    <div class="nk-news-box-item nk-news-box-item-active">
                        <div class="nk-news-box-item-img">
                            <img src="assets/images/post-1-sm.jpg" alt="Tin1">
                        </div>
                        <img src="assets/images/post-1.jpg" alt="Smell magic in the air. Or maybe barbecue" class="nk-news-box-item-full-img">
                        <h3 class="nk-news-box-item-title">Chào mừng HyperG San Andreas</h3>
                        
                        <span class="nk-news-box-item-categories">
                            <span class="bg-main-4">Sự kiện</span>
                        </span>
                        
                        <div class="nk-news-box-item-text">
                            <p>Chào mừng các bạn đã đến với HyperG San Andreas, đây là một máy chủ SA-MP thuộc thể loại Roleplay. Máy chủ được tích hợp voicechat cũng như những hệ thống độc lạ mang đến cho bạn một trải nghiệm hoàn toàn mới...</p>
                        </div>
                        <a href="info/" class="nk-news-box-item-url">Chi tiết</a>
                        <div class="nk-news-box-item-date"><span class="fa fa-calendar"></span> 01/10/2021</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="nk-news-box-each-info">
            <div class="nano">
                <div class="nano-content">
                    <!-- There will be inserted info about selected news-->
                    <div class="nk-news-box-item-image">
                        <img src="assets/images/post-1.jpg" alt="">
                        <span class="nk-news-box-item-categories">
                            <span class="bg-main-4">Sự kiện</span>
                        </span>
                    </div>
                    <h3 class="nk-news-box-item-title">Chào mừng HyperG San Andreas</h3>
                    <div class="nk-news-box-item-text">
                        <p>Chào mừng các bạn đã đến với HyperG San Andreas, đây là một máy chủ SA-MP thuộc thể loại Roleplay. Máy chủ được tích hợp voicechat cũng như những hệ thống độc lạ mang đến cho bạn một trải nghiệm hoàn toàn mới...</p>
                    </div>
                    <a href="info/" class="nk-news-box-item-more">Chi tiết</a>
                    <div class="nk-news-box-item-date">
                        <span class="fa fa-calendar"></span> 03/10/2021
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="nk-gap-2"></div>
    <div class="nk-blog-grid">
        <div class="row">
            
            
            <div class="col-md-6 col-lg-3">
                <!-- START: Post -->
                <div class="nk-blog-post">
                    <a href="info/" class="nk-post-img">
                        <img src="assets/images/post-5-mid.jpg" alt="Post1">
                        <!-- Comments
                        <span class="nk-post-comments-count">13</span>
                        -->
                        
                        <span class="nk-post-categories">
                                    <span class="bg-main-5">Sự kiện</span>
                                </span>
                        
                    </a>
                    <div class="nk-gap"></div>
                    <h2 class="nk-post-title h4"><a href="info/">Chào mừng</a></h2>
                    <div class="nk-post-text">
                        <p>Bla bla..</p>
                    </div>
                    <div class="nk-gap"></div>
                    <a href="info/" class="nk-btn nk-btn-rounded nk-btn-color-dark-3 nk-btn-hover-color-main-1">Đọc thêm</a>
                    <div class="nk-post-date float-right"><span class="fa fa-calendar"></span> 01/10/2021</div>
                </div>
                <!-- END: Post -->
            </div>
        </div>
    </div>
    <!-- END: Latest News -->
    </div></div></div>

<div class="nk-gap-4"></div>


        
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

    <img class="nk-page-background-top" src="assets/images/bg-top-4.png" alt="">
    <img class="nk-page-background-bottom" src="assets/images/bg-bottom.png" alt="">

<!-- END: Page Background -->    

<!-- START: Scripts -->

<!-- Object Fit Polyfill -->
<script src="assets/vendor/object-fit-images/dist/ofi.min.js"></script>

<!-- GSAP -->
<script src="assets/vendor/gsap/src/minified/TweenMax.min.js"></script>
<script src="assets/vendor/gsap/src/minified/plugins/ScrollToPlugin.min.js"></script>

<!-- Popper -->
<script src="assets/vendor/popper.js/dist/umd/popper.min.js"></script>

<!-- Bootstrap -->
<script src="assets/vendor/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Sticky Kit -->
<script src="assets/vendor/sticky-kit/dist/sticky-kit.min.js"></script>

<!-- Jarallax -->
<script src="assets/vendor/jarallax/dist/jarallax.min.js"></script>
<script src="assets/vendor/jarallax/dist/jarallax-video.min.js"></script>

<!-- imagesLoaded -->
<script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>

<!-- Flickity -->
<script src="assets/vendor/flickity/dist/flickity.pkgd.min.js"></script>

<!-- Photoswipe -->
<script src="assets/vendor/photoswipe/dist/photoswipe.min.js"></script>
<script src="assets/vendor/photoswipe/dist/photoswipe-ui-default.min.js"></script>

<!-- Jquery Validation -->
<script src="assets/vendor/jquery-validation/dist/jquery.validate.min.js"></script>

<!-- Jquery Countdown + Moment -->
<script src="assets/vendor/jquery-countdown/dist/jquery.countdown.min.js"></script>
<script src="assets/vendor/moment/min/moment.min.js"></script>
<script src="assets/vendor/moment-timezone/builds/moment-timezone-with-data.min.js"></script>

<!-- Hammer.js -->
<script src="assets/vendor/hammerjs/hammer.min.js"></script>

<!-- NanoSroller -->
<script src="assets/vendor/nanoscroller/bin/javascripts/jquery.nanoscroller.js"></script>

<!-- SoundManager2 -->
<script src="assets/vendor/soundmanager2/script/soundmanager2-nodebug-jsmin.js"></script>

<!-- Seiyria Bootstrap Slider -->
<script src="assets/vendor/bootstrap-slider/dist/bootstrap-slider.min.js"></script>

<!-- Summernote -->
<script src="assets/vendor/summernote/dist/summernote-bs4.min.js"></script>

<!-- nK Share -->
<script src="assets/plugins/nk-share/nk-share.js"></script>

<!-- HyperG -->
<script src="assets/js/hyperg.min.js"></script>
<script src="assets/js/hyperg-init.js"></script>
<!-- END: Scripts -->


</body>
</html>
