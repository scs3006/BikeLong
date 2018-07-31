<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<title>BikeLong</title>
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
	
		<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
		<script type="text/javascript">
			$(function(){
				
				$('.noticeList .notice').hover(function(){$(this).css('cursor', 'pointer')},function(){$(this).css('cursor')});
				
				$('.noticeList').on('click','.notice',function(){
					var boardNo = $(this).attr('data-boardNo');
					location.href="noticeboard/detail.action?boardNo=" + boardNo;
				});
				
				$('.gallery-item').on('click',$('.gallery-image'),function(event){
					var sharingBoardNo = $(this).attr('data-routeboard');
					location.href='/bikelong/route/sharingboarddetail.action?boardNo='+sharingBoardNo+'&pageno=0';
				});
				
			});
		</script>
		
	</head>
	<body>

		<!-- Preloader-->
		<div class="page-loader">
			<div class="loader"></div>
		</div>
		<!-- Preloader end-->

		<!-- Header-->
		<jsp:include page="/WEB-INF/views/include/header.jsp" />
		<!-- Header end-->

		<!-- Wrapper-->
		<div class="wrapper">

			<!-- Hero-->
			<section class="module-cover parallax fullscreen" id="home" data-background="/bikelong/resources/assets/images/main.jpg" data-overlay="1" data-gradient="1">
				<div class="container">
					<div class="row">
						<div class="col-md-12 m-auto">
							<div class="text-center">
								<h6 class="text-uppercase">City of Nature</h6>
								<h1 class="display-1">Bike Long</h1>
								<p>Bike Long은 누구나, 언제나, 어디서나 쉽고 편리하게 이용할 수 있는 무인대여 시스템입니다. <br/> 도시의 교통체증, 대기오염, 고유가 문제를 해결하고 건강한 사회 및 시민들의 삶의 질을 높이고자 마련되었습니다.</p>
								<div class="space" data-mY="40px"></div><a class="btn btn-white" href="#">Service Now</a>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- Hero end-->

			<!-- Our Story-->
			<section class="module" id="story">
				<div class="container">
					<div class="row">
						<div class="col-md-6 m-auto text-center">
							<p class="subtitle">City of Nature</p>
							<h1 class="display-1">Bike Long</h1>
							<p class="lead">BikeLong에 오신것을 환영합니다.<br/>건강하고 깨끗한 녹색 성장 선도 도시로 만들어가고 있습니다.</p>
							<div class="divider-border"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="space" data-mY="40px"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<p><a class="photo" href="/bikelong/resources/assets/images/main/mainImage1.jpg"><img src="/bikelong/resources/assets/images/main/mainImage1.jpg" alt=""></a></p>
						</div>
						<div class="col-md-6">
							<p><a class="photo" href="/bikelong/resources/assets/images/main/mainImage3.jpg"><img src="/bikelong/resources/assets/images/main/mainImage2.jpg" alt=""></a></p>
						</div>
						<div class="col-md-6">
							<p><a class="photo" href="/bikelong/resources/assets/images/main/mainImage3.jpg"><img src="/bikelong/resources/assets/images/main/mainImage3.jpg" alt=""></a></p>
						</div>
						<div class="col-md-6">
							<p><a class="photo" href="/bikelong/resources/assets/images/main/mainImage4.jpg"><img src="/bikelong/resources/assets/images/main/mainImage4.jpg" alt=""></a></p>
						</div>
					</div>
				</div>
			</section>
			<!-- Our Story End-->

			<!-- Gallery-->
			<section class="module no-gutter p-0" id="gallery">
				<div class="container-fluid" >
					<div class="row">
						<div class="col-xl-4 col-lg-12 bg-gray">
							<div class="gallery-shorcode-desc">
								<div class="vertical-body">
									<div class="vertical">
										<div class="text-center">
											<h1 class="display-1">경로 공유 게시판</h1>
											<p class="lead">BikeLong 서비스를 이용하면서 좋았던 길들을 공유하는 게시판 입니다.<bt/>자신의 경험했던 좋은 길들을 여러사람과 공유해 보세요.</p>
											<div class="divider-border"></div>
											<div class="space" data-mY="60px"></div><a class="btn btn-black" href="/bikelong/route/sharingboardlist.action">게시글 더보기</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-8 col-lg-12" >
							<div class="gallery gallery-shorcode">
								<c:forEach var="lists" items="${ sharingBoardList }" begin="0" end="6">
									<div class="gallery-item" style="width: 418.88px; height: 418.88px; text-align: center;"  data-routeboard="${lists.boardNo}">
										<div class="gallery-image" data-background="/bikelong/resources/photoupload/${lists.imageName}" style="position: relative; width: 418px; height: 418px"></div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- Gallery end-->

			<!-- Popular Dishes-->
			<section class="module" id="popular">
				<div class="container">
					<div class="row">
						<div class="col-md-6 m-auto text-center">
							<p class="subtitle">City of Nature</p>
							<h1 class="display-1">Bike Long Notice</h1>
							<p class="lead">BikeLong 공지사항 입니다. 더 나은 서비스로 여러분을 찾아가겠습니다.</p>
							<div class="divider-border"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="space" data-mY="60px"></div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="menu-simple noticeList">
								<c:forEach var="notice" items="${ noticeList }" begin="0" end="4">
									<div class="menu-simple-item notice" data-boardNo="${ notice.boardNo }">
										<div class="menu-simple-item-img"><img src="/bikelong/resources/assets/images/widgets/7.jpg" alt=""></div>						
										<div class="menu-simple-item-inner">
											<h6><span>${ notice.title }</span><span class="pull-right">${ notice.boardNo }</span></h6>
											<p>${ notice.id }</p>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="col-md-6">
							<div class="menu-simple noticeList">
								<c:forEach var="notice" items="${ noticeList }" begin="5" end="9">	
									<div class="menu-simple-item notice" data-boardNo="${ notice.boardNo }">
										<div class="menu-simple-item-img"><img src="/bikelong/resources/assets/images/widgets/7.jpg" alt=""></div>						
										<div class="menu-simple-item-inner">
											<h6><span>${ notice.title }</span><span class="pull-right">${ notice.boardNo }</span></h6>
											<p>${ notice.id }</p>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="space" data-mY="60px"></div>
							<p class="text-center"><a class="btn btn-black" href="noticeboard/list.action">Other Notice</a></p>
						</div>
					</div>
				</div>
			</section>
			<!-- Popular Dishes End-->

			<svg class="footer-circle" xmlns="http://www.w3.org/2000/svg" version="1.1" width="100%" height="100" viewbox="0 0 100 100" preserveaspectratio="none">
				<path d="M0 100 C40 0 60 0 100 100 Z"></path>
			</svg>
			
			<!-- Footer-->
			<jsp:include page="/WEB-INF/views/include/footer.jsp" />
			<!-- Footer end-->
			
		</div>
		<!-- Wrapper end-->

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