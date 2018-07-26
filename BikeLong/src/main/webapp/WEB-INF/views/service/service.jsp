<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<title>BIKELONG</title>
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
		
		<!-- script -->
		<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
		<script type="text/javascript">
		
		</script>
<style type="text/css">


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
		
		<!-- Goal Modal -->
		 <div class="modal fade" id="myModal" role="dialog">
		    <div class="modal-dialog">
		    
		      <!-- Modal content-->
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">×</button>
		          <h4 class="modal-title">Modal Header</h4>
		        </div>
		        <div class="modal-body">
		          <p>Some text in the modal.</p>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        </div>
		      </div>
		      
		    </div>
		  </div>
		<!-- Goal Modal end -->

		<!-- Wrapper-->
		<div class="wrapper">

			<!-- Page Header-->
			<section class="module-page-title">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-md-6">
							<h1 class="page-title-heading">Service</h1>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="/bikelong/index.action">Home</a></li>
								<li class="breadcrumb-item active">Service Info</li>
							</ol>
						</div>
					</div>
				</div>
			</section>
			<!-- Page Header end-->
			
			<div class="container" style="padding-top:50px;">
					<div class="row">
						<div class="col-md-6 m-auto text-center">
							<p class="subtitle">Welcome to BikeLong</p>
							<h1 class="display-1">서비스 소개</h1>
							<p class="subtitle">BIKELONG은 BIKE + LONG으로 자전거와 함께 사용자의<br>건강한 라이프에 오랫동안 도움이 되고싶다는 의미입니다.<br/></p>
							<p class="subtitle">- by Crong -</p>
							<div class="divider-border"> </div>
						</div>
					</div>
			</div>
			<!-- 
			<div class="container">
				<div class="post-header" style="padding-bottom : 50px;">
					<h1 class="post-title display-1 li_bulb">1. 당신을 위한 산책로 추천  </h1>
					<ul class="post-meta">
						<li>November 18, 2016</li>
						<li>Branding,Design</li>
						<li>3 Comments</li>
					</ul>
				</div>
			</div> -->

			<section class="module" style="padding-top : 20px;">
				<div class="container">
					<div class="row">
						<div class="col-md-4">
							<div class="icon-box">
								<div class="menu-item-span"><h3><i class="ti-direction-alt"></i>&nbsp;산책로 추천</h3></div>
								<div class="icon-box-title">
									<h5>1. 당신을 위한 산책로 추천</h5>
								</div>
								<div class="icon-box-content">
									<p>지역에 따라 자전거로 타기 좋은 주변 산책로</br> 정보가 제공됩니다. 다양한 산책로 정보를 </br>확인하고 댓글로 후기를 남겨주세요.</p>
								</div>
								<div class="icon-box-link"><a href="#"></a></div>
							</div>
						</div>
						
						<div class="col-md-4">
							<div class="icon-box">
								<div class="menu-item-span"><h3><i class="ti-map"></i>&nbsp;경로 공유</h3></div>
								<div class="icon-box-title">
									<h5>2. 사용자간의 경로 공유</h5>
								</div>
								<div class="icon-box-content">
									<p>자전거로 다니기 좋았던 경로를 직접 작성한 후, </br>여러 사용자들과 함께 공유하며 소통할 수 있는 </br>공간을 제공합니다.</p>
								</div>
								<div class="icon-box-link"><a href="#"></a></div>
							</div>
						</div>
						
						<div class="col-md-4">
							<div class="icon-box">
								<div class="menu-item-span"><h3><i class="ti-location-pin"></i>&nbsp;대여소 안내</h3></div>
								<div class="icon-box-title">
									<h5>3. 편리한 대여소 안내</h5>
								</div>
								<div class="icon-box-content">
									<p>원하는 지역을 검색하면 주변 대여소의 위치정보와</br>해당 대여소의 대여가능한 자전거 현황을 한 눈에</br>볼 수 있습니다.</p>
								</div>
								<div class="icon-box-link"><a href="#"></a></div>
							</div>
						</div>
						
						<div class="col-md-4">
							<div class="icon-box">
								<div class="menu-item-span"><h3><i class="ti-pulse"></i>&nbsp;내 활동량</h3></div>
								<div class="icon-box-title">
									<h5>4. 나만의 기록</h5>
								</div>
								<div class="icon-box-content">
									<p>마이페이지에서는 사용자의 자전거 이용 내역과 주행 거리에 따른 운동 추이가 기록되어 최근 활동량 상태를 한 눈에 확인할 수 있습니다.</p>
								</div>
								<div class="icon-box-link"><a href="#"></a></div>
							</div>
						</div>
						
						<div class="col-md-4">
							<div class="icon-box">
								<div class="menu-item-span"><h3><i class="ti-target"></i>&nbsp;목표량</h3></div>
								<div class="icon-box-title">
									<h5>5. 나의 도전 목표</h5>
								</div>
								<div class="icon-box-content">
									<p>원하는 목표 주행 거리를 선택한 후 실행하여 더 </br>건강한 내일에 도전하세요. 선택한 목표 달성 시, </br>포인트가 제공됩니다.</p>
								</div>
								<div class="icon-box-link"><a href="#"></a></div>
							</div>
						</div>
						
						<div class="col-md-4">
							<div class="icon-box">
								<div class="menu-item-span"><h3><i class="ti-shine"></i>&nbsp;날씨 정보</h3></div>
								<div class="icon-box-title">
									<h5>6. 지역 날씨 정보</h5>
								</div>
								<div class="icon-box-content">
									<p>지역별로 해당 지역의 온도,습도 및 미세먼지에 대한 정보를 확인할 수 있습니다.</p>
								</div>
								<div class="icon-box-link"><a href="#"></a></div>
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
			
		</div>
		<!-- Wrapper end-->

		<!-- Off canvas-->
		
		<!-- Off canvas end-->

		

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