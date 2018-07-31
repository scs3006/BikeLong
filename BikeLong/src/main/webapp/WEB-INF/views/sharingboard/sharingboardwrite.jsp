<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=XkRO5MabQSh96y9c_kCn&submodules=geocoder"></script>

</head>
<script type="text/javascript">
	$(function() {
		//전역변수
		var array = new Array();
		array[0] = new Array();
		array[1] = new Array();

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
		//전송버튼
		$("#savebtn").on('click',function(event) {
					event.preventDefault();
					if ($('input:radio[name=history]').is(':checked')
							&& $('input:radio[name=history]').val() != null) {
						obj.getById["content"]
								.exec("UPDATE_CONTENTS_FIELD", []);
						$("#frm").submit(); //폼 submit
					} else
						alert("경로가 선택되지 않았거나 경로가 존재하지 않습니다.");
				});

		$("#gpsbtn").on('click',function(event) {
					event.preventDefault();
					var startTime = $("input:radio[name=history]:checked")
							.attr('data-startTime');
					var endTime = $("input:radio[name=history]:checked").attr(
							'data-endTime');
					var parameter = {
						"startTime" : startTime,
						"endTime" : endTime
					};
					polyline.setMap(null);
					polyline = new naver.maps.Polyline({
						map : map,
						path : [],
						strokeStyle : 'solid',
						strokeColor : '#5347AA',
						strokeWeight : 5
					});
					
					$.ajax({
						url : "/bikelong/route/gpsfind.action",
						method : "GET",
						data : parameter,
						success : function(data, status, xhr) {
							var size = data.length;
							var point;
							var path = polyline.getPath();
														
							for (var i = 0; i < size; i++) {
							//	alert('' + data[i].latitude + '/'
							//			+ data[i].longitude);
								if(i==0){
									frist =new naver.maps.LatLng(data[i].latitude,data[i].longitude);
									if(fritstMarker!=null){
										fritstMarker.setMap(null);
									}
									fritstMarker = new naver.maps.Marker({
										map : map,
										position : frist
									});
									map.panTo(frist);
								}else if(i==size-1){
									second =new naver.maps.LatLng(data[i].latitude,data[i].longitude);
									if(secondMarker!=null){
										secondMarker.setMap();	
									}
									secondMarker = new naver.maps.Marker({
										map : map,
										position : second
									});
								}
								point = new naver.maps.LatLng(data[i].latitude,
										data[i].longitude);
								path.push(point);
							}
							distance = polyline.getDistance();
						},
						error : function(xhr, status, err) {
							alert('실패하셨습니다.');
						}
					});
				});
		
		var frist;
		var second;
		var fritstMarker;
		var secondMarker;
		var distance;
		
		var map = new naver.maps.Map('map', {
			center : new naver.maps.LatLng(37.3700065, 127.121359),
			zoom : 10,
			mapTypeControl : true,
			mapTypeControlOptions : {
				style : naver.maps.MapTypeControlStyle.DROPDOWN
			}
		});
		
		var polyline = new naver.maps.Polyline({
			map : map,
			path : [],
			strokeStyle : 'solid',
			strokeColor : '#5347AA',
			strokeWeight : 5
		});
		
		var bicycleLayer = new naver.maps.BicycleLayer();
		bicycleLayer.setMap(map);
		
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
					<h1 class="page-title-heading">경로 공유 게시판 > 글쓰기</h1>
				</div>
				<div class="col-md-6">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="/bikelong/index.action">Home</a></li>
						<li class="breadcrumb-item"><a href="/bikelong/route/sharingboardlist.action?pageno=${pageno}">Route Sharing Board</a></li>
						<li class="breadcrumb-item active">Route Sharing Board write</li>
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
				<div class="row">
					<div class="col-lg-11 m-auto">
						<!-- Post-->
						<article class="post">

							<div class="post-preview">
								<!--  -->
							</div>

							<div class="row">
								<div class="col-md-12">
									<form action="/bikelong/route/sharingboardwrite.action"
										id="frm" method="POST" enctype="multipart/form-data"
										novalidate>
										<table class="table table-bordered">
											<tr>
												<td>제목</td>
												<td colspan="4"><input type="text" name="title"
													style="width: 900px" placeholder="제목"></td>
											</tr>
											<tr>
												<td>글쓴이</td>
												<td colspan="3"><input type="text" name="id"
													value="${loginuser.id}" readonly></td>
											</tr>
											<tr>
												<td>지역 변경</td>
												<td colspan="3">
													<div class="form-group">
														<select name="locationNo" style="width: 900px">
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
														</select>
													</div>
												</td>
											</tr>
											<tr>
												<td colspan="4">경로 목록 선택 (선택 필수)</td>
											</tr>
										</table>
										<div class="row">
											<div class="col-md-12" id="his">
												<c:forEach var="h" items="${history}">
													<fmt:formatDate value="${h.sTime}" var="startTime" pattern="yyyy-MM-dd HH:mm:ss" />
													<fmt:formatDate value="${h.eTime}" var="endTime" pattern="yyyy-MM-dd HH:mm:ss" />
													<table class="table table-bordered"">
														<tr>
															<td>출발시간 : ${startTime} / 도착시간 : ${endTime}</td>
															<td><input type="radio" class="select form-control"
																id="${h.historyNo}" name="history"
																value="${h.historyNo}" data-startTime="${startTime}"
																data-endTime="${endTime}"
																style="vertical-align: middle; width: 20px; height: 20px"></td>
														</tr>
													</table>
												</c:forEach>
												<input type="button" id="gpsbtn" value="경로 찾기"
													style="vertical-align: middle;">
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<div class="post-preview">
														<div id="map" style="width: 100%; height: 550px;"></div>
													</div>
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<textarea rows="10" cols="100" name="content" id="content"
														class="form-control" style="width: 100%; height: 482px"
														placeholder="내용" required></textarea>
												</div>
											</div>
											<div class="col-md-12">
												<div class="text-center">
													<input type="button" id="savebtn" class="btn btn-black"
														value="글쓰기" /> <a class="btn btn-black"
														href="/bikelong/route/sharingboardlist.action?pageno=${pageno}">취소</a>
												</div>
											</div>
										</div>
									</form>
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