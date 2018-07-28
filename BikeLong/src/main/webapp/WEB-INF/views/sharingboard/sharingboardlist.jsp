<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Tavern - Responsive Restaurant Template(Bootstrap 4)</title>
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
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#writebtn").on('click',function(event){
        	event.preventDefault();
        	if('${loginuser.id}'){ // null or '' check!
    				location.href='/bikelong/route/sharingboardwrite.action?id=${loginuser.id}';
    		}else{
    			var value = confirm('글쓰기는 로그인이 필요한 서비스입니다. 로그인 할까요?');
    			if(value){
    				location.href='/bikelong/account/signin.action';
    			}
    			return;
    		}
		});
		
		$('article').on('click',$('.post-preview,.post-wrapper'),function(event){
			var boardNo = $(this).attr("data-boardNo");
			location.href = '/bikelong/route/sharingboarddetail.action?boardNo='+boardNo+'&pageno=${pageno}';
		});
		
	});
</script>

<body>

	<!-- Preloader-->
	<div class="page-loader">
		<div class="loader"></div>
	</div>
	<!-- Preloader end-->

	<!-- Header-->
	<jsp:include page="/WEB-INF/views/include/header.jsp"/>
	<br />
	<br />
	<br />
	<!-- Header end-->
	<!-- Page Header-->
	<section class="module-page-title">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-6">
					<h1 class="page-title-heading">경로 공유 게시판</h1>
				</div>
				<div class="col-md-6">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="/bikelong/index.action">Home</a></li>
						<li class="breadcrumb-item active">Route Sharing Board</li>
					</ol>
				</div>
			</div>
		</div>
	</section>
	<!-- Page Header end-->
	<!-- Wrapper-->
	<div class="wrapper">
		<section class="module">
			<div class="container">
					<div class="text-right">
						<a id="writebtn" class="btn btn-black" href="#">글쓰기</a>
					</div>
				<div class="col-md-12">
					<div class="space" data-mY="50px"></div>
				</div>
				<div class="row blog-masonry">
					<c:forEach var="lists" items="${ sharingBoardLists }">
						<div class="col-md-4 post-item">
							<article class="post module-page-title" style="height: 500px;" data-boardNo="${lists.boardNo}">
								<div class="post-preview" >
									<img src="/bikelong/resources/photoupload/${lists.imageName}" style="height: 330px">
								</div>
								<div class="post-wrapper" >
									<div class="post-header" id="userId" data-id="${loginuser.id}" style="text-align: center;">
										<h2 class="post-title display-1">
											<a href="/bikelong/route/sharingboarddetail.action?boardNo=${lists.boardNo}&pageno=${pageno}">${lists.title}</a>
										</h2>
										<h5>작성자 : ${lists.id}<br/>작성일 : ${lists.date}<br/>지역 : ${lists.locationName}</h5>
									</div>	
								</div>
							</article>
						</div>
					</c:forEach>
				</div>
				<div class="col-md-12">
					<div class="text-center">${pager}</div>
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