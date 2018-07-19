<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Tavern - Responsive Restaurant Template(Bootstrap 4)</title>
	<!-- Favicons-->
	<link rel="shortcut icon" href="resources/assets/images/favicon.png">
	<link rel="apple-touch-icon" href="resources/assets/images/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="resources/assets/images/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="resources/assets/images/apple-touch-icon-114x114.png">
	<!-- Web Fonts-->
	<link href="https://fonts.googleapis.com/css?family=PT+Serif%7cSignika:300,400,600,700" rel="stylesheet">
	<!-- Bootstrap core CSS-->
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" rel="stylesheet">
	<!-- Plugins and Icon Fonts-->
	<link href="resources/assets/css/plugins.min.css" rel="stylesheet">
	<!-- Template core CSS-->
	<link href="resources/assets/css/template.css" rel="stylesheet">
	
	<!-- naver map API -->
	<script type="text/javascript"
		src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=Vj_z1VQ7HqR8A0hX5tnL&submodules=geocoder">
	</script>
	
</head>
<body>

<!-- Preloader-->
<div class="page-loader">
	<div class="loader"></div>
</div>
<!-- Preloader end-->

<!-- Header-->
<jsp:include page="/WEB-INF/views/include/header.jsp" /><br><br><br>
<!-- Header end-->

<!-- Wrapper-->
<div class="wrapper">

	<!-- Page Header-->
	<section class="module-page-title">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-6">
					<h1 class="page-title-heading">Elements</h1>
				</div>
				<div class="col-md-6">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item"><a href="#">Pages</a></li>
						<li class="breadcrumb-item active">Elements</li>
					</ol>
				</div>
			</div>
		</div>
	</section>
	<!-- Page Header end-->

	<!-- Maps-->
	<section class="module divider-top">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div id="map" style="width:100%; height:700px;"></div>
					<script type="text/javascript">
						var HOME_PATH = window.HOME_PATH || '.';
						var position = new naver.maps.LatLng(37.485344, 126.901107);
						
						var map = new naver.maps.Map('map', {
							center: position,
						    zoom: 10
						});
						
						var marker = new naver.maps.Marker({
							map: map,
						    position: new naver.maps.LatLng(37.485344, 126.901107),
						    icon: '/resources/assets/images/icon1.gif'
						});
						
						var markerOptions = {
								
						};
						
						var contentString = [
						        '<div class="iw_inner">',
						        '   <h3>서울특별시청</h3>',
						        '   <p>서울특별시 중구 태평로1가 31 | 서울특별시 중구 세종대로 110 서울특별시청<br />',
						        /* '       <img src="'+ HOME_PATH +'/img/example/hi-seoul.jpg" width="55" height="55" alt="서울시청" class="thumb" /><br />', */
						        '       02-120 | 공공,사회기관 &gt; 특별,광역시청<br />',
						        '       <a href="http://www.seoul.go.kr" target="_blank">www.seoul.go.kr/</a>',
						        '   </p>',
						        '</div>'
						    ].join('');
	
						var infowindow = new naver.maps.InfoWindow({
						    content: contentString,
						    maxWidth: 140,
						    backgroundColor: "#eee",
						    borderColor: "#2db400",
						    borderWidth: 5,
						    anchorSize: new naver.maps.Size(30, 30), //창 아래 화살표
						    anchorSkew: true,
						    anchorColor: "#eee",
						    pixelOffset: new naver.maps.Point(20, -20) //창 위치
						});
	
						naver.maps.Event.addListener(marker, "click", function(e) {
						    if (infowindow.getMap()) {
						        infowindow.close();
						    } else {
						        infowindow.open(map, marker);
						    }
						});
					</script>
				</div>
			</div>
		</div>
	</section>


	<br><br>


	<svg class="footer-circle" xmlns="http://www.w3.org/2000/svg" version="1.1" width="100%" height="100" viewbox="0 0 100 100" preserveaspectratio="none">
		<path d="M0 100 C40 0 60 0 100 100 Z"></path>
	</svg>
	
	<!-- Footer-->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	<!-- Footer end-->
</div>
<!-- Wrapper end-->

<!-- Off canvas-->
<div class="off-canvas-sidebar" data-background="resources/assets/images/sidebar.jpg">
	<div class="off-canvas-sidebar-wrapper">
		<div class="off-canvas-header"><a class="close-offcanvas" href="#"><span class="arrows arrows-arrows-remove"></span></a></div>
		<div class="off-canvas-content">
			<!-- Text widget-->
			<aside class="widget widget_text">
				<div class="textwidget">
					<p><img src="resources/assets/images/logo-light.png" width="74px" alt=""></p>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</p>
					<ul class="icon-list">
						<li><i class="ti-email"></i> info@themebusiness.com</li>
						<li><i class="ti-headphone-alt"></i> 1-444-123-4559</li>
						<li><i class="ti-location-pin"></i> Raymond Boulevard 224, New York</li>
					</ul>
				</div>
			</aside>
			<!-- Recent portfolio widget-->
			<aside class="widget widget_recent_works">
				<div class="widget-title">
					<h5>Instagram</h5>
				</div>
				<ul>
					<li><a href="#"><img src="resources/assets/images/widgets/1.jpg" alt=""></a></li>
					<li><a href="#"><img src="resources/assets/images/widgets/2.jpg" alt=""></a></li>
					<li><a href="#"><img src="resources/assets/images/widgets/3.jpg" alt=""></a></li>
					<li><a href="#"><img src="resources/assets/images/widgets/4.jpg" alt=""></a></li>
					<li><a href="#"><img src="resources/assets/images/widgets/5.jpg" alt=""></a></li>
					<li><a href="#"><img src="resources/assets/images/widgets/6.jpg" alt=""></a></li>
				</ul>
			</aside>
			<!-- Text widget-->
			<!--aside.widget.widget_text
			.textwidget
				.up-logo
					p.text-center.m-b-50: img(src="resources/assets/images/logo-light.png" width="100" alt="")
				.up-form
					form(method="post")
						.form-group
							input.form-control.form-control-lg(type="email" placeholder="Email")
						.form-group
							input.form-control.form-control-lg(type="password" placeholder="Pasword")
						.form-group
							button(type="submit" class="btn btn-block btn-lg btn-round btn-brand") Log in
				.up-help
					p: a(href="#") Forgot your password?
					p Don't have an account yet? <a href="#">Sign in</a>
			
			-->

			<!-- Twitter widget-->
			<aside class="widget twitter-feed-widget">
				<div class="widget-title">
					<h5>Twitter Feed</h5>
				</div>
				<div class="twitter-feed" data-twitter="345170787868762112" data-number="2"></div>
			</aside>
			<ul class="social-icons">
				<li><a href="#"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter"></i></a></li>
				<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
				<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
				<li><a href="#"><i class="fa fa-vk"></i></a></li>
			</ul>
		</div>
	</div>
</div>
<!-- Off canvas end-->

<!-- Reserve Popup-->
<div class="white-popup-block mfp-hide" id="test-form">
	<div class="container">
		<div class="row">
			<div class="col-md-4 p-0">
				<div class="qwert" data-background="resources/assets/images/module-2.jpg"></div>
			</div>
			<div class="col-md-8">
				<div class="ddd"><a class="popup-modal-dismiss" href="#"><i class="ti-close"></i></a>
					<h1 class="display-1">Book a Table</h1>
					<p class="lead">See how your users experience your website in realtime or view <br/> trends to see any changes in performance over time.</p>
					<div class="divider-border-left"></div>
					<div class="space" data-mY="60px"></div>
					<form method="post" novalidate>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<input class="form-control" type="text" name="name" placeholder="Name" required="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input class="form-control" type="text" name="name" placeholder="Phone" required="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input class="form-control" type="email" name="email" placeholder="E-mail" required="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input class="form-control" type="text" name="subject" placeholder="Persons" required="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input class="form-control" type="email" name="email" placeholder="Date" required="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input class="form-control" type="text" name="subject" placeholder="Time" required="">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<textarea class="form-control" name="message" placeholder="Special Requests" rows="6" required=""></textarea>
								</div>
							</div>
							<div class="col-md-12">
								<input class="btn btn-black" type="submit" value="Reserve">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Reserve Popup end-->

<!-- To top button--><a class="scroll-top" href="#top"><span class="fa fa-angle-up"></span></a>

<!-- Scripts-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
	<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyA0rANX07hh6ASNKdBr4mZH0KZSqbHYc3Q"></script>
	<script src="resources/assets/js/plugins.min.js"></script>
	<script src="resources/assets/js/custom.min.js"></script>
</body>
</html>