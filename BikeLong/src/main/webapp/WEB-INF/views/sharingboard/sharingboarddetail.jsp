<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Tavern - Responsive Restaurant Template(Bootstrap 4)</title>


<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript"
	src="/bikelong/resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>

</head>
<script type="text/javascript">
	$(function() {
		//전역변수
		var obj = [];
		//스마트에디터 프레임생성
		nhn.husky.EZCreator.createInIFrame({
			oAppRef : obj,
			elPlaceHolder : "content",
			sSkinURI : "/bikelong/resources/editor/SmartEditor2Skin.html",
			htParams : {
				// 툴바 사용 여부
				bUseToolbar : true,
				// 입력창 크기 조절바 사용 여부
				bUseVerticalResizer : true,
				// 모드 탭(Editor | HTML | TEXT) 사용 여부
				bUseModeChanger : true,
			}
		});

	});
</script>

<!-- Favicons-->
<link rel="shortcut icon"
	href="/bikelong/resources/assets/images/favicon.png">
<link rel="apple-touch-icon"
	href="/bikelong/resources/assets/images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="/bikelong/resources/assets/images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="/bikelong/resources/assets/images/apple-touch-icon-114x114.png">
<!-- Web Fonts-->
<link
	href="https://fonts.googleapis.com/css?family=PT+Serif%7cSignika:300,400,600,700"
	rel="stylesheet">
<!-- Bootstrap core CSS-->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Plugins and Icon Fonts-->
<link href="/bikelong/resources/assets/css/plugins.min.css"
	rel="stylesheet">
<!-- Template core CSS-->
<link href="/bikelong/resources/assets/css/template.css"
	rel="stylesheet">
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

	<!-- ========================================================================================================= -->
	<!-- Wrapper-->
	<div class="wrapper">
		<section class="module">
			<div class="container">
				<div class="row">
					<div class="col-lg-11 m-auto">
						<!-- Post-->
						<article class="post">

							<div class="post-preview">
								<!--  -->
							</div>

							<div class="row">
								<div class="col-md-12">
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">제목 :
												${sharingBoardDetail.title}</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">글쓴이 :
												${sharingBoardDetail.id}</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">작성일 :
												${sharingBoardDetail.date}</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												해당 경로 지역구 : ${sharingBoardDetail.locationNo} <br />
												<br />
												<!--  <select class="select form-control" name="locationNo" >
														<option value="1">강남구</option>
														<option value="2">강동구</option>
														<option value="3">강북구</option>
														<option value="4">강서구</option>
														<option value="5">관악구</option>
														<option value="6">광진구</option>
														<option value="7">구로구</option>
														<option value="8">금천구</option>
														<option value="9">노원구</option>
														<option value="10">도봉구</option>
														<option value="11">동대문구</option>
														<option value="12">동작구</option>
														<option value="13">마포구</option>
														<option value="14">서대문구</option>
														<option value="15">서초구</option>
														<option value="16">성동구</option>
														<option value="17">성북구</option>
														<option value="18">송파구</option>
														<option value="19">양천구</option>
														<option value="20">영등포구</option>
														<option value="21">용산구</option>
														<option value="22">은평구</option>
														<option value="23">종로구</option>
														<option value="24">중구</option>
														<option value="25">중랑구</option>
													</select>	-->
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												${sharingBoardDetail.content} <br />
												<br />
											</div>
										</div>
										<div class="col-md-12">
											<div class="text-center">
												<a class="btn btn-black" href="/bikelong/route/sharingboardlist.action">목록보기</a>
												<a class="btn btn-black" href="/bikelong/route/sharingboardupdate.action">수정</a>
												<a class="btn btn-black" href="/bikelong/route/sharingboarddelete.action">삭제</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</article>
						<!-- Post end-->

						<!-- Comments area-->
						<div class="comments-area">
							<h5 class="comments-title">Comments</h5>
							<div class="comment-list">
								<!-- Comment-->
								<div class="comment">
									<div class="comment-author">
										<img class="avatar"
											src="/bikelong/resources/assets/images/avatar/1.jpg" alt="">
									</div>
									<div class="comment-body">
										<div class="comment-meta">
											<div class="comment-meta-author">Jason Ford</div>
											<div class="comment-meta-date">May 5, 2015 at 4:51 am</div>
										</div>
										<div class="comment-content">
											<p>fanny pack nostrud.</p>
										</div>
									</div>
								</div>
							</div>
							<div class="comment-respond">
								<h5 class="comment-reply-title">Leave a Reply</h5>
								<p class="comment-notes">Your email address will not be
									published. Required fields are marked</p>
								<form class="comment-form row">
									<div class="form-group col-md-4">
										<input class="form-control" type="text" placeholder="Name">
									</div>
									<div class="form-group col-md-12">
										<textarea class="form-control" rows="8" placeholder="Comment"></textarea>
									</div>
									<div class="form-submit col-md-12">
										<button class="btn btn-black" type="submit">Post
											Comment</button>
									</div>
								</form>
							</div>
						</div>
						<!-- Comments area end-->
					</div>
				</div>
			</div>
		</section>

		<svg class="footer-circle" xmlns="http://www.w3.org/2000/svg"
			version="1.1" width="100%" height="100" viewbox="0 0 100 100"
			preserveaspectratio="none">
				<path d="M0 100 C40 0 60 0 100 100 Z"></path>
			</svg>
		<!-- Footer-->
		<jsp:include page="/WEB-INF/views/include/footer.jsp" />
		<!-- Footer end-->
	</div>
	<!-- Wrapper end-->

	<!-- Off canvas-->
	<div class="off-canvas-sidebar"
		data-background="/bikelong/resources/assets/images/sidebar.jpg">
		<div class="off-canvas-sidebar-wrapper">
			<div class="off-canvas-header">
				<a class="close-offcanvas" href="#"><span
					class="arrows arrows-arrows-remove"></span></a>
			</div>
			<div class="off-canvas-content">
				<!-- Text widget-->
				<aside class="widget widget_text">
					<div class="textwidget">
						<p>
							<img src="/bikelong/resources/assets/images/logo-light.png"
								width="74px" alt="">
						</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor.</p>
						<ul class="icon-list">
							<li><i class="ti-email"></i> info@themebusiness.com</li>
							<li><i class="ti-headphone-alt"></i> 1-444-123-4559</li>
							<li><i class="ti-location-pin"></i> Raymond Boulevard 224,
								New York</li>
						</ul>
					</div>
				</aside>
				<!-- Recent portfolio widget-->
				<aside class="widget widget_recent_works">
					<div class="widget-title">
						<h5>Instagram</h5>
					</div>
					<ul>
						<li><a href="#"><img
								src="/bikelong/resources/assets/images/widgets/1.jpg" alt=""></a></li>
						<li><a href="#"><img
								src="/bikelong/resources/assets/images/widgets/2.jpg" alt=""></a></li>
						<li><a href="#"><img
								src="/bikelong/resources/assets/images/widgets/3.jpg" alt=""></a></li>
						<li><a href="#"><img
								src="/bikelong/resources/assets/images/widgets/4.jpg" alt=""></a></li>
						<li><a href="#"><img
								src="/bikelong/resources/assets/images/widgets/5.jpg" alt=""></a></li>
						<li><a href="#"><img
								src="/bikelong/resources/assets/images/widgets/6.jpg" alt=""></a></li>
					</ul>
				</aside>

				<!-- Twitter widget-->
				<aside class="widget twitter-feed-widget">
					<div class="widget-title">
						<h5>Twitter Feed</h5>
					</div>
					<div class="twitter-feed" data-twitter="345170787868762112"
						data-number="2"></div>
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



	<!-- Reserve Popup end-->

	<!-- To top button-->
	<a class="scroll-top" href="#top"><span class="fa fa-angle-up"></span></a>

	<!-- Scripts-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
	<script
		src="http://maps.googleapis.com/maps/api/js?key=AIzaSyA0rANX07hh6ASNKdBr4mZH0KZSqbHYc3Q"></script>
	<script src="/bikelong/resources/assets/js/plugins.min.js"></script>
	<script src="/bikelong/resources/assets/js/custom.min.js"></script>
</body>
</html>