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
	</head>
	<body>

		<!-- Preloader-->
		<div class="page-loader">
			<div class="loader"></div>
		</div>
		<!-- Preloader end-->

		<!-- Header-->
		<header class="header header-transparent">
			<!-- Top bar-->
			<div class="top-bar">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6">
							<ul class="list-left-align">
								<li>Mon - Fri: 07:00 am - 05:00 pm</li>
								<li><abbr title="Phone">P:</abbr> +39 02 87 21 43 19</li>
								<li><a href="start.jsp" data-color="#e1be64">Demos</a></li>
							</ul>
						</div>
						<div class="col-md-6">
							<ul class="top-bar-tools">
								<li><a class="open-offcanvas" href="#"><i class="ti-menu"></i></a></li>
								<li><a href="sign-in.jsp"><i class="ti-search"></i></a></li>
								<li><a href="sign-in.jsp"><i class="ti-user"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="navigation navigation-center">
				<div class="container-fluid">
					<!-- Brand-->
					<div class="inner-header"><a class="inner-brand" href="index.jsp"><img class="brand-dark" src="resources/assets/images/logo.png" width="74px" alt=""><img class="brand-light" src="resources/assets/images/logo-light.png" width="74px" alt=""></a></div>
					<!-- Navigation-->
					<div class="inner-navigation collapse">
						<div class="inner-nav onepage-nav">
							<ul>
								<li><a href="index.jsp#home"><span class="menu-item-span">Home</span></a></li>
								<li><a href="index.jsp#story"><span class="menu-item-span">Our story</span></a></li>
								<li><a href="index.jsp#special"><span class="menu-item-span">Special</span></a></li>
								<li><a href="index.jsp#popular"><span class="menu-item-span">Popular</span></a></li>
								<li><a href="index.jsp#gallery"><span class="menu-item-span">Gallery</span></a></li>
								<li><a href="index.jsp#services"><span class="menu-item-span">Services</span></a></li>
								<li><a href="index.jsp#news"><span class="menu-item-span">News</span></a></li>
								<!-- Pages-->
								<li class="menu-item-has-children"><a href="features.jsp"><span class="menu-item-span">Pages</span></a>
									<ul class="sub-menu">
										<li class="menu-item-has-children"><a href="#">Blog</a>
											<ul class="sub-menu">
												<li><a href="blog-1.jsp">Blog</a></li>
												<li><a href="blog-single-1.jsp">Post Single</a></li>
											</ul>
										</li>
										<li class="menu-item-has-children"><a href="#">Gallery</a>
											<ul class="sub-menu">
												<li><a href="gallery-1.jsp">2 Columns</a></li>
												<li><a href="gallery-2.jsp">3 Columns</a></li>
												<li><a href="gallery-3.jsp">4 Columns</a></li>
											</ul>
										</li>
										<li class="menu-item-has-children"><a href="#">Menu Grid</a>
											<ul class="sub-menu">
												<li><a href="menu-gallery-1.jsp">2 Columns</a></li>
												<li><a href="menu-gallery-2.jsp">3 Columns</a></li>
												<li><a href="menu-gallery-3.jsp">4 Columns</a></li>
											</ul>
										</li>
										<li class="menu-item-has-children"><a href="#">Menu Tiles</a>
											<ul class="sub-menu">
												<li><a href="menu-tiles-1.jsp">1 Column</a></li>
												<li><a href="menu-tiles-2.jsp">2 Columns</a></li>
											</ul>
										</li>
										<li class="menu-item-has-children"><a href="#">Menu Simple</a>
											<ul class="sub-menu">
												<li><a href="menu-simple-1.jsp">1 Column</a></li>
												<li><a href="menu-simple-2.jsp">2 Columns</a></li>
											</ul>
										</li>
										<li class="menu-item-has-children"><a href="#">User Pages</a>
											<ul class="sub-menu">
												<li><a href="sign-in.jsp">Sign in</a></li>
												<li><a href="sign-up.jsp">Sign up</a></li>
												<li><a href="password-recovery.jsp">Recover password</a></li>
											</ul>
										</li>
										<li class="menu-item-has-children"><a href="#">Contact Us</a>
											<ul class="sub-menu">
												<li><a href="contact.jsp">Contact Us 1</a></li>
												<li><a href="contact-2.jsp">Contact Us 2</a></li>
											</ul>
										</li>
										<li><a href="reservations.jsp">Reservations</a></li>
										<li><a href="elements.jsp">Elements</a></li>
										<li><a href="icons.jsp">Icons</a></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
					<!-- Extra-nav - will be hidden on mobile-->
					<div class="extra-nav">
						<ul>
							<li><a class="popup-book-a-table" href="#test-form"><span class="menu-item-span">Book now</span></a></li>
						</ul>
					</div>
					<!-- Mobile menu-->
					<div class="nav-toggle"><a href="#" data-toggle="collapse" data-target=".inner-navigation"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a></div>
				</div>
			</div>
		</header>
		<!-- Header end-->

		<!-- Wrapper-->
		<div class="wrapper">

			<!-- Hero-->
			<section class="module-cover parallax" data-background="resources/assets/images/module-4.jpg" data-overlay="1" data-gradient="1">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="text-center">
								<h2 class="display-1">Discover our dishes</h2>
								<p>See how your users experience your website in realtime or view <br/> trends to see any changes in performance over time.</p>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- Hero end-->

			<!-- Menu-->
			<section class="module">
				<div class="container">
					<div class="row">
						<div class="col-md-3">
							<div class="menu-classic-item">
								<div class="menu-classic-item-img"><a class="photo" href="resources/assets/images/menu/1.jpg"></a><img src="resources/assets/images/menu/1.jpg" alt="">
									<div class="menu-classic-item-price">$15
									</div>
								</div>
								<div class="menu-classic-item-inner">
									<h6>Masala-Spiced Chickpeas</h6>
									<p>Vanilla, Various Fruit, Cookies</p>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="menu-classic-item">
								<div class="menu-classic-item-img"><a class="photo" href="resources/assets/images/menu/2.jpg"></a><img src="resources/assets/images/menu/2.jpg" alt="">
									<div class="menu-classic-item-price">$18
									</div>
								</div>
								<div class="menu-classic-item-inner">
									<h6>Kung Pao Chicken</h6>
									<p>Vanilla, Various Fruit, Cookies</p>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="menu-classic-item">
								<div class="menu-classic-item-img"><a class="photo" href="resources/assets/images/menu/3.jpg"></a><img src="resources/assets/images/menu/3.jpg" alt="">
									<div class="menu-classic-item-price">$13
									</div>
								</div>
								<div class="menu-classic-item-inner">
									<h6>Sweet &amp; Spicy Pork</h6>
									<p>Vanilla, Various Fruit, Cookies</p>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="menu-classic-item">
								<div class="menu-classic-item-img"><a class="photo" href="resources/assets/images/menu/4.jpg"></a><img src="resources/assets/images/menu/4.jpg" alt="">
									<div class="menu-classic-item-price">$12
									</div>
								</div>
								<div class="menu-classic-item-inner">
									<h6>Chicken Stew</h6>
									<p>Vanilla, Various Fruit, Cookies</p>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="menu-classic-item">
								<div class="menu-classic-item-img"><a class="photo" href="resources/assets/images/menu/5.jpg"></a><img src="resources/assets/images/menu/5.jpg" alt="">
									<div class="menu-classic-item-price">$21
									</div>
								</div>
								<div class="menu-classic-item-inner">
									<h6>Jalapeno-Mango Salsa</h6>
									<p>Vanilla, Various Fruit, Cookies</p>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="menu-classic-item">
								<div class="menu-classic-item-img"><a class="photo" href="resources/assets/images/menu/6.jpg"></a><img src="resources/assets/images/menu/6.jpg" alt="">
									<div class="menu-classic-item-price">$17
									</div>
								</div>
								<div class="menu-classic-item-inner">
									<h6>Spicy Fried Rice &amp; Bacon</h6>
									<p>Vanilla, Various Fruit, Cookies</p>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="menu-classic-item">
								<div class="menu-classic-item-img"><a class="photo" href="resources/assets/images/menu/1.jpg"></a><img src="resources/assets/images/menu/1.jpg" alt="">
									<div class="menu-classic-item-price">$15
									</div>
								</div>
								<div class="menu-classic-item-inner">
									<h6>Masala-Spiced Chickpeas</h6>
									<p>Vanilla, Various Fruit, Cookies</p>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="menu-classic-item">
								<div class="menu-classic-item-img"><a class="photo" href="resources/assets/images/menu/2.jpg"></a><img src="resources/assets/images/menu/2.jpg" alt="">
									<div class="menu-classic-item-price">$18
									</div>
								</div>
								<div class="menu-classic-item-inner">
									<h6>Kung Pao Chicken</h6>
									<p>Vanilla, Various Fruit, Cookies</p>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="menu-classic-item">
								<div class="menu-classic-item-img"><a class="photo" href="resources/assets/images/menu/3.jpg"></a><img src="resources/assets/images/menu/3.jpg" alt="">
									<div class="menu-classic-item-price">$13
									</div>
								</div>
								<div class="menu-classic-item-inner">
									<h6>Sweet &amp; Spicy Pork</h6>
									<p>Vanilla, Various Fruit, Cookies</p>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="menu-classic-item">
								<div class="menu-classic-item-img"><a class="photo" href="resources/assets/images/menu/4.jpg"></a><img src="resources/assets/images/menu/4.jpg" alt="">
									<div class="menu-classic-item-price">$12
									</div>
								</div>
								<div class="menu-classic-item-inner">
									<h6>Chicken Stew</h6>
									<p>Vanilla, Various Fruit, Cookies</p>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="menu-classic-item">
								<div class="menu-classic-item-img"><a class="photo" href="resources/assets/images/menu/5.jpg"></a><img src="resources/assets/images/menu/5.jpg" alt="">
									<div class="menu-classic-item-price">$21
									</div>
								</div>
								<div class="menu-classic-item-inner">
									<h6>Jalapeno-Mango Salsa</h6>
									<p>Vanilla, Various Fruit, Cookies</p>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="menu-classic-item">
								<div class="menu-classic-item-img"><a class="photo" href="resources/assets/images/menu/6.jpg"></a><img src="resources/assets/images/menu/6.jpg" alt="">
									<div class="menu-classic-item-price">$17
									</div>
								</div>
								<div class="menu-classic-item-inner">
									<h6>Spicy Fried Rice &amp; Bacon</h6>
									<p>Vanilla, Various Fruit, Cookies</p>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="space" data-mY="100px"></div>
						</div>
					</div>
				</div>
			</section>
			<!-- Menu end-->

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
									<p><img src="resources/assets/images/logo-light.png" width="74px" alt=""></p>
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
									<li><a href="#"><img src="resources/assets/images/widgets/1.jpg" alt=""></a></li>
									<li><a href="#"><img src="resources/assets/images/widgets/2.jpg" alt=""></a></li>
									<li><a href="#"><img src="resources/assets/images/widgets/3.jpg" alt=""></a></li>
									<li><a href="#"><img src="resources/assets/images/widgets/4.jpg" alt=""></a></li>
									<li><a href="#"><img src="resources/assets/images/widgets/5.jpg" alt=""></a></li>
									<li><a href="#"><img src="resources/assets/images/widgets/6.jpg" alt=""></a></li>
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