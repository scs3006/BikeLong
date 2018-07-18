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
		<header class="header">
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

			<!-- Page Header-->
			<section class="module-page-title">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-md-6">
							<h1 class="page-title-heading">Icons</h1>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item"><a href="#">Pages</a></li>
								<li class="breadcrumb-item active">Icons</li>
							</ol>
						</div>
					</div>
				</div>
			</section>
			<!-- Page Header end-->
			<section class="module">
				<div class="container">
					<div class="row">
						<div class="col-md-6 m-auto text-center">
							<p class="subtitle">Discover our story</p>
							<h1 class="display-1">Themify Icons</h1>
							<p class="lead">See how your users experience your website in realtime or view <br/> trends to see any changes in performance over time.</p>
							<div class="divider-border"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="space" data-mY="40px"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="iconset-box">
								<div class="icon-container"><span class="ti-arrow-up"></span><span class="icon-name"> ti-arrow-up</span></div>
								<div class="icon-container"><span class="ti-arrow-right"></span><span class="icon-name"> ti-arrow-right</span></div>
								<div class="icon-container"><span class="ti-arrow-left"></span><span class="icon-name"> ti-arrow-left</span></div>
								<div class="icon-container"><span class="ti-arrow-down"></span><span class="icon-name"> ti-arrow-down</span></div>
								<div class="icon-container"><span class="ti-arrows-vertical"></span><span class="icon-name"> ti-arrows-vertical</span></div>
								<div class="icon-container"><span class="ti-arrows-horizontal"></span><span class="icon-name"> ti-arrows-horizontal</span></div>
								<div class="icon-container"><span class="ti-angle-up"></span><span class="icon-name"> ti-angle-up</span></div>
								<div class="icon-container"><span class="ti-angle-right"></span><span class="icon-name"> ti-angle-right</span></div>
								<div class="icon-container"><span class="ti-angle-left"></span><span class="icon-name"> ti-angle-left</span></div>
								<div class="icon-container"><span class="ti-angle-down"></span><span class="icon-name"> ti-angle-down</span></div>
								<div class="icon-container"><span class="ti-angle-double-up"></span><span class="icon-name"> ti-angle-double-up</span></div>
								<div class="icon-container"><span class="ti-angle-double-right"></span><span class="icon-name"> ti-angle-double-right</span></div>
								<div class="icon-container"><span class="ti-angle-double-left"></span><span class="icon-name"> ti-angle-double-left</span></div>
								<div class="icon-container"><span class="ti-angle-double-down"></span><span class="icon-name"> ti-angle-double-down</span></div>
								<div class="icon-container"><span class="ti-move"></span><span class="icon-name"> ti-move</span></div>
								<div class="icon-container"><span class="ti-fullscreen"></span><span class="icon-name"> ti-fullscreen</span></div>
								<div class="icon-container"><span class="ti-arrow-top-right"></span><span class="icon-name"> ti-arrow-top-right</span></div>
								<div class="icon-container"><span class="ti-arrow-top-left"></span><span class="icon-name"> ti-arrow-top-left</span></div>
								<div class="icon-container"><span class="ti-arrow-circle-up"></span><span class="icon-name"> ti-arrow-circle-up</span></div>
								<div class="icon-container"><span class="ti-arrow-circle-right"></span><span class="icon-name"> ti-arrow-circle-right</span></div>
								<div class="icon-container"><span class="ti-arrow-circle-left"></span><span class="icon-name"> ti-arrow-circle-left</span></div>
								<div class="icon-container"><span class="ti-arrow-circle-down"></span><span class="icon-name"> ti-arrow-circle-down</span></div>
								<div class="icon-container"><span class="ti-arrows-corner"></span><span class="icon-name"> ti-arrows-corner</span></div>
								<div class="icon-container"><span class="ti-split-v"></span><span class="icon-name"> ti-split-v</span></div>
								<div class="icon-container"><span class="ti-split-v-alt"></span><span class="icon-name"> ti-split-v-alt</span></div>
								<div class="icon-container"><span class="ti-split-h"></span><span class="icon-name"> ti-split-h</span></div>
								<div class="icon-container"><span class="ti-hand-point-up"></span><span class="icon-name"> ti-hand-point-up</span></div>
								<div class="icon-container"><span class="ti-hand-point-right"></span><span class="icon-name"> ti-hand-point-right</span></div>
								<div class="icon-container"><span class="ti-hand-point-left"></span><span class="icon-name"> ti-hand-point-left</span></div>
								<div class="icon-container"><span class="ti-hand-point-down"></span><span class="icon-name"> ti-hand-point-down</span></div>
								<div class="icon-container"><span class="ti-back-right"></span><span class="icon-name"> ti-back-right</span></div>
								<div class="icon-container"><span class="ti-back-left"></span><span class="icon-name"> ti-back-left</span></div>
								<div class="icon-container"><span class="ti-exchange-vertical"></span><span class="icon-name"> ti-exchange-vertical</span></div>
								<div class="icon-container"><span class="ti-wand"></span><span class="icon-name"> ti-wand</span></div>
								<div class="icon-container"><span class="ti-save"></span><span class="icon-name"> ti-save</span></div>
								<div class="icon-container"><span class="ti-save-alt"></span><span class="icon-name"> ti-save-alt</span></div>
								<div class="icon-container"><span class="ti-direction"></span><span class="icon-name"> ti-direction</span></div>
								<div class="icon-container"><span class="ti-direction-alt"></span><span class="icon-name"> ti-direction-alt</span></div>
								<div class="icon-container"><span class="ti-user"></span><span class="icon-name"> ti-user</span></div>
								<div class="icon-container"><span class="ti-link"></span><span class="icon-name"> ti-link</span></div>
								<div class="icon-container"><span class="ti-unlink"></span><span class="icon-name"> ti-unlink</span></div>
								<div class="icon-container"><span class="ti-trash"></span><span class="icon-name"> ti-trash</span></div>
								<div class="icon-container"><span class="ti-target"></span><span class="icon-name"> ti-target</span></div>
								<div class="icon-container"><span class="ti-tag"></span><span class="icon-name"> ti-tag</span></div>
								<div class="icon-container"><span class="ti-desktop"></span><span class="icon-name"> ti-desktop</span></div>
								<div class="icon-container"><span class="ti-tablet"></span><span class="icon-name"> ti-tablet</span></div>
								<div class="icon-container"><span class="ti-mobile"></span><span class="icon-name"> ti-mobile</span></div>
								<div class="icon-container"><span class="ti-email"></span><span class="icon-name"> ti-email</span></div>
								<div class="icon-container"><span class="ti-star"></span><span class="icon-name"> ti-star</span></div>
								<div class="icon-container"><span class="ti-spray"></span><span class="icon-name"> ti-spray</span></div>
								<div class="icon-container"><span class="ti-signal"></span><span class="icon-name"> ti-signal</span></div>
								<div class="icon-container"><span class="ti-shopping-cart"></span><span class="icon-name"> ti-shopping-cart</span></div>
								<div class="icon-container"><span class="ti-shopping-cart-full"></span><span class="icon-name"> ti-shopping-cart-full</span></div>
								<div class="icon-container"><span class="ti-settings"></span><span class="icon-name"> ti-settings</span></div>
								<div class="icon-container"><span class="ti-search"></span><span class="icon-name"> ti-search</span></div>
								<div class="icon-container"><span class="ti-zoom-in"></span><span class="icon-name"> ti-zoom-in</span></div>
								<div class="icon-container"><span class="ti-zoom-out"></span><span class="icon-name"> ti-zoom-out</span></div>
								<div class="icon-container"><span class="ti-cut"></span><span class="icon-name"> ti-cut</span></div>
								<div class="icon-container"><span class="ti-ruler"></span><span class="icon-name"> ti-ruler</span></div>
								<div class="icon-container"><span class="ti-ruler-alt-2"></span><span class="icon-name"> ti-ruler-alt-2</span></div>
								<div class="icon-container"><span class="ti-ruler-pencil"></span><span class="icon-name"> ti-ruler-pencil</span></div>
								<div class="icon-container"><span class="ti-ruler-alt"></span><span class="icon-name"> ti-ruler-alt</span></div>
								<div class="icon-container"><span class="ti-bookmark"></span><span class="icon-name"> ti-bookmark</span></div>
								<div class="icon-container"><span class="ti-bookmark-alt"></span><span class="icon-name"> ti-bookmark-alt</span></div>
								<div class="icon-container"><span class="ti-reload"></span><span class="icon-name"> ti-reload</span></div>
								<div class="icon-container"><span class="ti-plus"></span><span class="icon-name"> ti-plus</span></div>
								<div class="icon-container"><span class="ti-minus"></span><span class="icon-name"> ti-minus</span></div>
								<div class="icon-container"><span class="ti-close"></span><span class="icon-name"> ti-close</span></div>
								<div class="icon-container"><span class="ti-pin"></span><span class="icon-name"> ti-pin</span></div>
								<div class="icon-container"><span class="ti-pencil"></span><span class="icon-name"> ti-pencil</span></div>
								<div class="icon-container"><span class="ti-pencil-alt"></span><span class="icon-name"> ti-pencil-alt</span></div>
								<div class="icon-container"><span class="ti-paint-roller"></span><span class="icon-name"> ti-paint-roller</span></div>
								<div class="icon-container"><span class="ti-paint-bucket"></span><span class="icon-name"> ti-paint-bucket</span></div>
								<div class="icon-container"><span class="ti-na"></span><span class="icon-name"> ti-na</span></div>
								<div class="icon-container"><span class="ti-medall"></span><span class="icon-name"> ti-medall</span></div>
								<div class="icon-container"><span class="ti-medall-alt"></span><span class="icon-name"> ti-medall-alt</span></div>
								<div class="icon-container"><span class="ti-marker"></span><span class="icon-name"> ti-marker</span></div>
								<div class="icon-container"><span class="ti-marker-alt"></span><span class="icon-name"> ti-marker-alt</span></div>
								<div class="icon-container"><span class="ti-lock"></span><span class="icon-name"> ti-lock</span></div>
								<div class="icon-container"><span class="ti-unlock"></span><span class="icon-name"> ti-unlock</span></div>
								<div class="icon-container"><span class="ti-location-arrow"></span><span class="icon-name"> ti-location-arrow</span></div>
								<div class="icon-container"><span class="ti-layout"></span><span class="icon-name"> ti-layout</span></div>
								<div class="icon-container"><span class="ti-layers"></span><span class="icon-name"> ti-layers</span></div>
								<div class="icon-container"><span class="ti-layers-alt"></span><span class="icon-name"> ti-layers-alt</span></div>
								<div class="icon-container"><span class="ti-key"></span><span class="icon-name"> ti-key</span></div>
								<div class="icon-container"><span class="ti-image"></span><span class="icon-name"> ti-image</span></div>
								<div class="icon-container"><span class="ti-heart"></span><span class="icon-name"> ti-heart</span></div>
								<div class="icon-container"><span class="ti-heart-broken"></span><span class="icon-name"> ti-heart-broken</span></div>
								<div class="icon-container"><span class="ti-hand-stop"></span><span class="icon-name"> ti-hand-stop</span></div>
								<div class="icon-container"><span class="ti-hand-open"></span><span class="icon-name"> ti-hand-open</span></div>
								<div class="icon-container"><span class="ti-hand-drag"></span><span class="icon-name"> ti-hand-drag</span></div>
								<div class="icon-container"><span class="ti-flag"></span><span class="icon-name"> ti-flag</span></div>
								<div class="icon-container"><span class="ti-flag-alt"></span><span class="icon-name"> ti-flag-alt</span></div>
								<div class="icon-container"><span class="ti-flag-alt-2"></span><span class="icon-name"> ti-flag-alt-2</span></div>
								<div class="icon-container"><span class="ti-eye"></span><span class="icon-name"> ti-eye</span></div>
								<div class="icon-container"><span class="ti-import"></span><span class="icon-name"> ti-import</span></div>
								<div class="icon-container"><span class="ti-export"></span><span class="icon-name"> ti-export</span></div>
								<div class="icon-container"><span class="ti-cup"></span><span class="icon-name"> ti-cup</span></div>
								<div class="icon-container"><span class="ti-crown"></span><span class="icon-name"> ti-crown</span></div>
								<div class="icon-container"><span class="ti-comments"></span><span class="icon-name"> ti-comments</span></div>
								<div class="icon-container"><span class="ti-comment"></span><span class="icon-name"> ti-comment</span></div>
								<div class="icon-container"><span class="ti-comment-alt"></span><span class="icon-name"> ti-comment-alt</span></div>
								<div class="icon-container"><span class="ti-thought"></span><span class="icon-name"> ti-thought</span></div>
								<div class="icon-container"><span class="ti-clip"></span><span class="icon-name"> ti-clip</span></div>
								<div class="icon-container"><span class="ti-check"></span><span class="icon-name"> ti-check</span></div>
								<div class="icon-container"><span class="ti-check-box"></span><span class="icon-name"> ti-check-box</span></div>
								<div class="icon-container"><span class="ti-camera"></span><span class="icon-name"> ti-camera</span></div>
								<div class="icon-container"><span class="ti-announcement"></span><span class="icon-name"> ti-announcement</span></div>
								<div class="icon-container"><span class="ti-brush"></span><span class="icon-name"> ti-brush</span></div>
								<div class="icon-container"><span class="ti-brush-alt"></span><span class="icon-name"> ti-brush-alt</span></div>
								<div class="icon-container"><span class="ti-palette"></span><span class="icon-name"> ti-palette</span></div>
								<div class="icon-container"><span class="ti-briefcase"></span><span class="icon-name"> ti-briefcase</span></div>
								<div class="icon-container"><span class="ti-bolt"></span><span class="icon-name"> ti-bolt</span></div>
								<div class="icon-container"><span class="ti-bolt-alt"></span><span class="icon-name"> ti-bolt-alt</span></div>
								<div class="icon-container"><span class="ti-blackboard"></span><span class="icon-name"> ti-blackboard</span></div>
								<div class="icon-container"><span class="ti-bag"></span><span class="icon-name"> ti-bag</span></div>
								<div class="icon-container"><span class="ti-world"></span><span class="icon-name"> ti-world</span></div>
								<div class="icon-container"><span class="ti-wheelchair"></span><span class="icon-name"> ti-wheelchair</span></div>
								<div class="icon-container"><span class="ti-car"></span><span class="icon-name"> ti-car</span></div>
								<div class="icon-container"><span class="ti-truck"></span><span class="icon-name"> ti-truck</span></div>
								<div class="icon-container"><span class="ti-timer"></span><span class="icon-name"> ti-timer</span></div>
								<div class="icon-container"><span class="ti-ticket"></span><span class="icon-name"> ti-ticket</span></div>
								<div class="icon-container"><span class="ti-thumb-up"></span><span class="icon-name"> ti-thumb-up</span></div>
								<div class="icon-container"><span class="ti-thumb-down"></span><span class="icon-name"> ti-thumb-down</span></div>
								<div class="icon-container"><span class="ti-stats-up"></span><span class="icon-name"> ti-stats-up</span></div>
								<div class="icon-container"><span class="ti-stats-down"></span><span class="icon-name"> ti-stats-down</span></div>
								<div class="icon-container"><span class="ti-shine"></span><span class="icon-name"> ti-shine</span></div>
								<div class="icon-container"><span class="ti-shift-right"></span><span class="icon-name"> ti-shift-right</span></div>
								<div class="icon-container"><span class="ti-shift-left"></span><span class="icon-name"> ti-shift-left</span></div>
								<div class="icon-container"><span class="ti-shift-right-alt"></span><span class="icon-name"> ti-shift-right-alt</span></div>
								<div class="icon-container"><span class="ti-shift-left-alt"></span><span class="icon-name"> ti-shift-left-alt</span></div>
								<div class="icon-container"><span class="ti-shield"></span><span class="icon-name"> ti-shield</span></div>
								<div class="icon-container"><span class="ti-notepad"></span><span class="icon-name"> ti-notepad</span></div>
								<div class="icon-container"><span class="ti-server"></span><span class="icon-name"> ti-server</span></div>
								<div class="icon-container"><span class="ti-pulse"></span><span class="icon-name"> ti-pulse</span></div>
								<div class="icon-container"><span class="ti-printer"></span><span class="icon-name"> ti-printer</span></div>
								<div class="icon-container"><span class="ti-power-off"></span><span class="icon-name"> ti-power-off</span></div>
								<div class="icon-container"><span class="ti-plug"></span><span class="icon-name"> ti-plug</span></div>
								<div class="icon-container"><span class="ti-pie-chart"></span><span class="icon-name"> ti-pie-chart</span></div>
								<div class="icon-container"><span class="ti-panel"></span><span class="icon-name"> ti-panel</span></div>
								<div class="icon-container"><span class="ti-package"></span><span class="icon-name"> ti-package</span></div>
								<div class="icon-container"><span class="ti-music"></span><span class="icon-name"> ti-music</span></div>
								<div class="icon-container"><span class="ti-music-alt"></span><span class="icon-name"> ti-music-alt</span></div>
								<div class="icon-container"><span class="ti-mouse"></span><span class="icon-name"> ti-mouse</span></div>
								<div class="icon-container"><span class="ti-mouse-alt"></span><span class="icon-name"> ti-mouse-alt</span></div>
								<div class="icon-container"><span class="ti-money"></span><span class="icon-name"> ti-money</span></div>
								<div class="icon-container"><span class="ti-microphone"></span><span class="icon-name"> ti-microphone</span></div>
								<div class="icon-container"><span class="ti-menu"></span><span class="icon-name"> ti-menu</span></div>
								<div class="icon-container"><span class="ti-menu-alt"></span><span class="icon-name"> ti-menu-alt</span></div>
								<div class="icon-container"><span class="ti-map"></span><span class="icon-name"> ti-map</span></div>
								<div class="icon-container"><span class="ti-map-alt"></span><span class="icon-name"> ti-map-alt</span></div>
								<div class="icon-container"><span class="ti-location-pin"></span><span class="icon-name"> ti-location-pin</span></div>
								<div class="icon-container"><span class="ti-light-bulb"></span><span class="icon-name"> ti-light-bulb</span></div>
								<div class="icon-container"><span class="ti-info"></span><span class="icon-name"> ti-info</span></div>
								<div class="icon-container"><span class="ti-infinite"></span><span class="icon-name"> ti-infinite</span></div>
								<div class="icon-container"><span class="ti-id-badge"></span><span class="icon-name"> ti-id-badge</span></div>
								<div class="icon-container"><span class="ti-hummer"></span><span class="icon-name"> ti-hummer</span></div>
								<div class="icon-container"><span class="ti-home"></span><span class="icon-name"> ti-home</span></div>
								<div class="icon-container"><span class="ti-help"></span><span class="icon-name"> ti-help</span></div>
								<div class="icon-container"><span class="ti-headphone"></span><span class="icon-name"> ti-headphone</span></div>
								<div class="icon-container"><span class="ti-harddrives"></span><span class="icon-name"> ti-harddrives</span></div>
								<div class="icon-container"><span class="ti-harddrive"></span><span class="icon-name"> ti-harddrive</span></div>
								<div class="icon-container"><span class="ti-gift"></span><span class="icon-name"> ti-gift</span></div>
								<div class="icon-container"><span class="ti-game"></span><span class="icon-name"> ti-game</span></div>
								<div class="icon-container"><span class="ti-filter"></span><span class="icon-name"> ti-filter</span></div>
								<div class="icon-container"><span class="ti-files"></span><span class="icon-name"> ti-files</span></div>
								<div class="icon-container"><span class="ti-file"></span><span class="icon-name"> ti-file</span></div>
								<div class="icon-container"><span class="ti-zip"></span><span class="icon-name"> ti-zip</span></div>
								<div class="icon-container"><span class="ti-folder"></span><span class="icon-name"> ti-folder</span></div>
								<div class="icon-container"><span class="ti-envelope"></span><span class="icon-name"> ti-envelope</span></div>
								<div class="icon-container"><span class="ti-dashboard"></span><span class="icon-name"> ti-dashboard</span></div>
								<div class="icon-container"><span class="ti-cloud"></span><span class="icon-name"> ti-cloud</span></div>
								<div class="icon-container"><span class="ti-cloud-up"></span><span class="icon-name"> ti-cloud-up</span></div>
								<div class="icon-container"><span class="ti-cloud-down"></span><span class="icon-name"> ti-cloud-down</span></div>
								<div class="icon-container"><span class="ti-clipboard"></span><span class="icon-name"> ti-clipboard</span></div>
								<div class="icon-container"><span class="ti-calendar"></span><span class="icon-name"> ti-calendar</span></div>
								<div class="icon-container"><span class="ti-book"></span><span class="icon-name"> ti-book</span></div>
								<div class="icon-container"><span class="ti-bell"></span><span class="icon-name"> ti-bell</span></div>
								<div class="icon-container"><span class="ti-basketball"></span><span class="icon-name"> ti-basketball</span></div>
								<div class="icon-container"><span class="ti-bar-chart"></span><span class="icon-name"> ti-bar-chart</span></div>
								<div class="icon-container"><span class="ti-bar-chart-alt"></span><span class="icon-name"> ti-bar-chart-alt</span></div>
								<div class="icon-container"><span class="ti-archive"></span><span class="icon-name"> ti-archive</span></div>
								<div class="icon-container"><span class="ti-anchor"></span><span class="icon-name"> ti-anchor</span></div>
								<div class="icon-container"><span class="ti-alert"></span><span class="icon-name"> ti-alert</span></div>
								<div class="icon-container"><span class="ti-alarm-clock"></span><span class="icon-name"> ti-alarm-clock</span></div>
								<div class="icon-container"><span class="ti-agenda"></span><span class="icon-name"> ti-agenda</span></div>
								<div class="icon-container"><span class="ti-write"></span><span class="icon-name"> ti-write</span></div>
								<div class="icon-container"><span class="ti-wallet"></span><span class="icon-name"> ti-wallet</span></div>
								<div class="icon-container"><span class="ti-video-clapper"></span><span class="icon-name"> ti-video-clapper</span></div>
								<div class="icon-container"><span class="ti-video-camera"></span><span class="icon-name"> ti-video-camera</span></div>
								<div class="icon-container"><span class="ti-vector"></span><span class="icon-name"> ti-vector</span></div>
								<div class="icon-container"><span class="ti-support"></span><span class="icon-name"> ti-support</span></div>
								<div class="icon-container"><span class="ti-stamp"></span><span class="icon-name"> ti-stamp</span></div>
								<div class="icon-container"><span class="ti-slice"></span><span class="icon-name"> ti-slice</span></div>
								<div class="icon-container"><span class="ti-shortcode"></span><span class="icon-name"> ti-shortcode</span></div>
								<div class="icon-container"><span class="ti-receipt"></span><span class="icon-name"> ti-receipt</span></div>
								<div class="icon-container"><span class="ti-pin2"></span><span class="icon-name"> ti-pin2</span></div>
								<div class="icon-container"><span class="ti-pin-alt"></span><span class="icon-name"> ti-pin-alt</span></div>
								<div class="icon-container"><span class="ti-pencil-alt2"></span><span class="icon-name"> ti-pencil-alt2</span></div>
								<div class="icon-container"><span class="ti-eraser"></span><span class="icon-name"> ti-eraser</span></div>
								<div class="icon-container"><span class="ti-more"></span><span class="icon-name"> ti-more</span></div>
								<div class="icon-container"><span class="ti-more-alt"></span><span class="icon-name"> ti-more-alt</span></div>
								<div class="icon-container"><span class="ti-microphone-alt"></span><span class="icon-name"> ti-microphone-alt</span></div>
								<div class="icon-container"><span class="ti-magnet"></span><span class="icon-name"> ti-magnet</span></div>
								<div class="icon-container"><span class="ti-line-double"></span><span class="icon-name"> ti-line-double</span></div>
								<div class="icon-container"><span class="ti-line-dotted"></span><span class="icon-name"> ti-line-dotted</span></div>
								<div class="icon-container"><span class="ti-line-dashed"></span><span class="icon-name"> ti-line-dashed</span></div>
								<div class="icon-container"><span class="ti-ink-pen"></span><span class="icon-name"> ti-ink-pen</span></div>
								<div class="icon-container"><span class="ti-info-alt"></span><span class="icon-name"> ti-info-alt</span></div>
								<div class="icon-container"><span class="ti-help-alt"></span><span class="icon-name"> ti-help-alt</span></div>
								<div class="icon-container"><span class="ti-headphone-alt"></span><span class="icon-name"> ti-headphone-alt</span></div>
								<div class="icon-container"><span class="ti-gallery"></span><span class="icon-name"> ti-gallery</span></div>
								<div class="icon-container"><span class="ti-face-smile"></span><span class="icon-name"> ti-face-smile</span></div>
								<div class="icon-container"><span class="ti-face-sad"></span><span class="icon-name"> ti-face-sad</span></div>
								<div class="icon-container"><span class="ti-credit-card"></span><span class="icon-name"> ti-credit-card</span></div>
								<div class="icon-container"><span class="ti-comments-smiley"></span><span class="icon-name"> ti-comments-smiley</span></div>
								<div class="icon-container"><span class="ti-time"></span><span class="icon-name"> ti-time</span></div>
								<div class="icon-container"><span class="ti-share"></span><span class="icon-name"> ti-share</span></div>
								<div class="icon-container"><span class="ti-share-alt"></span><span class="icon-name"> ti-share-alt</span></div>
								<div class="icon-container"><span class="ti-rocket"></span><span class="icon-name"> ti-rocket</span></div>
								<div class="icon-container"><span class="ti-new-window"></span><span class="icon-name"> ti-new-window</span></div>
								<div class="icon-container"><span class="ti-rss"></span><span class="icon-name"> ti-rss</span></div>
								<div class="icon-container"><span class="ti-rss-alt"></span><span class="icon-name"> ti-rss-alt</span></div>
								<div class="icon-container"><span class="ti-paragraph"></span><span class="icon-name"> ti-paragraph</span></div>
								<div class="icon-container"><span class="ti-uppercase"></span><span class="icon-name"> ti-uppercase</span></div>
								<div class="icon-container"><span class="ti-underline"></span><span class="icon-name"> ti-underline</span></div>
								<div class="icon-container"><span class="ti-text"></span><span class="icon-name"> ti-text</span></div>
								<div class="icon-container"><span class="ti-Italic"></span><span class="icon-name"> ti-Italic</span></div>
								<div class="icon-container"><span class="ti-smallcap"></span><span class="icon-name"> ti-smallcap</span></div>
								<div class="icon-container"><span class="ti-list"></span><span class="icon-name"> ti-list</span></div>
								<div class="icon-container"><span class="ti-list-ol"></span><span class="icon-name"> ti-list-ol</span></div>
								<div class="icon-container"><span class="ti-align-right"></span><span class="icon-name"> ti-align-right</span></div>
								<div class="icon-container"><span class="ti-align-left"></span><span class="icon-name"> ti-align-left</span></div>
								<div class="icon-container"><span class="ti-align-justify"></span><span class="icon-name"> ti-align-justify</span></div>
								<div class="icon-container"><span class="ti-align-center"></span><span class="icon-name"> ti-align-center</span></div>
								<div class="icon-container"><span class="ti-quote-right"></span><span class="icon-name"> ti-quote-right</span></div>
								<div class="icon-container"><span class="ti-quote-left"></span><span class="icon-name"> ti-quote-left</span></div>
								<div class="icon-container"><span class="ti-layout-width-full"></span><span class="icon-name"> ti-layout-width-full</span></div>
								<div class="icon-container"><span class="ti-layout-width-default"></span><span class="icon-name"> ti-layout-width-default</span></div>
								<div class="icon-container"><span class="ti-layout-width-default-alt"></span><span class="icon-name"> ti-layout-width-default-alt</span></div>
								<div class="icon-container"><span class="ti-layout-tab"></span><span class="icon-name"> ti-layout-tab</span></div>
								<div class="icon-container"><span class="ti-layout-tab-window"></span><span class="icon-name"> ti-layout-tab-window</span></div>
								<div class="icon-container"><span class="ti-layout-tab-v"></span><span class="icon-name"> ti-layout-tab-v</span></div>
								<div class="icon-container"><span class="ti-layout-tab-min"></span><span class="icon-name"> ti-layout-tab-min</span></div>
								<div class="icon-container"><span class="ti-layout-slider"></span><span class="icon-name"> ti-layout-slider</span></div>
								<div class="icon-container"><span class="ti-layout-slider-alt"></span><span class="icon-name"> ti-layout-slider-alt</span></div>
								<div class="icon-container"><span class="ti-layout-sidebar-right"></span><span class="icon-name"> ti-layout-sidebar-right</span></div>
								<div class="icon-container"><span class="ti-layout-sidebar-none"></span><span class="icon-name"> ti-layout-sidebar-none</span></div>
								<div class="icon-container"><span class="ti-layout-sidebar-left"></span><span class="icon-name"> ti-layout-sidebar-left</span></div>
								<div class="icon-container"><span class="ti-layout-placeholder"></span><span class="icon-name"> ti-layout-placeholder</span></div>
								<div class="icon-container"><span class="ti-layout-menu"></span><span class="icon-name"> ti-layout-menu</span></div>
								<div class="icon-container"><span class="ti-layout-menu-v"></span><span class="icon-name"> ti-layout-menu-v</span></div>
								<div class="icon-container"><span class="ti-layout-menu-separated"></span><span class="icon-name"> ti-layout-menu-separated</span></div>
								<div class="icon-container"><span class="ti-layout-menu-full"></span><span class="icon-name"> ti-layout-menu-full</span></div>
								<div class="icon-container"><span class="ti-layout-media-right"></span><span class="icon-name"> ti-layout-media-right</span></div>
								<div class="icon-container"><span class="ti-layout-media-right-alt"></span><span class="icon-name"> ti-layout-media-right-alt</span></div>
								<div class="icon-container"><span class="ti-layout-media-overlay"></span><span class="icon-name"> ti-layout-media-overlay</span></div>
								<div class="icon-container"><span class="ti-layout-media-overlay-alt"></span><span class="icon-name"> ti-layout-media-overlay-alt</span></div>
								<div class="icon-container"><span class="ti-layout-media-overlay-alt-2"></span><span class="icon-name"> ti-layout-media-overlay-alt-2</span></div>
								<div class="icon-container"><span class="ti-layout-media-left"></span><span class="icon-name"> ti-layout-media-left</span></div>
								<div class="icon-container"><span class="ti-layout-media-left-alt"></span><span class="icon-name"> ti-layout-media-left-alt</span></div>
								<div class="icon-container"><span class="ti-layout-media-center"></span><span class="icon-name"> ti-layout-media-center</span></div>
								<div class="icon-container"><span class="ti-layout-media-center-alt"></span><span class="icon-name"> ti-layout-media-center-alt</span></div>
								<div class="icon-container"><span class="ti-layout-list-thumb"></span><span class="icon-name"> ti-layout-list-thumb</span></div>
								<div class="icon-container"><span class="ti-layout-list-thumb-alt"></span><span class="icon-name"> ti-layout-list-thumb-alt</span></div>
								<div class="icon-container"><span class="ti-layout-list-post"></span><span class="icon-name"> ti-layout-list-post</span></div>
								<div class="icon-container"><span class="ti-layout-list-large-image"></span><span class="icon-name"> ti-layout-list-large-image</span></div>
								<div class="icon-container"><span class="ti-layout-line-solid"></span><span class="icon-name"> ti-layout-line-solid</span></div>
								<div class="icon-container"><span class="ti-layout-grid4"></span><span class="icon-name"> ti-layout-grid4</span></div>
								<div class="icon-container"><span class="ti-layout-grid3"></span><span class="icon-name"> ti-layout-grid3</span></div>
								<div class="icon-container"><span class="ti-layout-grid2"></span><span class="icon-name"> ti-layout-grid2</span></div>
								<div class="icon-container"><span class="ti-layout-grid2-thumb"></span><span class="icon-name"> ti-layout-grid2-thumb</span></div>
								<div class="icon-container"><span class="ti-layout-cta-right"></span><span class="icon-name"> ti-layout-cta-right</span></div>
								<div class="icon-container"><span class="ti-layout-cta-left"></span><span class="icon-name"> ti-layout-cta-left</span></div>
								<div class="icon-container"><span class="ti-layout-cta-center"></span><span class="icon-name"> ti-layout-cta-center</span></div>
								<div class="icon-container"><span class="ti-layout-cta-btn-right"></span><span class="icon-name"> ti-layout-cta-btn-right</span></div>
								<div class="icon-container"><span class="ti-layout-cta-btn-left"></span><span class="icon-name"> ti-layout-cta-btn-left</span></div>
								<div class="icon-container"><span class="ti-layout-column4"></span><span class="icon-name"> ti-layout-column4</span></div>
								<div class="icon-container"><span class="ti-layout-column3"></span><span class="icon-name"> ti-layout-column3</span></div>
								<div class="icon-container"><span class="ti-layout-column2"></span><span class="icon-name"> ti-layout-column2</span></div>
								<div class="icon-container"><span class="ti-layout-accordion-separated"></span><span class="icon-name"> ti-layout-accordion-separated</span></div>
								<div class="icon-container"><span class="ti-layout-accordion-merged"></span><span class="icon-name"> ti-layout-accordion-merged</span></div>
								<div class="icon-container"><span class="ti-layout-accordion-list"></span><span class="icon-name"> ti-layout-accordion-list</span></div>
								<div class="icon-container"><span class="ti-widgetized"></span><span class="icon-name"> ti-widgetized</span></div>
								<div class="icon-container"><span class="ti-widget"></span><span class="icon-name"> ti-widget</span></div>
								<div class="icon-container"><span class="ti-widget-alt"></span><span class="icon-name"> ti-widget-alt</span></div>
								<div class="icon-container"><span class="ti-view-list"></span><span class="icon-name"> ti-view-list</span></div>
								<div class="icon-container"><span class="ti-view-list-alt"></span><span class="icon-name"> ti-view-list-alt</span></div>
								<div class="icon-container"><span class="ti-view-grid"></span><span class="icon-name"> ti-view-grid</span></div>
								<div class="icon-container"><span class="ti-upload"></span><span class="icon-name"> ti-upload</span></div>
								<div class="icon-container"><span class="ti-download"></span><span class="icon-name"> ti-download</span></div>
								<div class="icon-container"><span class="ti-loop"></span><span class="icon-name"> ti-loop</span></div>
								<div class="icon-container"><span class="ti-layout-sidebar-2"></span><span class="icon-name"> ti-layout-sidebar-2</span></div>
								<div class="icon-container"><span class="ti-layout-grid4-alt"></span><span class="icon-name"> ti-layout-grid4-alt</span></div>
								<div class="icon-container"><span class="ti-layout-grid3-alt"></span><span class="icon-name"> ti-layout-grid3-alt</span></div>
								<div class="icon-container"><span class="ti-layout-grid2-alt"></span><span class="icon-name"> ti-layout-grid2-alt</span></div>
								<div class="icon-container"><span class="ti-layout-column4-alt"></span><span class="icon-name"> ti-layout-column4-alt</span></div>
								<div class="icon-container"><span class="ti-layout-column3-alt"></span><span class="icon-name"> ti-layout-column3-alt</span></div>
								<div class="icon-container"><span class="ti-layout-column2-alt"></span><span class="icon-name"> ti-layout-column2-alt</span></div>
								<div class="icon-container"><span class="ti-flickr"></span><span class="icon-name"> ti-flickr</span></div>
								<div class="icon-container"><span class="ti-flickr-alt"></span><span class="icon-name"> ti-flickr-alt</span></div>
								<div class="icon-container"><span class="ti-instagram"></span><span class="icon-name"> ti-instagram</span></div>
								<div class="icon-container"><span class="ti-google"></span><span class="icon-name"> ti-google</span></div>
								<div class="icon-container"><span class="ti-github"></span><span class="icon-name"> ti-github</span></div>
								<div class="icon-container"><span class="ti-facebook"></span><span class="icon-name"> ti-facebook</span></div>
								<div class="icon-container"><span class="ti-dropbox"></span><span class="icon-name"> ti-dropbox</span></div>
								<div class="icon-container"><span class="ti-dropbox-alt"></span><span class="icon-name"> ti-dropbox-alt</span></div>
								<div class="icon-container"><span class="ti-dribbble"></span><span class="icon-name"> ti-dribbble</span></div>
								<div class="icon-container"><span class="ti-apple"></span><span class="icon-name"> ti-apple</span></div>
								<div class="icon-container"><span class="ti-android"></span><span class="icon-name"> ti-android</span></div>
								<div class="icon-container"><span class="ti-yahoo"></span><span class="icon-name"> ti-yahoo</span></div>
								<div class="icon-container"><span class="ti-trello"></span><span class="icon-name"> ti-trello</span></div>
								<div class="icon-container"><span class="ti-stack-overflow"></span><span class="icon-name"> ti-stack-overflow</span></div>
								<div class="icon-container"><span class="ti-soundcloud"></span><span class="icon-name"> ti-soundcloud</span></div>
								<div class="icon-container"><span class="ti-sharethis"></span><span class="icon-name"> ti-sharethis</span></div>
								<div class="icon-container"><span class="ti-sharethis-alt"></span><span class="icon-name"> ti-sharethis-alt</span></div>
								<div class="icon-container"><span class="ti-reddit"></span><span class="icon-name"> ti-reddit</span></div>
								<div class="icon-container"><span class="ti-microsoft"></span><span class="icon-name"> ti-microsoft</span></div>
								<div class="icon-container"><span class="ti-microsoft-alt"></span><span class="icon-name"> ti-microsoft-alt</span></div>
								<div class="icon-container"><span class="ti-linux"></span><span class="icon-name"> ti-linux</span></div>
								<div class="icon-container"><span class="ti-jsfiddle"></span><span class="icon-name"> ti-jsfiddle</span></div>
								<div class="icon-container"><span class="ti-joomla"></span><span class="icon-name"> ti-joomla</span></div>
								<div class="icon-container"><span class="ti-jsp5"></span><span class="icon-name"> ti-jsp5</span></div>
								<div class="icon-container"><span class="ti-css3"></span><span class="icon-name"> ti-css3</span></div>
								<div class="icon-container"><span class="ti-drupal"></span><span class="icon-name"> ti-drupal</span></div>
								<div class="icon-container"><span class="ti-wordpress"></span><span class="icon-name"> ti-wordpress</span></div>
								<div class="icon-container"><span class="ti-tumblr"></span><span class="icon-name"> ti-tumblr</span></div>
								<div class="icon-container"><span class="ti-tumblr-alt"></span><span class="icon-name"> ti-tumblr-alt</span></div>
								<div class="icon-container"><span class="ti-skype"></span><span class="icon-name"> ti-skype</span></div>
								<div class="icon-container"><span class="ti-youtube"></span><span class="icon-name"> ti-youtube</span></div>
								<div class="icon-container"><span class="ti-vimeo"></span><span class="icon-name"> ti-vimeo</span></div>
								<div class="icon-container"><span class="ti-vimeo-alt"></span><span class="icon-name"> ti-vimeo-alt</span></div>
								<div class="icon-container"><span class="ti-twitter"></span><span class="icon-name"> ti-twitter</span></div>
								<div class="icon-container"><span class="ti-twitter-alt"></span><span class="icon-name"> ti-twitter-alt</span></div>
								<div class="icon-container"><span class="ti-linkedin"></span><span class="icon-name"> ti-linkedin</span></div>
								<div class="icon-container"><span class="ti-pinterest"></span><span class="icon-name"> ti-pinterest</span></div>
								<div class="icon-container"><span class="ti-pinterest-alt"></span><span class="icon-name"> ti-pinterest-alt</span></div>
								<div class="icon-container"><span class="ti-themify-logo"></span><span class="icon-name"> ti-themify-logo</span></div>
								<div class="icon-container"><span class="ti-themify-favicon"></span><span class="icon-name"> ti-themify-favicon</span></div>
								<div class="icon-container"><span class="ti-themify-favicon-alt"></span><span class="icon-name"> ti-themify-favicon-alt</span></div>
							</div>
						</div>
					</div>
				</div>
			</section>

			<section class="module divider-top">
				<div class="container">
					<div class="row">
						<div class="col-md-6 m-auto text-center">
							<p class="subtitle">Discover our story</p>
							<h1 class="display-1">Elegant Icons</h1>
							<p class="lead">See how your users experience your website in realtime or view <br/> trends to see any changes in performance over time.</p>
							<div class="divider-border"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="space" data-mY="40px"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="iconset-box"><span class="box1"><span class="arrow_up" aria-hidden="true"></span>		Â arrow_up</span><span class="box1"><span class="arrow_down" aria-hidden="true"></span>		Â arrow_down</span><span class="box1"><span class="arrow_left" aria-hidden="true"></span>		Â arrow_left</span><span class="box1"><span class="arrow_right" aria-hidden="true"></span>		Â arrow_right</span><span class="box1"><span class="arrow_left-up" aria-hidden="true"></span>		Â arrow_left-up</span><span class="box1"><span class="arrow_right-up" aria-hidden="true"></span>		Â arrow_right-up</span><span class="box1"><span class="arrow_right-down" aria-hidden="true"></span>		Â arrow_right-down</span><span class="box1"><span class="arrow_left-down" aria-hidden="true"></span>		Â arrow_left-down</span><span class="box1"><span class="arrow-up-down" aria-hidden="true"></span>		Â arrow-up-down</span><span class="box1"><span class="arrow_up-down_alt" aria-hidden="true"></span>		Â arrow_up-down_alt</span><span class="box1"><span class="arrow_left-right_alt" aria-hidden="true"></span>		Â arrow_left-right_alt</span><span class="box1"><span class="arrow_left-right" aria-hidden="true"></span>		Â arrow_left-right</span><span class="box1"><span class="arrow_expand_alt2" aria-hidden="true"></span>		Â arrow_expand_alt2</span><span class="box1"><span class="arrow_expand_alt" aria-hidden="true"></span>		Â arrow_expand_alt</span><span class="box1"><span class="arrow_condense" aria-hidden="true"></span>		Â arrow_condense</span><span class="box1"><span class="arrow_expand" aria-hidden="true"></span>		Â arrow_expand</span><span class="box1"><span class="arrow_move" aria-hidden="true"></span>		Â arrow_move</span><span class="box1"><span class="arrow_carrot-up" aria-hidden="true"></span>		Â arrow_carrot-up</span><span class="box1"><span class="arrow_carrot-down" aria-hidden="true"></span>		Â arrow_carrot-down</span><span class="box1"><span class="arrow_carrot-left" aria-hidden="true"></span>		Â arrow_carrot-left</span><span class="box1"><span class="arrow_carrot-right" aria-hidden="true"></span>		Â arrow_carrot-right</span><span class="box1"><span class="arrow_carrot-2up" aria-hidden="true"></span>		Â arrow_carrot-2up</span><span class="box1"><span class="arrow_carrot-2down" aria-hidden="true"></span>		Â arrow_carrot-2down</span><span class="box1"><span class="arrow_carrot-2left" aria-hidden="true"></span>		Â arrow_carrot-2left</span><span class="box1"><span class="arrow_carrot-2right" aria-hidden="true"></span>		Â arrow_carrot-2right</span><span class="box1"><span class="arrow_carrot-up_alt2" aria-hidden="true"></span>		Â arrow_carrot-up_alt2</span><span class="box1"><span class="arrow_carrot-down_alt2" aria-hidden="true"></span>		Â arrow_carrot-down_alt2</span><span class="box1"><span class="arrow_carrot-left_alt2" aria-hidden="true"></span>		Â arrow_carrot-left_alt2</span><span class="box1"><span class="arrow_carrot-right_alt2" aria-hidden="true"></span>		Â arrow_carrot-right_alt2</span><span class="box1"><span class="arrow_carrot-2up_alt2" aria-hidden="true"></span>		Â arrow_carrot-2up_alt2</span><span class="box1"><span class="arrow_carrot-2down_alt2" aria-hidden="true"></span>		Â arrow_carrot-2down_alt2</span><span class="box1"><span class="arrow_carrot-2left_alt2" aria-hidden="true"></span>		Â arrow_carrot-2left_alt2</span><span class="box1"><span class="arrow_carrot-2right_alt2" aria-hidden="true"></span>		Â arrow_carrot-2right_alt2</span><span class="box1"><span class="arrow_triangle-up" aria-hidden="true"></span>		Â arrow_triangle-up</span><span class="box1"><span class="arrow_triangle-down" aria-hidden="true"></span>		Â arrow_triangle-down</span><span class="box1"><span class="arrow_triangle-left" aria-hidden="true"></span>		Â arrow_triangle-left</span><span class="box1"><span class="arrow_triangle-right" aria-hidden="true"></span>		Â arrow_triangle-right</span><span class="box1"><span class="arrow_triangle-up_alt2" aria-hidden="true"></span>		Â arrow_triangle-up_alt2</span><span class="box1"><span class="arrow_triangle-down_alt2" aria-hidden="true"></span>		Â arrow_triangle-down_alt2</span><span class="box1"><span class="arrow_triangle-left_alt2" aria-hidden="true"></span>		Â arrow_triangle-left_alt2</span><span class="box1"><span class="arrow_triangle-right_alt2" aria-hidden="true"></span>		Â arrow_triangle-right_alt2</span><span class="box1"><span class="arrow_back" aria-hidden="true"></span>		Â arrow_back</span><span class="box1"><span class="icon_minus-06" aria-hidden="true"></span>		Â icon_minus-06</span><span class="box1"><span class="icon_plus" aria-hidden="true"></span>		Â icon_plus</span><span class="box1"><span class="icon_close" aria-hidden="true"></span>		Â icon_close</span><span class="box1"><span class="icon_check" aria-hidden="true"></span>		Â icon_check</span><span class="box1"><span class="icon_minus_alt2" aria-hidden="true"></span>		Â icon_minus_alt2</span><span class="box1"><span class="icon_plus_alt2" aria-hidden="true"></span>		Â icon_plus_alt2</span><span class="box1"><span class="icon_close_alt2" aria-hidden="true"></span>		Â icon_close_alt2</span><span class="box1"><span class="icon_check_alt2" aria-hidden="true"></span>		Â icon_check_alt2</span><span class="box1"><span class="icon_zoom-out_alt" aria-hidden="true"></span>		Â icon_zoom-out_alt</span><span class="box1"><span class="icon_zoom-in_alt" aria-hidden="true"></span>		Â icon_zoom-in_alt</span><span class="box1"><span class="icon_search" aria-hidden="true"></span>		Â icon_search</span><span class="box1"><span class="icon_box-empty" aria-hidden="true"></span>		Â icon_box-empty</span><span class="box1"><span class="icon_box-selected" aria-hidden="true"></span>		Â icon_box-selected</span><span class="box1"><span class="icon_minus-box" aria-hidden="true"></span>		Â icon_minus-box</span><span class="box1"><span class="icon_plus-box" aria-hidden="true"></span>		Â icon_plus-box</span><span class="box1"><span class="icon_box-checked" aria-hidden="true"></span>		Â icon_box-checked</span><span class="box1"><span class="icon_circle-empty" aria-hidden="true"></span>		Â icon_circle-empty</span><span class="box1"><span class="icon_circle-slelected" aria-hidden="true"></span>		Â icon_circle-slelected</span><span class="box1"><span class="icon_stop_alt2" aria-hidden="true"></span>		Â icon_stop_alt2</span><span class="box1"><span class="icon_stop" aria-hidden="true"></span>		Â icon_stop</span><span class="box1"><span class="icon_pause_alt2" aria-hidden="true"></span>		Â icon_pause_alt2</span><span class="box1"><span class="icon_pause" aria-hidden="true"></span>		Â icon_pause</span><span class="box1"><span class="icon_menu" aria-hidden="true"></span>		Â icon_menu</span><span class="box1"><span class="icon_menu-square_alt2" aria-hidden="true"></span>		Â icon_menu-square_alt2</span><span class="box1"><span class="icon_menu-circle_alt2" aria-hidden="true"></span>		Â icon_menu-circle_alt2</span><span class="box1"><span class="icon_ul" aria-hidden="true"></span>		Â icon_ul</span><span class="box1"><span class="icon_ol" aria-hidden="true"></span>		Â icon_ol</span><span class="box1"><span class="icon_adjust-horiz" aria-hidden="true"></span>		Â icon_adjust-horiz</span><span class="box1"><span class="icon_adjust-vert" aria-hidden="true"></span>		Â icon_adjust-vert</span><span class="box1"><span class="icon_document_alt" aria-hidden="true"></span>		Â icon_document_alt</span><span class="box1"><span class="icon_documents_alt" aria-hidden="true"></span>		Â icon_documents_alt</span><span class="box1"><span class="icon_pencil" aria-hidden="true"></span>		Â icon_pencil</span><span class="box1"><span class="icon_pencil-edit_alt" aria-hidden="true"></span>		Â icon_pencil-edit_alt</span><span class="box1"><span class="icon_pencil-edit" aria-hidden="true"></span>		Â icon_pencil-edit</span><span class="box1"><span class="icon_folder-alt" aria-hidden="true"></span>		Â icon_folder-alt</span><span class="box1"><span class="icon_folder-open_alt" aria-hidden="true"></span>		Â icon_folder-open_alt</span><span class="box1"><span class="icon_folder-add_alt" aria-hidden="true"></span>		Â icon_folder-add_alt</span><span class="box1"><span class="icon_info_alt" aria-hidden="true"></span>		Â icon_info_alt</span><span class="box1"><span class="icon_error-oct_alt" aria-hidden="true"></span>		Â icon_error-oct_alt</span><span class="box1"><span class="icon_error-circle_alt" aria-hidden="true"></span>		Â icon_error-circle_alt</span><span class="box1"><span class="icon_error-triangle_alt" aria-hidden="true"></span>		Â icon_error-triangle_alt</span><span class="box1"><span class="icon_question_alt2" aria-hidden="true"></span>		Â icon_question_alt2</span><span class="box1"><span class="icon_question" aria-hidden="true"></span>		Â icon_question</span><span class="box1"><span class="icon_comment_alt" aria-hidden="true"></span>		Â icon_comment_alt</span><span class="box1"><span class="icon_chat_alt" aria-hidden="true"></span>		Â icon_chat_alt</span><span class="box1"><span class="icon_vol-mute_alt" aria-hidden="true"></span>		Â icon_vol-mute_alt</span><span class="box1"><span class="icon_volume-low_alt" aria-hidden="true"></span>		Â icon_volume-low_alt</span><span class="box1"><span class="icon_volume-high_alt" aria-hidden="true"></span>		Â icon_volume-high_alt</span><span class="box1"><span class="icon_quotations" aria-hidden="true"></span>		Â icon_quotations</span><span class="box1"><span class="icon_quotations_alt2" aria-hidden="true"></span>		Â icon_quotations_alt2</span><span class="box1"><span class="icon_clock_alt" aria-hidden="true"></span>		Â icon_clock_alt</span><span class="box1"><span class="icon_lock_alt" aria-hidden="true"></span>		Â icon_lock_alt</span><span class="box1"><span class="icon_lock-open_alt" aria-hidden="true"></span>		Â icon_lock-open_alt</span><span class="box1"><span class="icon_key_alt" aria-hidden="true"></span>		Â icon_key_alt</span><span class="box1"><span class="icon_cloud_alt" aria-hidden="true"></span>		Â icon_cloud_alt</span><span class="box1"><span class="icon_cloud-upload_alt" aria-hidden="true"></span>		Â icon_cloud-upload_alt</span><span class="box1"><span class="icon_cloud-download_alt" aria-hidden="true"></span>		Â icon_cloud-download_alt</span><span class="box1"><span class="icon_image" aria-hidden="true"></span>		Â icon_image</span><span class="box1"><span class="icon_images" aria-hidden="true"></span>		Â icon_images</span><span class="box1"><span class="icon_lightbulb_alt" aria-hidden="true"></span>		Â icon_lightbulb_alt</span><span class="box1"><span class="icon_gift_alt" aria-hidden="true"></span>		Â icon_gift_alt</span><span class="box1"><span class="icon_house_alt" aria-hidden="true"></span>		Â icon_house_alt</span><span class="box1"><span class="icon_genius" aria-hidden="true"></span>		Â icon_genius</span><span class="box1"><span class="icon_mobile" aria-hidden="true"></span>		Â icon_mobile</span><span class="box1"><span class="icon_tablet" aria-hidden="true"></span>		Â icon_tablet</span><span class="box1"><span class="icon_laptop" aria-hidden="true"></span>		Â icon_laptop</span><span class="box1"><span class="icon_desktop" aria-hidden="true"></span>		Â icon_desktop</span><span class="box1"><span class="icon_camera_alt" aria-hidden="true"></span>		Â icon_camera_alt</span><span class="box1"><span class="icon_mail_alt" aria-hidden="true"></span>		Â icon_mail_alt</span><span class="box1"><span class="icon_cone_alt" aria-hidden="true"></span>		Â icon_cone_alt</span><span class="box1"><span class="icon_ribbon_alt" aria-hidden="true"></span>		Â icon_ribbon_alt</span><span class="box1"><span class="icon_bag_alt" aria-hidden="true"></span>		Â icon_bag_alt</span><span class="box1"><span class="icon_creditcard" aria-hidden="true"></span>		Â icon_creditcard</span><span class="box1"><span class="icon_cart_alt" aria-hidden="true"></span>		Â icon_cart_alt</span><span class="box1"><span class="icon_paperclip" aria-hidden="true"></span>		Â icon_paperclip</span><span class="box1"><span class="icon_tag_alt" aria-hidden="true"></span>		Â icon_tag_alt</span><span class="box1"><span class="icon_tags_alt" aria-hidden="true"></span>		Â icon_tags_alt</span><span class="box1"><span class="icon_trash_alt" aria-hidden="true"></span>		Â icon_trash_alt</span><span class="box1"><span class="icon_cursor_alt" aria-hidden="true"></span>		Â icon_cursor_alt</span><span class="box1"><span class="icon_mic_alt" aria-hidden="true"></span>		Â icon_mic_alt</span><span class="box1"><span class="icon_compass_alt" aria-hidden="true"></span>		Â icon_compass_alt</span><span class="box1"><span class="icon_pin_alt" aria-hidden="true"></span>		Â icon_pin_alt</span><span class="box1"><span class="icon_pushpin_alt" aria-hidden="true"></span>		Â icon_pushpin_alt</span><span class="box1"><span class="icon_map_alt" aria-hidden="true"></span>		Â icon_map_alt</span><span class="box1"><span class="icon_drawer_alt" aria-hidden="true"></span>		Â icon_drawer_alt</span><span class="box1"><span class="icon_toolbox_alt" aria-hidden="true"></span>		Â icon_toolbox_alt</span><span class="box1"><span class="icon_book_alt" aria-hidden="true"></span>		Â icon_book_alt</span><span class="box1"><span class="icon_calendar" aria-hidden="true"></span>		Â icon_calendar</span><span class="box1"><span class="icon_film" aria-hidden="true"></span>		Â icon_film</span><span class="box1"><span class="icon_table" aria-hidden="true"></span>		Â icon_table</span><span class="box1"><span class="icon_contacts_alt" aria-hidden="true"></span>		Â icon_contacts_alt</span><span class="box1"><span class="icon_headphones" aria-hidden="true"></span>		Â icon_headphones</span><span class="box1"><span class="icon_lifesaver" aria-hidden="true"></span>		Â icon_lifesaver</span><span class="box1"><span class="icon_piechart" aria-hidden="true"></span>		Â icon_piechart</span><span class="box1"><span class="icon_refresh" aria-hidden="true"></span>		Â icon_refresh</span><span class="box1"><span class="icon_link_alt" aria-hidden="true"></span>		Â icon_link_alt</span><span class="box1"><span class="icon_link" aria-hidden="true"></span>		Â icon_link</span><span class="box1"><span class="icon_loading" aria-hidden="true"></span>		Â icon_loading</span><span class="box1"><span class="icon_blocked" aria-hidden="true"></span>		Â icon_blocked</span><span class="box1"><span class="icon_archive_alt" aria-hidden="true"></span>		Â icon_archive_alt</span><span class="box1"><span class="icon_heart_alt" aria-hidden="true"></span>		Â icon_heart_alt</span><span class="box1"><span class="icon_printer" aria-hidden="true"></span>		Â icon_printer</span><span class="box1"><span class="icon_calulator" aria-hidden="true"></span>		Â icon_calulator</span><span class="box1"><span class="icon_building" aria-hidden="true"></span>		Â icon_building</span><span class="box1"><span class="icon_floppy" aria-hidden="true"></span>		Â icon_floppy</span><span class="box1"><span class="icon_drive" aria-hidden="true"></span>		Â icon_drive</span><span class="box1"><span class="icon_search-2" aria-hidden="true"></span>		Â icon_search-2</span><span class="box1"><span class="icon_id" aria-hidden="true"></span>		Â icon_id</span><span class="box1"><span class="icon_id-2" aria-hidden="true"></span>		Â icon_id-2</span><span class="box1"><span class="icon_puzzle" aria-hidden="true"></span>		Â icon_puzzle</span><span class="box1"><span class="icon_like" aria-hidden="true"></span>		Â icon_like</span><span class="box1"><span class="icon_dislike" aria-hidden="true"></span>		Â icon_dislike</span><span class="box1"><span class="icon_mug" aria-hidden="true"></span>		Â icon_mug</span><span class="box1"><span class="icon_currency" aria-hidden="true"></span>		Â icon_currency</span><span class="box1"><span class="icon_wallet" aria-hidden="true"></span>		Â icon_wallet</span><span class="box1"><span class="icon_pens" aria-hidden="true"></span>		Â icon_pens</span><span class="box1"><span class="icon_easel" aria-hidden="true"></span>		Â icon_easel</span><span class="box1"><span class="icon_flowchart" aria-hidden="true"></span>		Â icon_flowchart</span><span class="box1"><span class="icon_datareport" aria-hidden="true"></span>		Â icon_datareport</span><span class="box1"><span class="icon_briefcase" aria-hidden="true"></span>		Â icon_briefcase</span><span class="box1"><span class="icon_shield" aria-hidden="true"></span>		Â icon_shield</span><span class="box1"><span class="icon_percent" aria-hidden="true"></span>		Â icon_percent</span><span class="box1"><span class="icon_globe" aria-hidden="true"></span>		Â icon_globe</span><span class="box1"><span class="icon_globe-2" aria-hidden="true"></span>		Â icon_globe-2</span><span class="box1"><span class="icon_target" aria-hidden="true"></span>		Â icon_target</span><span class="box1"><span class="icon_hourglass" aria-hidden="true"></span>		Â icon_hourglass</span><span class="box1"><span class="icon_balance" aria-hidden="true"></span>		Â icon_balance</span><span class="box1"><span class="icon_star_alt" aria-hidden="true"></span>		Â icon_star_alt</span><span class="box1"><span class="icon_star-half_alt" aria-hidden="true"></span>		Â icon_star-half_alt</span><span class="box1"><span class="icon_star" aria-hidden="true"></span>		Â icon_star</span><span class="box1"><span class="icon_star-half" aria-hidden="true"></span>		Â icon_star-half</span><span class="box1"><span class="icon_tools" aria-hidden="true"></span>		Â icon_tools</span><span class="box1"><span class="icon_tool" aria-hidden="true"></span>		Â icon_tool</span><span class="box1"><span class="icon_cog" aria-hidden="true"></span>		Â icon_cog</span><span class="box1"><span class="icon_cogs" aria-hidden="true"></span>		Â icon_cogs</span><span class="box1"><span class="arrow_up_alt" aria-hidden="true"></span>		Â arrow_up_alt</span><span class="box1"><span class="arrow_down_alt" aria-hidden="true"></span>		Â arrow_down_alt</span><span class="box1"><span class="arrow_left_alt" aria-hidden="true"></span>		Â arrow_left_alt</span><span class="box1"><span class="arrow_right_alt" aria-hidden="true"></span>		Â arrow_right_alt</span><span class="box1"><span class="arrow_left-up_alt" aria-hidden="true"></span>		Â arrow_left-up_alt</span><span class="box1"><span class="arrow_right-up_alt" aria-hidden="true"></span>		Â arrow_right-up_alt</span><span class="box1"><span class="arrow_right-down_alt" aria-hidden="true"></span>		Â arrow_right-down_alt</span><span class="box1"><span class="arrow_left-down_alt" aria-hidden="true"></span>		Â arrow_left-down_alt</span><span class="box1"><span class="arrow_condense_alt" aria-hidden="true"></span>		Â arrow_condense_alt</span><span class="box1"><span class="arrow_expand_alt3" aria-hidden="true"></span>		Â arrow_expand_alt3</span><span class="box1"><span class="arrow_carrot_up_alt" aria-hidden="true"></span>		Â arrow_carrot_up_alt</span><span class="box1"><span class="arrow_carrot-down_alt" aria-hidden="true"></span>		Â arrow_carrot-down_alt</span><span class="box1"><span class="arrow_carrot-left_alt" aria-hidden="true"></span>		Â arrow_carrot-left_alt</span><span class="box1"><span class="arrow_carrot-right_alt" aria-hidden="true"></span>		Â arrow_carrot-right_alt</span><span class="box1"><span class="arrow_carrot-2up_alt" aria-hidden="true"></span>		Â arrow_carrot-2up_alt</span><span class="box1"><span class="arrow_carrot-2dwnn_alt" aria-hidden="true"></span>		Â arrow_carrot-2dwnn_alt</span><span class="box1"><span class="arrow_carrot-2left_alt" aria-hidden="true"></span>		Â arrow_carrot-2left_alt</span><span class="box1"><span class="arrow_carrot-2right_alt" aria-hidden="true"></span>		Â arrow_carrot-2right_alt</span><span class="box1"><span class="arrow_triangle-up_alt" aria-hidden="true"></span>		Â arrow_triangle-up_alt</span><span class="box1"><span class="arrow_triangle-down_alt" aria-hidden="true"></span>		Â arrow_triangle-down_alt</span><span class="box1"><span class="arrow_triangle-left_alt" aria-hidden="true"></span>		Â arrow_triangle-left_alt</span><span class="box1"><span class="arrow_triangle-right_alt" aria-hidden="true"></span>		Â arrow_triangle-right_alt</span><span class="box1"><span class="icon_minus_alt" aria-hidden="true"></span>		Â icon_minus_alt</span><span class="box1"><span class="icon_plus_alt" aria-hidden="true"></span>		Â icon_plus_alt</span><span class="box1"><span class="icon_close_alt" aria-hidden="true"></span>		Â icon_close_alt</span><span class="box1"><span class="icon_check_alt" aria-hidden="true"></span>		Â icon_check_alt</span><span class="box1"><span class="icon_zoom-out" aria-hidden="true"></span>		Â icon_zoom-out</span><span class="box1"><span class="icon_zoom-in" aria-hidden="true"></span>		Â icon_zoom-in</span><span class="box1"><span class="icon_stop_alt" aria-hidden="true"></span>		Â icon_stop_alt</span><span class="box1"><span class="icon_menu-square_alt" aria-hidden="true"></span>		Â icon_menu-square_alt</span><span class="box1"><span class="icon_menu-circle_alt" aria-hidden="true"></span>		Â icon_menu-circle_alt</span><span class="box1"><span class="icon_document" aria-hidden="true"></span>		Â icon_document</span><span class="box1"><span class="icon_documents" aria-hidden="true"></span>		Â icon_documents</span><span class="box1"><span class="icon_pencil_alt" aria-hidden="true"></span>		Â icon_pencil_alt</span><span class="box1"><span class="icon_folder" aria-hidden="true"></span>		Â icon_folder</span><span class="box1"><span class="icon_folder-open" aria-hidden="true"></span>		Â icon_folder-open</span><span class="box1"><span class="icon_folder-add" aria-hidden="true"></span>		Â icon_folder-add</span><span class="box1"><span class="icon_folder_upload" aria-hidden="true"></span>		Â icon_folder_upload</span><span class="box1"><span class="icon_folder_download" aria-hidden="true"></span>		Â icon_folder_download</span><span class="box1"><span class="icon_info" aria-hidden="true"></span>		Â icon_info</span><span class="box1"><span class="icon_error-circle" aria-hidden="true"></span>		Â icon_error-circle</span><span class="box1"><span class="icon_error-oct" aria-hidden="true"></span>		Â icon_error-oct</span><span class="box1"><span class="icon_error-triangle" aria-hidden="true"></span>		Â icon_error-triangle</span><span class="box1"><span class="icon_question_alt" aria-hidden="true"></span>		Â icon_question_alt</span><span class="box1"><span class="icon_comment" aria-hidden="true"></span>		Â icon_comment</span><span class="box1"><span class="icon_chat" aria-hidden="true"></span>		Â icon_chat</span><span class="box1"><span class="icon_vol-mute" aria-hidden="true"></span>		Â icon_vol-mute</span><span class="box1"><span class="icon_volume-low" aria-hidden="true"></span>		Â icon_volume-low</span><span class="box1"><span class="icon_volume-high" aria-hidden="true"></span>		Â icon_volume-high</span><span class="box1"><span class="icon_quotations_alt" aria-hidden="true"></span>		Â icon_quotations_alt</span><span class="box1"><span class="icon_clock" aria-hidden="true"></span>		Â icon_clock</span><span class="box1"><span class="icon_lock" aria-hidden="true"></span>		Â icon_lock</span><span class="box1"><span class="icon_lock-open" aria-hidden="true"></span>		Â icon_lock-open</span><span class="box1"><span class="icon_key" aria-hidden="true"></span>		Â icon_key</span><span class="box1"><span class="icon_cloud" aria-hidden="true"></span>		Â icon_cloud</span><span class="box1"><span class="icon_cloud-upload" aria-hidden="true"></span>		Â icon_cloud-upload</span><span class="box1"><span class="icon_cloud-download" aria-hidden="true"></span>		Â icon_cloud-download</span><span class="box1"><span class="icon_lightbulb" aria-hidden="true"></span>		Â icon_lightbulb</span><span class="box1"><span class="icon_gift" aria-hidden="true"></span>		Â icon_gift</span><span class="box1"><span class="icon_house" aria-hidden="true"></span>		Â icon_house</span><span class="box1"><span class="icon_camera" aria-hidden="true"></span>		Â icon_camera</span><span class="box1"><span class="icon_mail" aria-hidden="true"></span>		Â icon_mail</span><span class="box1"><span class="icon_cone" aria-hidden="true"></span>		Â icon_cone</span><span class="box1"><span class="icon_ribbon" aria-hidden="true"></span>		Â icon_ribbon</span><span class="box1"><span class="icon_bag" aria-hidden="true"></span>		Â icon_bag</span><span class="box1"><span class="icon_cart" aria-hidden="true"></span>		Â icon_cart</span><span class="box1"><span class="icon_tag" aria-hidden="true"></span>		Â icon_tag</span><span class="box1"><span class="icon_tags" aria-hidden="true"></span>		Â icon_tags</span><span class="box1"><span class="icon_trash" aria-hidden="true"></span>		Â icon_trash</span><span class="box1"><span class="icon_cursor" aria-hidden="true"></span>		Â icon_cursor</span><span class="box1"><span class="icon_mic" aria-hidden="true"></span>		Â icon_mic</span><span class="box1"><span class="icon_compass" aria-hidden="true"></span>		Â icon_compass</span><span class="box1"><span class="icon_pin" aria-hidden="true"></span>		Â icon_pin</span><span class="box1"><span class="icon_pushpin" aria-hidden="true"></span>		Â icon_pushpin</span><span class="box1"><span class="icon_map" aria-hidden="true"></span>		Â icon_map</span><span class="box1"><span class="icon_drawer" aria-hidden="true"></span>		Â icon_drawer</span><span class="box1"><span class="icon_toolbox" aria-hidden="true"></span>		Â icon_toolbox</span><span class="box1"><span class="icon_book" aria-hidden="true"></span>		Â icon_book</span><span class="box1"><span class="icon_contacts" aria-hidden="true"></span>		Â icon_contacts</span><span class="box1"><span class="icon_archive" aria-hidden="true"></span>		Â icon_archive</span><span class="box1"><span class="icon_heart" aria-hidden="true"></span>		Â icon_heart</span><span class="box1"><span class="icon_profile" aria-hidden="true"></span>		Â icon_profile</span><span class="box1"><span class="icon_group" aria-hidden="true"></span>		Â icon_group</span><span class="box1"><span class="icon_grid-2x2" aria-hidden="true"></span>		Â icon_grid-2x2</span><span class="box1"><span class="icon_grid-3x3" aria-hidden="true"></span>		Â icon_grid-3x3</span><span class="box1"><span class="icon_music" aria-hidden="true"></span>		Â icon_music</span><span class="box1"><span class="icon_pause_alt" aria-hidden="true"></span>		Â icon_pause_alt</span><span class="box1"><span class="icon_phone" aria-hidden="true"></span>		Â icon_phone</span><span class="box1"><span class="icon_upload" aria-hidden="true"></span>		Â icon_upload</span><span class="box1"><span class="icon_download" aria-hidden="true"></span>		Â icon_download</span><span class="box1"><span class="icon_rook" aria-hidden="true"></span>		Â icon_rook</span><span class="box1"><span class="icon_printer-alt" aria-hidden="true"></span>		Â icon_printer-alt</span><span class="box1"><span class="icon_calculator_alt" aria-hidden="true"></span>		Â icon_calculator_alt</span><span class="box1"><span class="icon_building_alt" aria-hidden="true"></span>		Â icon_building_alt</span><span class="box1"><span class="icon_floppy_alt" aria-hidden="true"></span>		Â icon_floppy_alt</span><span class="box1"><span class="icon_drive_alt" aria-hidden="true"></span>		Â icon_drive_alt</span><span class="box1"><span class="icon_search_alt" aria-hidden="true"></span>		Â icon_search_alt</span><span class="box1"><span class="icon_id_alt" aria-hidden="true"></span>		Â icon_id_alt</span><span class="box1"><span class="icon_id-2_alt" aria-hidden="true"></span>		Â icon_id-2_alt</span><span class="box1"><span class="icon_puzzle_alt" aria-hidden="true"></span>		Â icon_puzzle_alt</span><span class="box1"><span class="icon_like_alt" aria-hidden="true"></span>		Â icon_like_alt</span><span class="box1"><span class="icon_dislike_alt" aria-hidden="true"></span>		Â icon_dislike_alt</span><span class="box1"><span class="icon_mug_alt" aria-hidden="true"></span>		Â icon_mug_alt</span><span class="box1"><span class="icon_currency_alt" aria-hidden="true"></span>		Â icon_currency_alt</span><span class="box1"><span class="icon_wallet_alt" aria-hidden="true"></span>		Â icon_wallet_alt</span><span class="box1"><span class="icon_pens_alt" aria-hidden="true"></span>		Â icon_pens_alt</span><span class="box1"><span class="icon_easel_alt" aria-hidden="true"></span>		Â icon_easel_alt</span><span class="box1"><span class="icon_flowchart_alt" aria-hidden="true"></span>		Â icon_flowchart_alt</span><span class="box1"><span class="icon_datareport_alt" aria-hidden="true"></span>		Â icon_datareport_alt</span><span class="box1"><span class="icon_briefcase_alt" aria-hidden="true"></span>		Â icon_briefcase_alt</span><span class="box1"><span class="icon_shield_alt" aria-hidden="true"></span>		Â icon_shield_alt</span><span class="box1"><span class="icon_percent_alt" aria-hidden="true"></span>		Â icon_percent_alt</span><span class="box1"><span class="icon_globe_alt" aria-hidden="true"></span>		Â icon_globe_alt</span><span class="box1"><span class="icon_clipboard" aria-hidden="true"></span>		Â icon_clipboard</span><span class="box1"><span class="social_facebook" aria-hidden="true"></span>		Â social_facebook</span><span class="box1"><span class="social_twitter" aria-hidden="true"></span>		Â social_twitter</span><span class="box1"><span class="social_pinterest" aria-hidden="true"></span>		Â social_pinterest</span><span class="box1"><span class="social_googleplus" aria-hidden="true"></span>		Â social_googleplus</span><span class="box1"><span class="social_tumblr" aria-hidden="true"></span>		Â social_tumblr</span><span class="box1"><span class="social_tumbleupon" aria-hidden="true"></span>		Â social_tumbleupon</span><span class="box1"><span class="social_wordpress" aria-hidden="true"></span>		Â social_wordpress</span><span class="box1"><span class="social_instagram" aria-hidden="true"></span>		Â social_instagram</span><span class="box1"><span class="social_dribbble" aria-hidden="true"></span>		Â social_dribbble</span><span class="box1"><span class="social_vimeo" aria-hidden="true"></span>		Â social_vimeo</span><span class="box1"><span class="social_linkedin" aria-hidden="true"></span>		Â social_linkedin</span><span class="box1"><span class="social_rss" aria-hidden="true"></span>		Â social_rss</span><span class="box1"><span class="social_deviantart" aria-hidden="true"></span>		Â social_deviantart</span><span class="box1"><span class="social_share" aria-hidden="true"></span>		Â social_share</span><span class="box1"><span class="social_myspace" aria-hidden="true"></span>		Â social_myspace</span><span class="box1"><span class="social_skype" aria-hidden="true"></span>		Â social_skype</span><span class="box1"><span class="social_youtube" aria-hidden="true"></span>		Â social_youtube</span><span class="box1"><span class="social_picassa" aria-hidden="true"></span>		Â social_picassa</span><span class="box1"><span class="social_googledrive" aria-hidden="true"></span>		Â social_googledrive</span><span class="box1"><span class="social_flickr" aria-hidden="true"></span>		Â social_flickr</span><span class="box1"><span class="social_blogger" aria-hidden="true"></span>		Â social_blogger</span><span class="box1"><span class="social_spotify" aria-hidden="true"></span>		Â social_spotify</span><span class="box1"><span class="social_delicious" aria-hidden="true"></span>		Â social_delicious</span><span class="box1"><span class="social_facebook_circle" aria-hidden="true"></span>		Â social_facebook_circle</span><span class="box1"><span class="social_twitter_circle" aria-hidden="true"></span>		Â social_twitter_circle</span><span class="box1"><span class="social_pinterest_circle" aria-hidden="true"></span>		Â social_pinterest_circle</span><span class="box1"><span class="social_googleplus_circle" aria-hidden="true"></span>		Â social_googleplus_circle</span><span class="box1"><span class="social_tumblr_circle" aria-hidden="true"></span>		Â social_tumblr_circle</span><span class="box1"><span class="social_stumbleupon_circle" aria-hidden="true"></span>		Â social_stumbleupon_circle</span><span class="box1"><span class="social_wordpress_circle" aria-hidden="true"></span>		Â social_wordpress_circle</span><span class="box1"><span class="social_instagram_circle" aria-hidden="true"></span>		Â social_instagram_circle</span><span class="box1"><span class="social_dribbble_circle" aria-hidden="true"></span>		Â social_dribbble_circle</span><span class="box1"><span class="social_vimeo_circle" aria-hidden="true"></span>		Â social_vimeo_circle</span><span class="box1"><span class="social_linkedin_circle" aria-hidden="true"></span>		Â social_linkedin_circle</span><span class="box1"><span class="social_rss_circle" aria-hidden="true"></span>		Â social_rss_circle</span><span class="box1"><span class="social_deviantart_circle" aria-hidden="true"></span>		Â social_deviantart_circle</span><span class="box1"><span class="social_share_circle" aria-hidden="true"></span>		Â social_share_circle</span><span class="box1"><span class="social_myspace_circle" aria-hidden="true"></span>		Â social_myspace_circle</span><span class="box1"><span class="social_skype_circle" aria-hidden="true"></span>		Â social_skype_circle</span><span class="box1"><span class="social_youtube_circle" aria-hidden="true"></span>		Â social_youtube_circle</span><span class="box1"><span class="social_picassa_circle" aria-hidden="true"></span>		Â social_picassa_circle</span><span class="box1"><span class="social_googledrive_alt2" aria-hidden="true"></span>		Â social_googledrive_alt2</span><span class="box1"><span class="social_flickr_circle" aria-hidden="true"></span>		Â social_flickr_circle</span><span class="box1"><span class="social_blogger_circle" aria-hidden="true"></span>		Â social_blogger_circle</span><span class="box1"><span class="social_spotify_circle" aria-hidden="true"></span>		Â social_spotify_circle</span><span class="box1"><span class="social_delicious_circle" aria-hidden="true"></span>		Â social_delicious_circle</span><span class="box1"><span class="social_facebook_square" aria-hidden="true"></span>		Â social_facebook_square</span><span class="box1"><span class="social_twitter_square" aria-hidden="true"></span>		Â social_twitter_square</span><span class="box1"><span class="social_pinterest_square" aria-hidden="true"></span>		Â social_pinterest_square</span><span class="box1"><span class="social_googleplus_square" aria-hidden="true"></span>		Â social_googleplus_square</span><span class="box1"><span class="social_tumblr_square" aria-hidden="true"></span>		Â social_tumblr_square</span><span class="box1"><span class="social_stumbleupon_square" aria-hidden="true"></span>		Â social_stumbleupon_square</span><span class="box1"><span class="social_wordpress_square" aria-hidden="true"></span>		Â social_wordpress_square</span><span class="box1"><span class="social_instagram_square" aria-hidden="true"></span>		Â social_instagram_square</span><span class="box1"><span class="social_dribbble_square" aria-hidden="true"></span>		Â social_dribbble_square</span><span class="box1"><span class="social_vimeo_square" aria-hidden="true"></span>		Â social_vimeo_square</span><span class="box1"><span class="social_linkedin_square" aria-hidden="true"></span>		Â social_linkedin_square</span><span class="box1"><span class="social_rss_square" aria-hidden="true"></span>		Â social_rss_square</span><span class="box1"><span class="social_deviantart_square" aria-hidden="true"></span>		Â social_deviantart_square</span><span class="box1"><span class="social_share_square" aria-hidden="true"></span>		Â social_share_square</span><span class="box1"><span class="social_myspace_square" aria-hidden="true"></span>		Â social_myspace_square</span><span class="box1"><span class="social_skype_square" aria-hidden="true"></span>		Â social_skype_square</span><span class="box1"><span class="social_youtube_square" aria-hidden="true"></span>		Â social_youtube_square</span><span class="box1"><span class="social_picassa_square" aria-hidden="true"></span>		Â social_picassa_square</span><span class="box1"><span class="social_googledrive_square" aria-hidden="true"></span>		Â social_googledrive_square</span><span class="box1"><span class="social_flickr_square" aria-hidden="true"></span>		Â social_flickr_square</span><span class="box1"><span class="social_blogger_square" aria-hidden="true"></span>		Â social_blogger_square</span><span class="box1"><span class="social_spotify_square" aria-hidden="true"></span>		Â social_spotify_square</span><span class="box1"><span class="social_delicious_square" aria-hidden="true"></span>		Â social_delicious_square</span></div>
						</div>
					</div>
				</div>
			</section>

			<section class="module divider-top">
				<div class="container">
					<div class="row">
						<div class="col-md-6 m-auto text-center">
							<p class="subtitle">Discover our story</p>
							<h1 class="display-1">Linecons</h1>
							<p class="lead">See how your users experience your website in realtime or view <br/> trends to see any changes in performance over time.</p>
							<div class="divider-border"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="space" data-mY="40px"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="iconset-box"><span class="box1"><span class="li_heart" aria-hidden="true"></span>		Â li_heart</span><span class="box1"><span class="li_cloud" aria-hidden="true"></span>		Â li_cloud</span><span class="box1"><span class="li_star" aria-hidden="true"></span>		Â li_star</span><span class="box1"><span class="li_tv" aria-hidden="true"></span>		Â li_tv</span><span class="box1"><span class="li_sound" aria-hidden="true"></span>		Â li_sound</span><span class="box1"><span class="li_video" aria-hidden="true"></span>		Â li_video</span><span class="box1"><span class="li_trash" aria-hidden="true"></span>		Â li_trash</span><span class="box1"><span class="li_user" aria-hidden="true"></span>		Â li_user</span><span class="box1"><span class="li_key" aria-hidden="true"></span>		Â li_key</span><span class="box1"><span class="li_search" aria-hidden="true"></span>		Â li_search</span><span class="box1"><span class="li_settings" aria-hidden="true"></span>		Â li_settings</span><span class="box1"><span class="li_camera" aria-hidden="true"></span>		Â li_camera</span><span class="box1"><span class="li_tag" aria-hidden="true"></span>		Â li_tag</span><span class="box1"><span class="li_lock" aria-hidden="true"></span>		Â li_lock</span><span class="box1"><span class="li_bulb" aria-hidden="true"></span>		Â li_bulb</span><span class="box1"><span class="li_pen" aria-hidden="true"></span>		Â li_pen</span><span class="box1"><span class="li_diamond" aria-hidden="true"></span>		Â li_diamond</span><span class="box1"><span class="li_display" aria-hidden="true"></span>		Â li_display</span><span class="box1"><span class="li_location" aria-hidden="true"></span>		Â li_location</span><span class="box1"><span class="li_eye" aria-hidden="true"></span>		Â li_eye</span><span class="box1"><span class="li_bubble" aria-hidden="true"></span>		Â li_bubble</span><span class="box1"><span class="li_stack" aria-hidden="true"></span>		Â li_stack</span><span class="box1"><span class="li_cup" aria-hidden="true"></span>		Â li_cup</span><span class="box1"><span class="li_phone" aria-hidden="true"></span>		Â li_phone</span><span class="box1"><span class="li_news" aria-hidden="true"></span>		Â li_news</span><span class="box1"><span class="li_mail" aria-hidden="true"></span>		Â li_mail</span><span class="box1"><span class="li_like" aria-hidden="true"></span>		Â li_like</span><span class="box1"><span class="li_photo" aria-hidden="true"></span>		Â li_photo</span><span class="box1"><span class="li_note" aria-hidden="true"></span>		Â li_note</span><span class="box1"><span class="li_clock" aria-hidden="true"></span>		Â li_clock</span><span class="box1"><span class="li_paperplane" aria-hidden="true"></span>		Â li_paperplane</span><span class="box1"><span class="li_params" aria-hidden="true"></span>		Â li_params</span><span class="box1"><span class="li_banknote" aria-hidden="true"></span>		Â li_banknote</span><span class="box1"><span class="li_data" aria-hidden="true"></span>		Â li_data</span><span class="box1"><span class="li_music" aria-hidden="true"></span>		Â li_music</span><span class="box1"><span class="li_megaphone" aria-hidden="true"></span>		Â li_megaphone</span><span class="box1"><span class="li_study" aria-hidden="true"></span>		Â li_study</span><span class="box1"><span class="li_lab" aria-hidden="true"></span>		Â li_lab</span><span class="box1"><span class="li_food" aria-hidden="true"></span>		Â li_food</span><span class="box1"><span class="li_t-shirt" aria-hidden="true"></span>		Â li_t-shirt</span><span class="box1"><span class="li_fire" aria-hidden="true"></span>		Â li_fire</span><span class="box1"><span class="li_clip" aria-hidden="true"></span>		Â li_clip</span><span class="box1"><span class="li_shop" aria-hidden="true"></span>		Â li_shop</span><span class="box1"><span class="li_calendar" aria-hidden="true"></span>		Â li_calendar</span><span class="box1"><span class="li_vallet" aria-hidden="true"></span>		Â li_vallet</span><span class="box1"><span class="li_vynil" aria-hidden="true"></span>		Â li_vynil</span><span class="box1"><span class="li_truck" aria-hidden="true"></span>		Â li_truck</span><span class="box1"><span class="li_world" aria-hidden="true"></span>		Â li_world</span></div>
						</div>
					</div>
				</div>
			</section>

			<section class="module divider-top">
				<div class="container">
					<div class="row">
						<div class="col-md-6 m-auto text-center">
							<p class="subtitle">Discover our story</p>
							<h1 class="display-1">Et-line Icons</h1>
							<p class="lead">See how your users experience your website in realtime or view <br/> trends to see any changes in performance over time.</p>
							<div class="divider-border"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="space" data-mY="40px"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="iconset-box"><span class="box1"><span class="icon-mobile" aria-hidden="true"></span>		Â icon-mobile</span><span class="box1"><span class="icon-laptop" aria-hidden="true"></span>		Â icon-laptop</span><span class="box1"><span class="icon-desktop" aria-hidden="true"></span>		Â icon-desktop</span><span class="box1"><span class="icon-tablet" aria-hidden="true"></span>		Â icon-tablet</span><span class="box1"><span class="icon-phone" aria-hidden="true"></span>		Â icon-phone</span><span class="box1"><span class="icon-document" aria-hidden="true"></span>		Â icon-document</span><span class="box1"><span class="icon-documents" aria-hidden="true"></span>		Â icon-documents</span><span class="box1"><span class="icon-search" aria-hidden="true"></span>		Â icon-search</span><span class="box1"><span class="icon-clipboard" aria-hidden="true"></span>		Â icon-clipboard</span><span class="box1"><span class="icon-newspaper" aria-hidden="true"></span>		Â icon-newspaper</span><span class="box1"><span class="icon-notebook" aria-hidden="true"></span>		Â icon-notebook</span><span class="box1"><span class="icon-book-open" aria-hidden="true"></span>		Â icon-book-open</span><span class="box1"><span class="icon-browser" aria-hidden="true"></span>		Â icon-browser</span><span class="box1"><span class="icon-calendar" aria-hidden="true"></span>		Â icon-calendar</span><span class="box1"><span class="icon-presentation" aria-hidden="true"></span>		Â icon-presentation</span><span class="box1"><span class="icon-picture" aria-hidden="true"></span>		Â icon-picture</span><span class="box1"><span class="icon-pictures" aria-hidden="true"></span>		Â icon-pictures</span><span class="box1"><span class="icon-video" aria-hidden="true"></span>		Â icon-video</span><span class="box1"><span class="icon-camera" aria-hidden="true"></span>		Â icon-camera</span><span class="box1"><span class="icon-printer" aria-hidden="true"></span>		Â icon-printer</span><span class="box1"><span class="icon-toolbox" aria-hidden="true"></span>		Â icon-toolbox</span><span class="box1"><span class="icon-briefcase" aria-hidden="true"></span>		Â icon-briefcase</span><span class="box1"><span class="icon-wallet" aria-hidden="true"></span>		Â icon-wallet</span><span class="box1"><span class="icon-gift" aria-hidden="true"></span>		Â icon-gift</span><span class="box1"><span class="icon-bargraph" aria-hidden="true"></span>		Â icon-bargraph</span><span class="box1"><span class="icon-grid" aria-hidden="true"></span>		Â icon-grid</span><span class="box1"><span class="icon-expand" aria-hidden="true"></span>		Â icon-expand</span><span class="box1"><span class="icon-focus" aria-hidden="true"></span>		Â icon-focus</span><span class="box1"><span class="icon-edit" aria-hidden="true"></span>		Â icon-edit</span><span class="box1"><span class="icon-adjustments" aria-hidden="true"></span>		Â icon-adjustments</span><span class="box1"><span class="icon-ribbon" aria-hidden="true"></span>		Â icon-ribbon</span><span class="box1"><span class="icon-hourglass" aria-hidden="true"></span>		Â icon-hourglass</span><span class="box1"><span class="icon-lock" aria-hidden="true"></span>		Â icon-lock</span><span class="box1"><span class="icon-megaphone" aria-hidden="true"></span>		Â icon-megaphone</span><span class="box1"><span class="icon-shield" aria-hidden="true"></span>		Â icon-shield</span><span class="box1"><span class="icon-trophy" aria-hidden="true"></span>		Â icon-trophy</span><span class="box1"><span class="icon-flag" aria-hidden="true"></span>		Â icon-flag</span><span class="box1"><span class="icon-map" aria-hidden="true"></span>		Â icon-map</span><span class="box1"><span class="icon-puzzle" aria-hidden="true"></span>		Â icon-puzzle</span><span class="box1"><span class="icon-basket" aria-hidden="true"></span>		Â icon-basket</span><span class="box1"><span class="icon-envelope" aria-hidden="true"></span>		Â icon-envelope</span><span class="box1"><span class="icon-streetsign" aria-hidden="true"></span>		Â icon-streetsign</span><span class="box1"><span class="icon-telescope" aria-hidden="true"></span>		Â icon-telescope</span><span class="box1"><span class="icon-gears" aria-hidden="true"></span>		Â icon-gears</span><span class="box1"><span class="icon-key" aria-hidden="true"></span>		Â icon-key</span><span class="box1"><span class="icon-paperclip" aria-hidden="true"></span>		Â icon-paperclip</span><span class="box1"><span class="icon-attachment" aria-hidden="true"></span>		Â icon-attachment</span><span class="box1"><span class="icon-pricetags" aria-hidden="true"></span>		Â icon-pricetags</span><span class="box1"><span class="icon-lightbulb" aria-hidden="true"></span>		Â icon-lightbulb</span><span class="box1"><span class="icon-layers" aria-hidden="true"></span>		Â icon-layers</span><span class="box1"><span class="icon-pencil" aria-hidden="true"></span>		Â icon-pencil</span><span class="box1"><span class="icon-tools" aria-hidden="true"></span>		Â icon-tools</span><span class="box1"><span class="icon-tools-2" aria-hidden="true"></span>		Â icon-tools-2</span><span class="box1"><span class="icon-scissors" aria-hidden="true"></span>		Â icon-scissors</span><span class="box1"><span class="icon-paintbrush" aria-hidden="true"></span>		Â icon-paintbrush</span><span class="box1"><span class="icon-magnifying-glass" aria-hidden="true"></span>		Â icon-magnifying-glass</span><span class="box1"><span class="icon-circle-compass" aria-hidden="true"></span>		Â icon-circle-compass</span><span class="box1"><span class="icon-linegraph" aria-hidden="true"></span>		Â icon-linegraph</span><span class="box1"><span class="icon-mic" aria-hidden="true"></span>		Â icon-mic</span><span class="box1"><span class="icon-strategy" aria-hidden="true"></span>		Â icon-strategy</span><span class="box1"><span class="icon-beaker" aria-hidden="true"></span>		Â icon-beaker</span><span class="box1"><span class="icon-caution" aria-hidden="true"></span>		Â icon-caution</span><span class="box1"><span class="icon-recycle" aria-hidden="true"></span>		Â icon-recycle</span><span class="box1"><span class="icon-anchor" aria-hidden="true"></span>		Â icon-anchor</span><span class="box1"><span class="icon-profile-male" aria-hidden="true"></span>		Â icon-profile-male</span><span class="box1"><span class="icon-profile-female" aria-hidden="true"></span>		Â icon-profile-female</span><span class="box1"><span class="icon-bike" aria-hidden="true"></span>		Â icon-bike</span><span class="box1"><span class="icon-wine" aria-hidden="true"></span>		Â icon-wine</span><span class="box1"><span class="icon-hotairballoon" aria-hidden="true"></span>		Â icon-hotairballoon</span><span class="box1"><span class="icon-globe" aria-hidden="true"></span>		Â icon-globe</span><span class="box1"><span class="icon-genius" aria-hidden="true"></span>		Â icon-genius</span><span class="box1"><span class="icon-map-pin" aria-hidden="true"></span>		Â icon-map-pin</span><span class="box1"><span class="icon-dial" aria-hidden="true"></span>		Â icon-dial</span><span class="box1"><span class="icon-chat" aria-hidden="true"></span>		Â icon-chat</span><span class="box1"><span class="icon-heart" aria-hidden="true"></span>		Â icon-heart</span><span class="box1"><span class="icon-cloud" aria-hidden="true"></span>		Â icon-cloud</span><span class="box1"><span class="icon-upload" aria-hidden="true"></span>		Â icon-upload</span><span class="box1"><span class="icon-download" aria-hidden="true"></span>		Â icon-download</span><span class="box1"><span class="icon-target" aria-hidden="true"></span>		Â icon-target</span><span class="box1"><span class="icon-hazardous" aria-hidden="true"></span>		Â icon-hazardous</span><span class="box1"><span class="icon-piechart" aria-hidden="true"></span>		Â icon-piechart</span><span class="box1"><span class="icon-speedometer" aria-hidden="true"></span>		Â icon-speedometer</span><span class="box1"><span class="icon-global" aria-hidden="true"></span>		Â icon-global</span><span class="box1"><span class="icon-compass" aria-hidden="true"></span>		Â icon-compass</span><span class="box1"><span class="icon-lifesaver" aria-hidden="true"></span>		Â icon-lifesaver</span><span class="box1"><span class="icon-clock" aria-hidden="true"></span>		Â icon-clock</span><span class="box1"><span class="icon-aperture" aria-hidden="true"></span>		Â icon-aperture</span><span class="box1"><span class="icon-quote" aria-hidden="true"></span>		Â icon-quote</span><span class="box1"><span class="icon-scope" aria-hidden="true"></span>		Â icon-scope</span><span class="box1"><span class="icon-alarmclock" aria-hidden="true"></span>		Â icon-alarmclock</span><span class="box1"><span class="icon-refresh" aria-hidden="true"></span>		Â icon-refresh</span><span class="box1"><span class="icon-happy" aria-hidden="true"></span>		Â icon-happy</span><span class="box1"><span class="icon-sad" aria-hidden="true"></span>		Â icon-sad</span><span class="box1"><span class="icon-facebook" aria-hidden="true"></span>		Â icon-facebook</span><span class="box1"><span class="icon-twitter" aria-hidden="true"></span>		Â icon-twitter</span><span class="box1"><span class="icon-googleplus" aria-hidden="true"></span>		Â icon-googleplus</span><span class="box1"><span class="icon-rss" aria-hidden="true"></span>		Â icon-rss</span><span class="box1"><span class="icon-tumblr" aria-hidden="true"></span>		Â icon-tumblr</span><span class="box1"><span class="icon-linkedin" aria-hidden="true"></span>		Â icon-linkedin</span><span class="box1"><span class="icon-dribbble" aria-hidden="true"></span>		Â icon-dribbble</span></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="space" data-mY="100px"></div>
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