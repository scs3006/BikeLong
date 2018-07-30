<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Bike Long</title>
	<!-- Favicons-->
	<link rel="shortcut icon" href="resources/assets/images/favicon.png">
	<link rel="apple-touch-icon" href="resources/assets/images/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="resources/assets/images/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="resources/assets/images/apple-touch-icon-114x114.png">
	<!-- Web Fonts-->
	<link href="https://fonts.googleapis.com/css?family=PT+Serif%7cSignika:300,400,600,700" rel="stylesheet">
	<!-- Bootstrap core CSS-->
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" rel="stylesheet">
	<!-- Plugins and Icon Fonts-->
	<link href="resources/assets/css/plugins.min.css" rel="stylesheet">
	<!-- Template core CSS-->
	<link href="resources/assets/css/template.css" rel="stylesheet">
	
	
	<!-- naver map API -->
	<script type="text/javascript"
		src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=Vj_z1VQ7HqR8A0hX5tnL&submodules=geocoder">
	</script>
	
	<!-- jqplot.end -->
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="/bikelong/resources/jqplot/jquery.jqplot.js"></script>
	<script type="text/javascript" src="/bikelong/resources/jqplot/plugins/jqplot.barRenderer.js"></script>
	<script type="text/javascript" src="/bikelong/resources/jqplot/plugins/jqplot.highlighter.js"></script>
	<script type="text/javascript" src="/bikelong/resources/jqplot/plugins/jqplot.cursor.js"></script>
	<script type="text/javascript" src="/bikelong/resources/jqplot/plugins/jqplot.pointLabels.js"></script>
	<link rel="stylesheet" type="text/css" href="/bikelong/resources/jqplot/jquery.jqplot.css" />
	<!-- jqplot.end -->
	
	<script type="text/javascript">
		$(function() {
			
			$('#search').on('click', function(event) {
				event.preventDefault();
				var text = $('#text').val();
				
				if(text == '') {
					alert('검색할 지역이나 대여소 이름을 입력하세요.');
					return;
				}
				
				var data = $('#searchForm').serialize();
				$.ajax({
					"url" : "search.action",
					"method" : "POST",
					"data" : data,
					"success" : function(data, status, xhr) {
						if(data == null || data == '') {
							alert('검색하신 정보가 없습니다.');
							return;
						} 
						search(data);
					},
					"error" : function(request, status, errpr) {
						alert("검색 실패");
					}
				});
			});
			
			$('#modalClose').on('click', function(event) {
				$('#searchModal #modal-body').empty();
			});
			
			$(document).keydown(function(event) {
				if(event.keyCode == 27) {
					$('#searchModal #modal-body').empty();
				}
			});
			
			$('#write').on('click', function(event) {
				location.href="rentalShopWrite.action";
			});
		});
	</script>
	
	<style type="text/css">

		#hiddenTable{visibility: hidden;}
	
		.search {
			height: 40px;
			width: 100%;
			border: 2px solid #00adc1;
			background: #ffffff;
		}
		
		.search select {
			font-size: 16px;
			width: 20%;
			height: 100%;
			border: 1px solid #00adc1;
			outline: none;
			float: left;
		}
		
		.search input {
			font-size: 16px;
			width: 70%;
			height: 100%;
			padding: 10px;
			border: 1px solid #00adc1;
			outline: none;
			float: left;
		}
		
		.search button {
			width: 10%;
			height: 100%;
			border: 1px solid #00adc1;
			background: #00adc1;
			outline: none;
			float: right;
			color: #ffffff;
		}
		
		.image {
			margin-top: -40px;
		}
		
		.image span {
			font-size: 15px;
			margin-right: 10px;
		}
		
		.write button{
		  background:#00adc1;
		  color:#fff;
		  border:none;
		  position:relative;
		  height:45px;
		  font-size:1.6em;
		  padding:0 2em;
		  cursor:pointer;
		  transition:800ms ease all;
		  outline:none;
		}
		
		.write button:hover{
		  background:#fff;
		  color:#00adc1;
		}
		
		.write button:before,button:after{
		  content:'';
		  position:absolute;
		  top:0;
		  right:0;
		  height:2px;
		  width:0;
		  background: #00adc1;
		  transition:400ms ease all;
		}
		
		.write button:after{
		  right:inherit;
		  top:inherit;
		  left:0;
		  bottom:0;
		}
		
		.write button:hover:before,button:hover:after{
		  width:100%;
		  transition:800ms ease all;
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
<jsp:include page="/WEB-INF/views/include/header.jsp" /><br><br><br>
<!-- Header end-->

<!-- Wrapper-->
<div class="wrapper">

	<!-- Page Header-->
	<section class="module-page-title">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-6">
					<h1 class="page-title-heading">RentalShop Location</h1>
				</div>
				
				<div class="col-md-6">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="/bikelong/">Home</a></li>
						<li class="breadcrumb-item active">RentalShop Location</li>
					</ol>
				</div>
			</div>
		</div>
	</section>
	<!-- Page Header end-->
	
	<!-- Maps-->
	<section class="module divider-top">
		<div class="container">
			<div class="row">
				
				<!-- Images -->
				<div class="col-md-12">
					<div class="image">
						<img src="/bikelong/resources/assets/images/icon0.gif" width="20px" height="20px"><span>0대</span>
						<img src="/bikelong/resources/assets/images/icon3.gif" width="20px" height="20px"><span>1~3대</span>
						<img src="/bikelong/resources/assets/images/icon2.gif" width="20px" height="20px"><span>4~6대</span>
						<img src="/bikelong/resources/assets/images/icon1.gif" width="20px" height="20px"><span>7대 이상</span>
						<img src="/bikelong/resources/assets/images/icon4.gif" width="20px" height="20px"><span>임시폐쇠</span>
					</div>
				</div>
				<!-- Images End -->
				
				<!-- Search -->
				<div class="col-md-12">
					<form id="searchForm">
						<div class="search">
							<select id="select" name="select">
								<option value="지역">지역</option>
								<option value="대여소명">대여소명</option>
							</select>
							<input id="text" name="text" type="text" placeholder="검색어 입력">
							<button id="search"><img src="/bikelong/resources/assets/images/search.gif" width="30px" height="24px"></button>
						</div>
					</form>
				</div>
				<!-- Search End -->
				
				<div class="col-md-12">
					<div id="map" style="width:100%; height:700px;">
					</div>
					
					<script type="text/javascript">
						var HOME_PATH = window.HOME_PATH || '.';
						var position = new naver.maps.LatLng(37.485344, 126.901107);
						
						var map = new naver.maps.Map('map', {
							center: position,
						    zoom: 10
						});
						
						var markers = [];
						var marker = null;
						var markerOptions = null;						
						var contentString = null;
						var currentInfoWindow = null;
						var modal = false;
						
						function search(data) {

							var cnt = 0;
							for(var i=0; i < data.length; i++) {
								cnt++;
							}
							
							if(cnt > 1) {
								var modalBody = $('#searchModal #modal-body');
								
								for(var i=0; i<data.length; i++) {
									$("<a href='javascript:mapsMove("+ data[i].lat +","+ data[i].lng +","+ data[i].rentalShopNo +");'><center class='breadcrumb-item' color='black'></center></a><br>").text(data[i].rentalShopName).appendTo(modalBody);
								}
								
								var modal = true;
								$('#searchModal').modal('show');
								$('#modal-title').text(cnt + "개의 항목이 검색되었습니다.");
							} else {
								mapsMove(data[0].lat, data[0].lng, data[0].rentalShopNo);
							}	
						}
						
						function mapsMove(lat, lng, i) {
							var location = new naver.maps.LatLng(lat, lng);
							map.panTo(location);
							
							$('#searchModal').modal('hide');
							$('#searchModal #modal-body').empty();
							
						}
						
						function makeMarkerOptions(count, lat, lng) {
							var idx;
							if (count == 0) {
								idx = 0;
							} else if (count > 0 && count < 4) {
								idx = 3
							} else if (count > 3 && count < 7) {
								idx = 2;	
							} else if (count > 6) {
								idx = 1;
							}
							
							imageUrl = '/bikelong/resources/assets/images/icon' + idx + '.gif';
							markerOptions = {
								position: new naver.maps.LatLng(lat, lng),
								map: map,
								icon: {
										url: imageUrl,
										size: new naver.maps.Size(50, 50),
								        origin: new naver.maps.Point(0, 0),
								        anchor: new naver.maps.Point(25, 50)
								}
							}
							
							return markerOptions;
						}
						
						function makeInfoWindow(currentMarker) {
							contentString = [
						        '<div id="iw_inner" class="iw_inner" style="width:265px; height:205px;">',
						        '   <center style="margin-top: 20px; font-size: 15px;">' + currentMarker.rentalShopNo + '. ' + currentMarker.rentalShopName + '</center>',
						        '   <hr color="black" style="width:220px; height:2px; margin-top: 3px; margin-bottom: 10px;">',
						        '   <center style="font-size: 13px;">대여가능 자전거</center>',
						        '   <center style="font-size: 60px; margin-top: -25px;">' + currentMarker.count + '</count>',
						        '   <hr color="black" style="width:220px; height:2px; margin-top: -10px; margin-bottom: -40px;">',
						        '   <button id="detailInfo" data-rentalshopName="' + currentMarker.rentalShopName + '" data-rentalshopNo="'+ currentMarker.rentalShopNo +'" style="width: 80px; height: 35px; font-size: 15px; background: #72ebc9; border: none;">날씨정보</button>',
						        '   <button id="close" style="width: 80px; height: 35px; font-size: 15px; background: #72ebc9; border: none;">확인</button>',
						        '</div>'
						    ].join('');
	
							infoWindow = new naver.maps.InfoWindow({
							    content: contentString,
							    maxWidth: 265,
							    maxHeight: 205,
							    backgroundColor: "#fff",
							    borderColor: "#000",
							    borderWidth: 3,
							    anchorSize: new naver.maps.Size(20, 10), //창 아래 화살표
							    anchorSkew: true,
							    anchorColor: "#fff",
							    pixelOffset: new naver.maps.Point(5, -20) //창 위치
							});
							
							return infoWindow;
						}
						
						<c:forEach var="rentalShop" items="${ rentalShops }" varStatus="status">
						
							//marker = new naver.maps.Marker(markerOptions);
							markerOptions = makeMarkerOptions(${ rentalShop.count }, ${ rentalShop.lat }, ${ rentalShop.lng });
							marker = new naver.maps.Marker(markerOptions);
							marker.rentalShop = {
								"rentalShopNo" : ${rentalShop.rentalShopNo},
								"rentalShopName" : "${rentalShop.rentalShopName}",
								"count" : ${rentalShop.count}
							}	
							markers.push(marker);
																				
							
		
							naver.maps.Event.addListener(marker, "click", function(e) {
								var currentMarker = markers[${status.index}];
								if (currentInfoWindow && currentInfoWindow.getMap()) {
									currentInfoWindow.close();
								}
								currentInfoWindow = makeInfoWindow(currentMarker.rentalShop)
							    currentInfoWindow.open(map, currentMarker);
							        
						        $('div#map div#iw_inner button#close').on('click', function(event) {
						        	currentInfoWindow.close();
						        });
						        
						        $('div#map div#iw_inner button#detailInfo').on('click', function(event) {
						        	currentInfoWindow.close();
						        	$('div#chart').empty();
						        	//히든으로 숨겨진 날씨정보 테이블을 보이게한다.
						        	$('div#hiddenTable').css('visibility','visible');
						        	//날씨정보 테이블로 스크롤 이동
						        	$('html, body').animate({scrollTop : $('div#hiddenTable').offset().top}, 400);

						        	var rentalshopNo = $(this).attr('data-rentalshopNo');
						        	var rentalshopName = $(this).attr('data-rentalshopName');
						        	
						        	//외부페이지에서 차트를 불러온다.
						        	$('div#chart').load('/bikelong/environment/selectenvironmentlist.action?rentalshopNo='+rentalshopNo);
						        	
						        	$.ajax({
										url : "/bikelong/environment/selectenvironment.action",
										method : "POST",
										data : {"rentalshopNo" : rentalshopNo},
										success : function(data,status,xhr){
											if(data!=null){
												$('td#rentShopName').text(rentalshopName);
												
												if(data.temperature==null || data.temperature ==""){
													$('td#temperature').text("수집된 정보가 없습니다.");
												}else{
													$('td#temperature').text(data.temperature + " °C");
												}
												
												if(data.humidity==null || data.humidity ==""){
													$('td#humidity').text("수집된 정보가 없습니다.");
												}else{
													$('td#humidity').text(data.humidity + " %");
												}
												
												if(data.dust==null || data.dust ==""){
													$('td#dust').text("수집된 정보가 없습니다.");
												}else{
													$('td#dust').text(data.dust + " µg");
												}
											}
											if(data==null){
												alert('상세정보 불러오기에 실패하였습니다.');
												return;
											}
										},
										error : function(xhr, status, err){
											alert('상세정보 불러오기에 실패하였습니다.');
											return;
										}
									});
						        });
							});
						
					</c:forEach>
						
					</script>
				</div>
				
				<div class="col-md-12" id="hiddenTable">
				<br/><br/>
					<div class="table-responsive">
						<table class="table">
							<tr>
							  	<th colspan="2">대여소 이름</th>
							  	<td colspan="4" id="rentShopName"></td>
							</tr>
							<tr>
								<th>현재 온도</th>
								<td id="temperature"></td>
							  	<th >현재 습도</th>
								<td id="humidity"></td>
								<th>현재 미세먼지</th>
								<td id="dust"></td>
							</tr>
							<tr>
								<th colspan="6">
									<div id="chart"></div>
								</th>
							</tr>
						</table>
					</div>
				</div>
				
				<div class="col-md-12 write" align="center">
					<c:if test="${loginuser.id eq 'manager' && loginuser ne null}">
						<button id="write">대여소 등록</button>
					</c:if>
				</div>
			</div>
		</div>
	</section>
	<!-- Maps End -->
						

	<br><br>


	<svg class="footer-circle" xmlns="http://www.w3.org/2000/svg" version="1.1" width="100%" height="100" viewbox="0 0 100 100" preserveaspectratio="none">
		<path d="M0 100 C40 0 60 0 100 100 Z"></path>
	</svg>
	
	<!-- Footer-->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	<!-- Footer end-->
</div>
<!-- Wrapper end-->

<!-- modal -->

<div class="modal fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modal-title"></h5>
                <button id="modalClose" type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div id="modal-body" class="modal-body">	
            </div>
            <div class="modal-footer">
            - 해당 대여소를 선택해 주세요. -
            </div>
        </div>
    </div>
</div>

<!-- modal(end) -->

<!-- Scripts-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
	<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyA0rANX07hh6ASNKdBr4mZH0KZSqbHYc3Q"></script>
	<script src="resources/assets/js/plugins.min.js"></script>
	<script src="resources/assets/js/custom.min.js"></script>
</body>
</html>