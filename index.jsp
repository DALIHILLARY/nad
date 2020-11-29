<!DOCTYPE html>
<html lang="en">
	<head>
		<style>
		input::placeholder{
			color:white;
			opacity:1;
		}
		
		</style>
			<meta charset="utf-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<!--=== Favicon ===-->
			<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
		
			<title>HOME PAGE</title>
			<!--=== Bootstrap CSS ===-->
			<link href="assets/css/bootstrap.min.css" rel="stylesheet">
			<!--=== Slicknav CSS ===-->
			<link href="assets/css/plugins/slicknav.min.css" rel="stylesheet">
			<!--=== Magnific Popup CSS ===-->
			<link href="assets/css/plugins/magnific-popup.css" rel="stylesheet">
			<!--=== Owl Carousel CSS ===-->
			<link href="assets/css/plugins/owl.carousel.min.css" rel="stylesheet">
			<!--=== Gijgo CSS ===-->
			<link href="assets/css/plugins/gijgo.css" rel="stylesheet">
			<!--=== FontAwesome CSS ===-->
			<link href="assets/css/font-awesome.css" rel="stylesheet">
			<!--=== Theme Reset CSS ===-->
			<link href="assets/css/reset.css" rel="stylesheet">
			<!--=== Main Style CSS ===-->
			<link href="style2.css" rel="stylesheet">
			<!--=== Responsive CSS ===-->
			<link href="assets/css/responsive.css" rel="stylesheet">
		
		
			<!--[if lt IE 9]>
				<script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
				<script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
			<![endif]-->
		</head>

		
        <!-- Session mgt -->
<!-- <%
String id = (String) session.getAttribute("id");

		
if(id != null){
    response.sendRedirect("home.jsp");
}
%> -->
<body style="background-color: #666666;">
	<body class="loader-active">

		<!--== Preloader Area Start ==-->
		<div class="preloader">
			<div class="preloader-spinner">
				<div class="loader-content">
					<img src="assets/img/preloader.gif" alt="JSOFT">
				</div>
			</div>
		</div>
		<!--== Preloader Area End ==-->
	
		<!--== Header Area Start ==-->
		<header id="header-area" class="fixed-top">
			<!--== Header Top Start ==-->
			<div id="header-top" class="d-none d-xl-block">
				<div class="container">
					<div class="row">
						<!--== Single HeaderTop Start ==-->
						<div class="col-lg-3 text-left">
							<i class="fa fa-map-marker"></i> P.O.Box 70189, Kampala,Uganda
						</div>
						<!--== Single HeaderTop End ==-->
	
						<!--== Single HeaderTop Start ==-->
						<div class="col-lg-3 text-center">
							<i class="fa fa-mobile"></i> +256 702 480 141
						</div>
						<!--== Single HeaderTop End ==-->
	
						<!--== Single HeaderTop Start ==-->
						<div class="col-lg-3 text-center">
							<i class="fa fa-clock-o"></i> Mon-Fri 09.00 - 17.00
						</div>
						<!--== Single HeaderTop End ==-->
	
					  
					</div>
				</div>
			</div>
			<!--== Header Top End ==-->
	
			<!--== Header Bottom Start ==-->
			<div id="header-bottom">
				<div class="container">
					<div class="row">
						<!--== Logo Start ==-->
						<div class="col-lg-4">
							<a href="#" class="logo">
								<img src="assets/img/logo.png" alt="JSOFT">
							</a>
						</div>
						<!--== Logo End ==-->
	
						<!--== Main Menu Start ==-->
						<div class="col-lg-8 d-none d-xl-block">
							<nav class="mainmenu alignt"righ>
								<ul>
									<li><a href="login.jsp">LOGIN</a></li>
									<li><a href="signup.jsp">SIGNUP</a></li>
									<li></li>
	
								</ul>
							</nav>
						</div>
						<!--== Main Menu End ==-->
					</div>
				</div>
			</div>
			<!--== Header Bottom End ==-->
		</header>
		<!--== Header Area End ==-->
	
		<!--== Page Title Area Start ==-->
		<section id="page-title-area" class="section-padding overlay">
			<div class="container">
				<div class="row">
					<!-- Page Title Start -->
					<div class="col-lg-12">
						<div class="section-title  text-center">
							<h2>WELCOME TO BUS-RESERVATION.0</h2>
							<span class="title-line"><i class="fa fa-bus"></i></span>
							<p>Experience the comfort of booking from anywhere at anytime</p>
						</div>
					</div>
					<!-- Page Title End -->
				</div>
			</div>
		</section>
		<!--== Page Title Area End ==-->
	
		
	
		<!--== Footer Area Start ==-->
		<section id="footer-area">
			<!-- Footer Widget Start -->
			<div class="footer-widget-area">
				<div class="container">
					<div class="row">
						<!-- Single Footer Widget Start -->
						<div class="col-lg-4 col-md-6">
							<div class="single-footer-widget">
								<h2><u>About Us</u></h2>
								<div class="widget-body">
									<img src="assets/img/logo.png" alt="JSOFT">
									<p>At Link Bus Service Limited, serving you to the best of our abilities and ensurinng that you have such an amazing and memorable journey brings us great joy and satisfaction</p>
								</div>
							</div>
						</div>
						<!-- Single Footer Widget End -->
	
	
	
						<!-- Single Footer Widget Start -->
						<div class="col-lg-4 col-md-6">
							<div class="single-footer-widget">
								<h2><u>get in touch</u></h2>
								<div class="widget-body">
									<p>Feel free to reach out to  us  with any of the following contacts for any queries</p>
	
									<ul class="get-touch">
										<li><i class="fa fa-map-marker"></i> P.O.Box 70189, Kampala, Uganda</li>
										<li><i class="fa fa-mobile"></i> +256 702 480 141</li>
										<li><i class="fa fa-envelope"></i>admin@link.co.ug</li>
									</ul>
								</div>
							</div>
						</div>
						<!-- Single Footer Widget End -->
					</div>
					
				</div>
			</div>
			<!-- Footer Widget End -->
	
			<!-- Footer Bottom Start -->
			<div class="footer-bottom-area">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 text-center">
							<p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This system was made by <a href="">Makerere University</a>
	<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
						</div>
					</div>
				</div>
			</div>
			<!-- Footer Bottom End -->
		</section>
		<!--== Footer Area End ==-->
	
		<!--== Scroll Top Area Start ==-->
		<div class="scroll-top">
			<img src="assets/img/scroll-top.png" alt="JSOFT">
		</div>
	
 <!--== Scroll Top Area End ==-->

    <!--=======================Javascript============================-->
    <!--=== Jquery Min Js ===-->
    <script src="assets/js/jquery-3.2.1.min.js"></script>
    <!--=== Jquery Migrate Min Js ===-->
    <script src="assets/js/jquery-migrate.min.js"></script>
    <!--=== Popper Min Js ===-->
    <script src="assets/js/popper.min.js"></script>
    <!--=== Bootstrap Min Js ===-->
    <script src="assets/js/bootstrap.min.js"></script>
    <!--=== Gijgo Min Js ===-->
    <script src="assets/js/plugins/gijgo.js"></script>
    <!--=== Vegas Min Js ===-->
    <script src="assets/js/plugins/vegas.min.js"></script>
    <!--=== Isotope Min Js ===-->
    <script src="assets/js/plugins/isotope.min.js"></script>
    <!--=== Owl Caousel Min Js ===-->
    <script src="assets/js/plugins/owl.carousel.min.js"></script>
    <!--=== Waypoint Min Js ===-->
    <script src="assets/js/plugins/waypoints.min.js"></script>
    <!--=== CounTotop Min Js ===-->
    <script src="assets/js/plugins/counterup.min.js"></script>
    <!--=== YtPlayer Min Js ===-->
    <script src="assets/js/plugins/mb.YTPlayer.js"></script>
    <!--=== Magnific Popup Min Js ===-->
    <script src="assets/js/plugins/magnific-popup.min.js"></script>
    <!--=== Slicknav Min Js ===-->
    <script src="assets/js/plugins/slicknav.min.js"></script>

    <!--=== Mian Js ===-->
    <script src="assets/js/main.js"></script>
	

	
	


</body>
</html>