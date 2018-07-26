<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<title>활동량보기</title>
		<!-- Favicons-->
		<link rel="shortcut icon" href="/bikelong/resources/assets/images/favicon.png">
		<link rel="apple-touch-icon" href="/bikelong/resources/assets/images/apple-touch-icon.png">
		<link rel="apple-touch-icon" sizes="72x72" href="/bikelong/resources/assets/images/apple-touch-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="114x114" href="/bikelong/resources/assets/images/apple-touch-icon-114x114.png">
		<!-- Web Fonts-->
		<link href="https://fonts.googleapis.com/css?family=PT+Serif%7cSignika:300,400,600,700" rel="stylesheet">
		<!-- Bootstrap core CSS-->
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" rel="stylesheet">
		<!-- Plugins and Icon Fonts-->
		<link href="/bikelong/resources/assets/css/plugins.min.css" rel="stylesheet">
		<!-- Template core CSS-->
		<link href="/bikelong/resources/assets/css/template.css" rel="stylesheet">
		<style type="text/css">
		.module, .module-small, .module-cover {padding: 20px 0 50px;}
		
		</style>
	</head>
	<body>

		<!-- Preloader-->
		<div class="page-loader">
			<div class="loader"></div>
		</div>
		<!-- Preloader end-->

		<!-- Header-->
		<jsp:include page="/WEB-INF/views/include/header.jsp" /><br/><br/><br/>
		<!-- Header end-->

		<!-- Wrapper-->
		<div class="wrapper">
			<!-- Page Header-->
				<section class="module-page-title">
					<div class="container">
						<div class="row align-items-center">
							<div class="col-md-6">
								<h1 class="page-title-heading">Activity</h1>
							</div>
							<div class="col-md-6">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="/bikelong/index.action">Home</a></li>
									<li class="breadcrumb-item active">Activity</li>
								</ol>
							</div>
						</div>
					</div>
				</section>
			<div class="container" style="padding-top:50px;">
					<div class="row">
						<div class="col-md-6 m-auto text-center">
							<p class="subtitle">WELCOME TO BIKELONG</p>
							<h1 class="display-1">나의 활동량</h1>
							<p class="lead">나의 활동량을 확인해보세요.</p>
							<div class="divider-border"> </div>
						</div>
					</div>
			</div>
			
			<section class="module divider-top">
				<div class="container">
					<div class="row">
						<div class="col-md-3">
							<div class="counter">
								<div class="counter-icon"><span class="icon-gears"></span></div>
								<div class="counter-number">
									<div class="display-1 counter-timer" data-from="0" data-to="785">0</div>
								</div>
								<div class="counter-title">
									<h6><i class="ti-time">&nbsp;&nbsp;</i>이용시간</h6>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="counter">
								<div class="counter-icon"><span class="icon-linegraph"></span></div>
								<div class="counter-number">
									<div class="display-1 counter-timer" data-from="0" data-to="4052">0</div>
								</div>
								
								<div class="counter-title">
									<span><h6><i class="ti-car">&nbsp;&nbsp;</i>거리(km)</h6></span>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="counter">
								<div class="counter-icon"><span class="icon-tools"></span></div>
								<div class="counter-number">
									<div class="display-1 counter-timer" data-from="0" data-to="546">0</div>
								</div>
								<div class="counter-title">
									<h6><i class="ti-stats-up">&nbsp;&nbsp;</i>활동량(kcal)</h6>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="counter">
								<div class="counter-icon"><span class="icon-layers"></span></div>
								<div class="counter-number">
									<div class="display-1 counter-timer" data-from="0" data-to="468">0</div>
								</div>
								<div class="counter-title">
									<h6><i class="ti-stats-down">&nbsp;&nbsp;</i>탄소절감효과(kg)</h6>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>

			<!-- Pie Chart-->
			<section class="module divider-top">
				<div class="container">
					<div class="row">
						<div class="col-md-4">
							<div class="pie-chart">
								<div class="chart" data-percent="35"><span class="chart-text"><span><i class="icon-bike"></i></span></span></div>
								<div class="chart-title"><span>하루 활동량</span></div>
								<p><a class="btn btn-outline btn-sm btn-black" href="#">상세보기</a></p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="pie-chart">
								<div class="chart" data-percent="70"><span class="chart-text"><span><i class="icon-bike"></i></span></span></div>
								<div class="chart-title"><span>일주일 활동량</span></div>
								<p><a class="btn btn-outline btn-sm btn-black" href="#">상세보기</a></p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="pie-chart">
								<div class="chart" data-percent="100"><span class="chart-text"><span><i class="icon-bike"></i></span></span></div>
								<div class="chart-title"><span>한 달 활동량</span></div>
								<p><a class="btn btn-outline btn-sm btn-black" href="#">상세보기</a></p>
							</div>
						</div>
					</div>
				</div>
			</section>

			<svg class="footer-circle" xmlns="http://www.w3.org/2000/svg" version="1.1" width="100%" height="100" viewbox="0 0 100 100" preserveaspectratio="none">
				<path d="M0 100 C40 0 60 0 100 100 Z"></path>
			</svg>
			
			<!-- Footer-->
			<jsp:include page="/WEB-INF/views/include/footer.jsp" />
			<!-- Footer end-->

		<!-- To top button--><a class="scroll-top" href="#top"><span class="fa fa-angle-up"></span></a>

		<!-- Scripts-->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
		<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyA0rANX07hh6ASNKdBr4mZH0KZSqbHYc3Q"></script>
		<script src="/bikelong/resources/assets/js/plugins.min.js"></script>
		<script src="/bikelong/resources/assets/js/custom.min.js"></script>
	</body>
</html>