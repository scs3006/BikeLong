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
					<div class="inner-header"><a class="inner-brand" href="/bikelong/index.action"><img class="brand-dark" src="/bikelong/resources/assets/images/bikelong-logo.png" width="90px" alt=""><img class="brand-light" src="/bikelong/resources/assets/images/bikelong-light.png" width="90px" alt=""></a></div>
					<!-- Navigation-->
					<div class="inner-navigation collapse">
						<div class="inner-nav onepage-nav">
							<ul>
								<li><a href="/bikelong/"><span class="menu-item-span">홈</span></a></li>
								<li><a href="/bikelong/service/service.action"><span class="menu-item-span">서비스 소개</span></a></li>
								<li><a href="/bikelong/noticeboard/list.action"><span class="menu-item-span">공지사항</span></a></li>
								<li><a href="/bikelong/trailpathboard/list.action"><span class="menu-item-span">산책로 추천</span></a></li>
								<li><a href="/bikelong/route/sharingboardlist.action"><span class="menu-item-span">경로 공유</span></a></li>
								<li><a href="/bikelong/rentalShop.action"><span class="menu-item-span">대여소 위치</span></a></li>
								<li><a href="/bikelong/weather/info.action"><span class="menu-item-span">날씨 정보</span></a></li>
								<li><a href="/bikelong/suggestions/list.action"><span class="menu-item-span">건의 사항</span></a></li>
							</ul>
						</div>
					</div>
					<!-- Extra-nav - will be hidden on mobile-->
					<div class="extra-nav">
					<div class="inner-nav onepage-nav">
						<ul>
							<c:if test="${ empty loginuser }">
								<li><a href="/bikelong/account/signin.action"><span class="menu-item-span"><i class="ti-power-off">&nbsp;&nbsp;</i>Sign In</span></a></li>
								<li><a href="/bikelong/account/signup.action"><span class="menu-item-span"><i class="ti-notepad">&nbsp;&nbsp;</i>Sign Up</span></a></li>
							</c:if>
							<c:if test="${ not empty loginuser }">
								<li class="menu-item-has-children"><a href="#"><span class="menu-item-span"><i class="ti-user">&nbsp;&nbsp;</i>${id} 님</span></a>
										<ul class="sub-menu">
											<li><a href="/bikelong/mypage/mypage.action">MyPage</a></li>
											<li><a href="/bikelong/mypage/activity.action">Activity</a></li> 
											<li><a href="/bikelong/goal/goal.action">Goal</a></li>
										</ul>
								</li>
								<li><a href="/bikelong/account/logout.action"><span class="menu-item-span"><i class="icon_trash_alt">&nbsp;&nbsp;</i>Log Out</span></a></li>
							</c:if>
							<!-- <li><a class="popup-book-a-table" href="#test-form"><span class="menu-item-span">Book now</span></a></li> -->
						</ul>
						</div>
					</div>
					<!-- Mobile menu-->
					<div class="nav-toggle"><a href="#" data-toggle="collapse" data-target=".inner-navigation"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a></div>
				</div>
			</div>
		</header>
</body>
</html>