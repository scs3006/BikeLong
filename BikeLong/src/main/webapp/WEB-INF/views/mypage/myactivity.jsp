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
	</head>
	<body>

		<!-- Preloader-->
		<div class="page-loader">
			<div class="loader"></div>
		</div>
		<!-- Preloader end-->

		<!-- Header-->
		<jsp:include page="/WEB-INF/views/include/header.jsp" /><br/><br/>
		<!-- Header end-->

		<!-- Wrapper-->
		<div class="wrapper">
			<div class="container" style="padding-top:50px;">
					<div class="row">
						<div class="col-md-6 m-auto text-center">
							<p class="subtitle">- Bike Long -</p>
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
			
			<section class="module divider-top">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="progress-item">
								<div class="progress-title">하루 이동 거리
									<div class="pull-right"><span class="progress-number"></span>%</div>
								</div>
								<div class="progress">
									<div class="progress-bar progress-bar-brand" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
							<br>
							<div class="progress-item">
								<div class="progress-title">일주일 이동 거리
									<div class="pull-right"><span class="progress-number"></span>%</div>
								</div>
								<div class="progress">
									<div class="progress-bar progress-bar-brand" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
							<br>
							<div class="progress-item">
								<div class="progress-title">한 달 이동거리
									<div class="pull-right"><span class="progress-number"></span>%</div>
								</div>
								<div class="progress">
									<div class="progress-bar progress-bar-brand" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
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
			<footer class="footer">
				<div class="container">
					<div class="row">
						<div class="col-md-3">
							<!-- Text widget-->
							<aside class="widget widget_text">
								<div class="textwidget">
									<p><img src="/bikelong/resources/assets/images/logo-light.png" width="74px" alt=""></p>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</p>
									<ul class="icon-list">
										<li><i class="ti-email"></i> info@themebusiness.com</li>
										<li><i class="ti-headphone-alt"></i> 1-444-123-4559</li>
										<li><i class="ti-location-pin"></i> Raymond Boulevard 224, New York</li>
									</ul>
								</div>
							</aside>
						</div>
						<div class="col-md-3">
							<!-- Recent entries widget-->
							<aside class="widget widget_recent_entries">
								<div class="widget-title">
									<h5>Recent Posts</h5>
								</div>
								<ul>
									<li><a href="#">Matcha Portuguese Egg Tarts</a> <span class="post-date">May 8, 2016</span></li>
									<li><a href="#">Camp Cooking: One Pan Yaki Udon</a> <span class="post-date">April 7, 2016</span></li>
									<li><a href="#">Chicken & Spring Vegetable Lasagna</a> <span class="post-date">April 7, 2016</span></li>
									<li><a href="#">Mini California Sushi Cones</a> <span class="post-date">April 7, 2016</span></li>
								</ul>
							</aside>
						</div>
						<div class="col-md-3">
							<!-- Twitter-->
							<aside class="widget twitter-feed-widget">
								<div class="widget-title">
									<h5>Twitter Feed</h5>
								</div>
								<div class="twitter-feed" data-twitter="345170787868762112" data-number="2"></div>
							</aside>
						</div>
						<div class="col-md-3">
							<!-- Recent portfolio widget-->
							<aside class="widget widget_recent_works">
								<div class="widget-title">
									<h5>Instagram</h5>
								</div>
								<ul>
									<li><a href="#"><img src="/bikelong/resources/assets/images/widgets/1.jpg" alt=""></a></li>
									<li><a href="#"><img src="/bikelong/resources/assets/images/widgets/2.jpg" alt=""></a></li>
									<li><a href="#"><img src="/bikelong/resources/assets/images/widgets/3.jpg" alt=""></a></li>
									<li><a href="#"><img src="/bikelong/resources/assets/images/widgets/4.jpg" alt=""></a></li>
									<li><a href="#"><img src="/bikelong/resources/assets/images/widgets/5.jpg" alt=""></a></li>
									<li><a href="#"><img src="/bikelong/resources/assets/images/widgets/6.jpg" alt=""></a></li>
								</ul>
							</aside>
						</div>
					</div>
				</div>
				<div class="small-footer">
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<div class="copyright">Â© 2017 <a href="http://2the.me/">2theme</a>, All Rights Reserved.</div>
							</div>
							<div class="col-md-6">
								<ul class="social-links">
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-vimeo"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</footer>
			<!-- Footer end-->
		</div>
		<!-- Wrapper end-->

		<!-- Off canvas-->
		<div class="off-canvas-sidebar" data-background="/bikelong/resources/assets/images/sidebar.jpg">
			<div class="off-canvas-sidebar-wrapper">
				<div class="off-canvas-header"><a class="close-offcanvas" href="#"><span class="arrows arrows-arrows-remove"></span></a></div>
				<div class="off-canvas-content">
					<!-- Text widget-->
					<aside class="widget widget_text">
						<div class="textwidget">
							<p><img src="/bikelong/resources/assets/images/logo-light.png" width="74px" alt=""></p>
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
							<li><a href="#"><img src="/bikelong/resources/assets/images/widgets/1.jpg" alt=""></a></li>
							<li><a href="#"><img src="/bikelong/resources/assets/images/widgets/2.jpg" alt=""></a></li>
							<li><a href="#"><img src="/bikelong/resources/assets/images/widgets/3.jpg" alt=""></a></li>
							<li><a href="#"><img src="/bikelong/resources/assets/images/widgets/4.jpg" alt=""></a></li>
							<li><a href="#"><img src="/bikelong/resources/assets/images/widgets/5.jpg" alt=""></a></li>
							<li><a href="#"><img src="/bikelong/resources/assets/images/widgets/6.jpg" alt=""></a></li>
						</ul>
					</aside>
					<!-- Text widget-->
					<!--aside.widget.widget_text
					.textwidget
						.up-logo
							p.text-center.m-b-50: img(src="/bikelong/resources/assets/images/logo-light.png" width="100" alt="")
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
						<div class="qwert" data-background="/bikelong/resources/assets/images/module-2.jpg"></div>
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
		<script src="/bikelong/resources/assets/js/plugins.min.js"></script>
		<script src="/bikelong/resources/assets/js/custom.min.js"></script>
	</body>
</html>