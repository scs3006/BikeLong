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
<style type="text/css">
#a#startGoal1{ }
</style>
<script type="text/javascript">
	$(function(){
		
		if(${flag}){
			$('#topGoal').css('display','inline');
			//$('#originGoal').css('visibility','hidden');
			$('#originGoal').css('display','none');
			
		}else{
			$('#topGoal').css('display','none');
			$('#originGoal').css('display','inline');
		}
		
	if(${status} == 0){	
		$('a#startGoal1').on('click',function(event){
			event.preventDefault();
			location.href = "startGoal.action?goalAmount=5";
			/* $('div#originGoal').css('display',"none"); */
			/* $('div#originGoal').hide(); */
		});
		$('a#startGoal2').on('click',function(event){
			event.preventDefault();
			location.href = "startGoal.action?goalAmount=10";
		
		});
		$('a#startGoal3').on('click',function(event){
			event.preventDefault();
			location.href = "startGoal.action?goalAmount=20";
			
		});
		$('a#startGoal4').on('click',function(event){
			event.preventDefault();
			location.href = "startGoal.action?goalAmount=30";
			
		});
	}else{
		$('a#startGoal1').text('달성완료').removeAttr('href');
		$('a#startGoal2').text('달성완료').removeAttr('href');
		$('a#startGoal3').text('달성완료').removeAttr('href');
		$('a#startGoal4').text('달성완료').removeAttr('href');
	}
		
 	 	  if(${flag} != null){  
 		    switch (${goalAmount}) {
			case 5:
				$('div#changeText p').text('목표 달성 시 50 포인트가 제공됩니다.');
				break;
			case 10:
				$('div#changeText p').text('목표 달성 시 100 포인트가 제공됩니다.');
				break;
			case 20:
				$('div#changeText p').text('목표 달성 시 200 포인트가 제공됩니다.');
				break;
			case 30:
				$('div#changeText p').text('목표 달성 시 300 포인트가 제공됩니다.');
				break;
			}
		  } 
		
		 $('#pointtoggle').on('click',function(event){
			event.preventDefault();
			
			if(${goalPercent} >= 100){
				$('#myModal2').modal();
			}
		});
		 $('#savePoint').on('click',function(event){
			 event.preventDefault();
			 
			 var point; 
			 
			 if(${goalAmount} == 5){
				 point = 50;
			 }else if(${goalAmount} == 10){
				 point = 100;
			 }else if(${goalAmount} == 20){
				 point = 200;
			 }else if(${goalAmount} == 30){
				 point = 300;
			 }
			 location.href="savePoint.action?point="+point;
		 });
		
	});
</script>

<style type="text/css">
/* #hiddenGoal{
	visiblilt : hidden;
} */

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
		
		  
		  <!-- point Modal -->
		   <div class="modal fade" id="myModal2" role="dialog">
		    <div class="modal-dialog">
		    
		      <!-- Modal content-->
		      <div class="modal-content">
		        <div class="modal-header">
		          <!-- <button type="button" class="close" data-dismiss="modal">×</button> -->
		         <!--  <h4 class="modal-title">닫기</h4> -->
		        </div>
		        <div class="modal-body">
		          <p>포인트를 적립하시겠습니까?</p>
		        </div>
		        <div class="modal-footer">
		          <button type="button" id="savePoint" class="btn btn-default" data-dismiss="modal">확인</button>
		        </div>
		      </div>
		      
		    </div>
		  </div>
		

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
								<li class="breadcrumb-item active">Goal</li>
							</ol>
						</div>
					</div>
				</div>
			</section>
			<!-- Page Header end-->
			
			<div class="container" style="padding-top:50px;">
					<div class="row">
						<div class="col-md-6 m-auto text-center">
							<p class="subtitle">To challenge goal</p>
							<h1 class="display-1">목표 거리</h1>
							<p class="lead">나에게 맞는 목표를 설정하고 달성해보세요. <br/></p>
							<div class="divider-border"> </div>
						</div>
					</div>
			</div>
		
			<!-- Pie Chart-->
				<div id="topGoal" class="col-md-12">	
					<div class="pie-chart">
							<a id="pointtoggle" data-toggle="modal" data-target="myModal">
							
								<div class="chart" data-percent="${goal.percent}">
										<span class="chart-text"><span><i class="icon-bike"></i></span></span>
								</div>
							</a>
							
							<div class="chart-title"><span>${goal.goalAmount}Km</span></div>
							<div id="changeText" class="chart-content">
								<p>목표 달성 시 50 포인트가 제공됩니다.</p>
							</div>
							<!-- <p><a class="btn btn-outline btn-sm btn-black" href="#">시작하기</a></p> -->
							<p><a class="btn btn-outline btn-sm btn-black" href="statusGoal.action?id=${loginuser.id}">달성량보기</a></p>
						</div>
				</div>
		
			 <section class="module divider-top"> 
				<div class="container" id="originGoal">
					<div class="row">
					
					<div class="col-md-3">	
						<div class="pie-chart">
								<a id="pointtoggle" data-toggle="modal" data-target="myModal">
								
									<div class="chart" data-percent="40">
											<span class="chart-text"><span><i class="icon-bike"></i></span></span>
									</div>
								</a>
								<div class="chart-title"><span>5Km</span></div>
								<div class="chart-content">
									<p>목표 달성 시 50 포인트가 제공됩니다.</p>
								</div>
								<!-- <p><a class="btn btn-outline btn-sm btn-black" href="#">시작하기</a></p> -->
								<p><a id="startGoal1" class="btn btn-outline btn-sm btn-black">시작하기</a></p>
							</div>
						</div>
						
						<div class="col-md-3">	
						<div class="pie-chart">
								<a id="pointtoggle" data-toggle="modal" data-target="myModal">
								
									<div class="chart" data-percent="40">
											<span class="chart-text"><span><i class="icon-bike"></i></span></span>
									</div>
								</a>
								<div class="chart-title"><span>10Km</span></div>
								<div class="chart-content">
									<p>목표 달성 시 100 포인트가 제공됩니다.</p>
								</div>
								<!-- <p><a class="btn btn-outline btn-sm btn-black" href="#">시작하기</a></p> -->
								<p><a id="startGoal2" class="btn btn-outline btn-sm btn-black">시작하기</a></p>
							</div>
						</div>
						
						<div class="col-md-3">	
						<div class="pie-chart">
								<a id="pointtoggle" data-toggle="modal" data-target="myModal">
								
									<div class="chart" data-percent="40">
											<span class="chart-text"><span><i class="icon-bike"></i></span></span>
									</div>
								</a>
								<div class="chart-title"><span>20Km</span></div>
								<div class="chart-content">
									<p>목표 달성 시 200 포인트가 제공됩니다.</p>
								</div>
								<!-- <p><a class="btn btn-outline btn-sm btn-black" href="#">시작하기</a></p> -->
								<p><a id="startGoal3" class="btn btn-outline btn-sm btn-black">시작하기</a></p>
							</div>
						</div>
						
						<div class="col-md-3">	
						<div class="pie-chart">
								<a id="pointtoggle" data-toggle="modal" data-target="myModal">
								
									<div class="chart" data-percent="40">
											<span class="chart-text"><span><i class="icon-bike"></i></span></span>
									</div>
								</a>
								<div class="chart-title"><span>30Km</span></div>
								<div class="chart-content">
									<p>목표 달성 시 300 포인트가 제공됩니다.</p>
								</div>
								<!-- <p><a class="btn btn-outline btn-sm btn-black" href="#">시작하기</a></p> -->
								<p><a id="startGoal4" class="btn btn-outline btn-sm btn-black">시작하기</a></p>
							</div>
						</div>
						
					</div>
				</div>
		</section> 
		
	<!-------------------------  -->
			
				
			
		<!-------------------------  -->	
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