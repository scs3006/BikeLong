<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html lang="ko" dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
	<header class="header header-transparent">

			<div class="navigation navigation-center">
				<div class="container-fluid">
					<!-- Brand-->
					<div class="inner-header"><a class="inner-brand" href="/bikelong/index.action"><img class="brand-dark" src="/bikelong/resources/assets/images/logo.png" width="74px" alt=""><img class="brand-light" src="/bikelong/resources/assets/images/logo-light.png" width="74px" alt=""></a></div>
					<!-- Navigation-->
					<div class="inner-navigation collapse">
						<div class="inner-nav onepage-nav">
							<ul>
								<li><a href="index.jsp#home"><span class="menu-item-span">서비스 소개</span></a></li>
								<li><a href="index.jsp#story"><span class="menu-item-span">산책로 추천</span></a></li>
								<li><a href="index.jsp#special"><span class="menu-item-span">경로 공유</span></a></li>
								<li><a href="rentalShop.action"><span class="menu-item-span">대여소 위치</span></a></li>
								<li><a href="index.jsp#gallery"><span class="menu-item-span">공지사항</span></a></li>
								<li><a href="index.jsp#services"><span class="menu-item-span">고객의 의견</span></a></li>
								<li><a href="index.jsp#news"><span class="menu-item-span">갤러리</span></a></li>
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
							<c:if test="${ empty loginuser }">
								<li><a href="/bikelong/account/signin.action"><span class="menu-item-span"><i class="ti-power-off">&nbsp;&nbsp;</i>Sign In</span></a></li>
								<li><a href="/bikelong/account/signup.action"><span class="menu-item-span"><i class="ti-notepad">&nbsp;&nbsp;</i>Sign Up</span></a></li>
							</c:if>
							<c:if test="${ not empty loginuser }">
								<li><a href="/bikelong/account/mypage.action"><span class="menu-item-span"><i class="ti-user">&nbsp;&nbsp;</i>${id} 님</span></a></li>
								<li><a href="/bikelong/account/logout.action"><span class="menu-item-span"><i class="icon_trash_alt">&nbsp;&nbsp;</i>Log Out</span></a></li>
							</c:if>
							<!-- <li><a class="popup-book-a-table" href="#test-form"><span class="menu-item-span">Book now</span></a></li> -->
						</ul>
					</div>
					<!-- Mobile menu-->
					<div class="nav-toggle"><a href="#" data-toggle="collapse" data-target=".inner-navigation"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a></div>
				</div>
			</div>
		</header>
</body>
</html>