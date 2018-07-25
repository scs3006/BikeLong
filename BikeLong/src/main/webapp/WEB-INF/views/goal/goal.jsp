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
			$(function(){
				$('#goaltoggle').on('click',function(event){
					event.preventDefault();
					$('#myModal').modal();
				});
				
			});
		</script>

<style type="text/css">
.searchFilter{
	margin-right : 500px;
	margin-left : 500px;
}
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
		          <h4 class="modal-title">닫기</h4>
		        </div>
		        <div class="modal-body">
		          <p>Some text in the modal.</p>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
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
							<h1 class="page-title-heading">Goal</h1>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="/bikelong/index.action">Home</a></li>
								<li class="breadcrumb-item active">Elements</li>
							</ol>
						</div>
					</div>
				</div>
			</section>
			<!-- Page Header end-->
			
			<div class="container" style="padding-top:50px;">
					<div class="row">
						<div class="col-md-6 m-auto text-center">
							<p class="subtitle">From the blog</p>
							<h1 class="display-1">목표 거리</h1>
							<p class="lead">나에게 맞는 목표를 설정하고 달성해보세요. <br/></p>
							<div class="divider-border"> </div>
						</div>
					</div>
			</div>
		
		<!-- 	<div>
				<div class="searchFilter">
					<select name="area" id="area" class="form-control">
						<option value="">목표 거리 선택</option>
						<option value="5">5km</option>
						<option value="10">10km</option>
						<option value="15">15km</option>
						<option value="20">20km</option>
						<option value="25">25km</option>
						<option value="30">30km</option>
					</select> <br>
				</div>
			</div> -->

			<!-- Pie Chart-->
			<section class="module divider-top">
				<div class="container">
					<div class="row">
						
					<!--@@@@여기----------------------  -->	
						<c:forEach var="goal" items="${ goals }">
						<div class="col-md-3">
							<div class="pie-chart">
								<a id="goaltoggle" data-toggle="modal" data-target="myModal">
								
									<div class="chart" data-percent="${ goal.goalAmount }">
											<span class="chart-text"><span><i class="icon-bike"></i></span></span>
									</div>
								</a>
								<div class="chart-title"><span>${ goal.goalName }</span></div>
								<div class="chart-content">
									<p>${ goal.goalInfo }</p>
								</div>
								<p><a class="btn btn-outline btn-sm btn-black" href="#">시작하기</a></p>
							</div>
							</div>
						</c:forEach>
						
						
						<!------------>
					</div>
				</div>
			</section>
			
				<!-- Goal-list -->
			<!-- <div class="comments-area">
				<div class="comment-body" style="margin-left:400px; margin-right:400px; ">
					<div class="comment-meta">
						<div class="comment-meta-author"><a href="#">Jason Ford</a></div>
						<div class="comment-meta-date"><a href="#">May 5, 2015 at 4:51 am</a></div>
					</div>
					
					<a id="goaltoggle" data-toggle="modal" data-target="myModal">
						Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache fanny pack nostrud.
					</a>
				</div>
			</div>  -->


			<!-- <section class="module">
				<div class="container">
					<div class="row">
						<div class="col-md-3">
							<div class="icon-box">
								<div class="icon-box-icon"><span class="li_pen"></span></div>
								<div class="icon-box-title">
									<h5>Opened 24/7</h5>
								</div>
								<div class="icon-box-content">
									<p>Map where your photos were taken and discover local points of interest. Map where your photos.</p>
								</div>
								<div class="icon-box-link"><a href="#"></a></div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="icon-box">
								<div class="icon-box-icon"><span class="li_phone"></span></div>
								<div class="icon-box-title">
									<h5>Free Parking</h5>
								</div>
								<div class="icon-box-content">
									<p>Map where your photos were taken and discover local points of interest. Map where your photos.</p>
								</div>
								<div class="icon-box-link"><a href="#"></a></div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="icon-box">
								<div class="icon-box-icon"><span class="li_bulb"></span></div>
								<div class="icon-box-title">
									<h5>Central Location</h5>
								</div>
								<div class="icon-box-content">
									<p>Map where your photos were taken and discover local points of interest. Map where your photos.</p>
								</div>
								<div class="icon-box-link"><a href="#"></a></div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="icon-box">
								<div class="icon-box-icon"><span class="li_bulb"></span></div>
								<div class="icon-box-title">
									<h5>High Quality</h5>
								</div>
								<div class="icon-box-content">
									<p>Map where your photos were taken and discover local points of interest. Map where your photos.</p>
								</div>
								<div class="icon-box-link"><a href="#"></a></div>
							</div>
						</div>
					</div>
				</div>
			</section>
 -->
			
			<svg class="footer-circle" xmlns="http://www.w3.org/2000/svg" version="1.1" width="100%" height="100" viewbox="0 0 100 100" preserveaspectratio="none">
				<path d="M0 100 C40 0 60 0 100 100 Z"></path>
			</svg>
			<!-- Footer-->
			<jsp:include page="/WEB-INF/views/include/footer.jsp" />
			
		</div>
		<!-- Wrapper end-->

		
		<!-- Off canvas end-->

		<!-- Reserve Popup-->
		

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