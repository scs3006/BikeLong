<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>자전거 산책로 공유 목록</title>


<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript"
	src="/bikelong/resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>

</head>


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

<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">


</script>
</head>

<body>
	<!-- Preloader-->
	<div class="page-loader">
		<div class="loader"></div>
	</div>
	<!-- Preloader end-->
	<!-- Header-->
	<jsp:include page="/WEB-INF/views/include/header.jsp" /><br />
	<br />
	<br />
	<!-- Header end-->
	<!-- Page Header-->
	<div>
		<section class="module-page-title">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-md-6">
						<h1 class="page-title-heading">자전거 산책로</h1>
					</div>
					<div class="col-md-6">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="/bikelong/index.action">Home</a></li>
							<li class="breadcrumb-item active">Trail Board</li>
						</ol>
					</div>
				</div>
			</div>
		</section>
		<!-- Wrapper-->
		<section class="module" style="padding-top: 50px;">
			<div class="container">
				<div class="row">
					<div class="col-lg-11 m-auto">
						<!-- Post-->
						<article class="post">
							<div class="row">
								<c:forEach var="list" items="${ trailBoard }">
									<div class="col-md-4 post-item">
										<div class="post-preview">
											<img src="/bikelong/resources/photoupload/${list.imageName}"
												alt="">
										</div>
										<div class="post-wrapper">
											<div class="post-header" style="height: 15%">
												<h2 class="post-title display-1">
													<a
														href="/bikelong/trailpathboard/detail.action?boardNo=${list.boardNo}">${list.title}</a>
												</h2>
												<h5>
													작성자 : ${list.id}<br />작성일 : ${list.date}<br />지역 :
													${list.locationName}
												</h5>
											</div>
										</div>
									</div>
								</c:forEach>
								<br> <br>
								<div class="col-md-12">
									<div class="text-center">${pager}</div>
								</div>
								<br> <br>
								<div class="col-md-12">
									<div class="text-center">
										<c:if test="${loginuser.id eq 'manager' && loginuser ne null}">
											<a class="btn btn-black"
												href="/bikelong/trailpathboard/write.action">글쓰기</a>
										</c:if>
										<a class="btn btn-black" href="/bikelong/index.action">글쓰기</a>
									</div>
								</div>
							</div>
						</article>
						<!-- Post end-->
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