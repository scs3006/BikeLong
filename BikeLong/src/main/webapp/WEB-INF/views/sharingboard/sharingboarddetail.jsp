<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="description" content="" />
<meta name="author" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<title>Tavern - Responsive Restaurant Template(Bootstrap 4)</title>

<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="/bikelong/resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=XkRO5MabQSh96y9c_kCn&submodules=geocoder"></script>
</head>
<script type="text/javascript">
	$(function() {
		//전역변수
		var array = new Array();
		array[0] = new Array();
		array[1] = new Array();
		var boardNo = $('#map').attr('data-boardNo');
		
		$("#updatebtn").on('click',function(event){
        	event.preventDefault();
        	if('${loginuser.id}'){ // null or '' check!
    			if($('#boardId').attr('data-id')=='${loginuser.id}'){
    				location.href='/bikelong/route/sharingboardupdate.action?boardNo='+boardNo+'&id=${loginuser.id}&pageno=${pageno}';
    			}else{
    				alert("게시글 수정은 작성자만 가능합니다.");
    				return;
    			}
    		}else{
    			var value = confirm('로그인이 필요한 서비스입니다. 로그인 할까요?');
    			if(value){
    				location.href='/bikelong/account/signin.action';
    			}
    			return;
    		}
		});
		
		$("#deletebtn").on('click',function(event){
        	event.preventDefault();
        	if('${loginuser.id}'){ // null or '' check!
    			if($('#boardId').attr('data-id')=='${loginuser.id}'){
    				var value = confirm('해당 게시글을 삭제하시겠습니까?');
    				if(value){
    				location.href='/bikelong/route/sharingboarddelete.action?boardNo='+boardNo;
    				}
    			}else{
    				alert("게시글 삭제는 작성자만 가능합니다.");
    				return;
    			}
    		}else{
    			var value = confirm('로그인이 필요한 서비스입니다. 로그인 할까요?');
    			if(value){
    				location.href='/bikelong/account/signin.action';
    			}
    			return;
    		}
		});
		
		$("#replySubmit").click(function(event){
        	event.preventDefault();
        	
        	if(!($('#frm input[name=id]').val())){ // null or '' check!
    			var value = confirm('로그인이 필요한 서비스입니다. 로그인 할까요?');
    			if(value){
    				location.href='/bikelong/account/signin.action';
    			}
    			return;
    		}
        	
        	if($('#frm textarea').val().length == 0){
    			alert('댓글 내용을 입력하세요.');
    			return;
    		}
        	
        	var queryString =  $("#frm").serialize();
        	$.ajax({
				url : "/bikelong/reply/insert.action",
				method : "POST",
				data : queryString,
				success : function(data,status,xhr){
					if(data=="success"){
						alert('댓글 등록에 성공하셨습니다.');
						$('#frm textarea').val('');
						$('div#comments').load('/bikelong/reply/findReplyList.action?boardNo=' + $('#frm input[name=boardNo]').val());
					}
					if(data=="fail"){
						alert('댓글 등록에 실패하셨습니다.');
						return;
					}
				},
				error : function(xhr, status, err){
					alert('댓글 등록에 실패하셨습니다.');
					return;
				}
			});
        });
		
		$('div#comments').on('click', 'a.deleteReply',function(event){
			event.preventDefault();
			var replyNo = $(this).attr('data-replyNo');
			$.ajax({
				url : "/bikelong/reply/delete.action",
				method : "GET",
				data : {'replyNo' : replyNo},
				success : function(data,status,xhr){
					if(data=="success"){
						alert('댓글 삭제에 성공하셨습니다.');
						location.href="/bikelong/route/sharingboarddetail.action?boardNo="+boardNo+"&pageno=${pageno}";
					}
					if(data=="fail"){
						alert('댓글 삭제에 실패하셨습니다.');
						return;
					}
				},
				error : function(xhr, status, err){
					alert('댓글 삭제에 실패하셨습니다.');
					return;
				}
			});
		});
		
		var frist;
		var second;
		$(window).ready(function(){
					var startTime = $('#map').attr('data-startTime'); 
					var endTime = $('#map').attr('data-endTime');
					var parameter = {
						"startTime" : startTime,
						"endTime" : endTime
					};

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
									new naver.maps.Marker({
										map : map,
										position : frist
									});
									map.panTo(frist);
								}else if(i==size-1){
									second =new naver.maps.LatLng(data[i].latitude,data[i].longitude);
									new naver.maps.Marker({
										map : map,
										position : second
									});
								}
								point = new naver.maps.LatLng(data[i].latitude,
										data[i].longitude);
								path.push(point);
							}
						},
						error : function(xhr, status, err) {
							alert('실패하셨습니다.');
						}
					});
				});
					
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
					<h1 class="page-title-heading">경로 공유 게시판 > 상세보기</h1>
				</div>
				<div class="col-md-6">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="/bikelong/index.action">Home</a></li>
						<li class="breadcrumb-item"><a href="/bikelong/route/sharingboardlist.action?pageno=${pageno}">Route Sharing Board</a></li>
						<li class="breadcrumb-item active">Route Sharing Board Detail</li>
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
							<div class="row">
								<div class="col-md-12">
									<table class="table table-bordered">
										  <tr>
										 	<td>제목</td>
										 	<td colspan="4">${sharingBoardDetail.title}</td>
										  </tr>
										  <tr>	
										 	<td>글쓴이</td>
										 	<td id="boardId" data-id="${sharingBoardDetail.id}">${sharingBoardDetail.id}</td>
										 	<td>작성일</td>
										 	<td >${sharingBoardDetail.date}</td>
										 </tr>
										  <tr>
										 	<td>서울시 지역구</td>
										 	<td colspan="4">${sharingBoardDetail.locationName}</td>
										  </tr>
									</table>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<div class="post-preview">
											<fmt:formatDate value="${history.sTime}" var="startTime" pattern="yyyy-MM-dd HH:mm:ss"/>
											<fmt:formatDate value="${history.eTime}" var="endTime" pattern="yyyy-MM-dd HH:mm:ss"/>
											<div id="map" style="width:100%;height:550px;" data-startTime="${startTime}" data-endTime="${endTime}"
											data-boardNo="${sharingBoardDetail.boardNo}"></div>
										</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										${sharingBoardDetail.content} 
									</div>
								</div>
								<div class="col-md-12">
									<div class="text-center">
										<hr/>
										<a class="btn btn-black" href="/bikelong/route/sharingboardlist.action?pageno=${pageno}">목록보기</a>
										<a class="btn btn-black" id="updatebtn" href="#">수정</a>
										<a class="btn btn-black" id="deletebtn" href="#">삭제</a>
									</div>
								</div>
							</div>
						</div>
						</article>
						<!-- Post end-->

						<!-- Comments area-->
						<div class="comments-area">
							<h5 class="comments-title">Comments</h5>
							<div class="comment-list" id="comments">
								<c:choose>
									<c:when test="${ replyList == '' || replyList eq null}">
										<h3 id="nodata" style="text-align:center">
										 작성된 댓글이 없습니다.
										</h3>
									</c:when>
									<c:otherwise>
										<!-- 댓글 리스트-->
										<c:forEach var="reply" items="${ replyList }">
											<div class="comment">
												<div class="comment-author">
													<img class="avatar"
														src="/bikelong/resources/assets/images/avatar/1.jpg" alt="">
												</div>
												<div class="comment-body">
													<div class="comment-meta">
														<div class="comment-meta-author">${reply.id}</div>
														<div class="comment-meta-date">${reply.date}</div>
													</div>
													<div class="comment-content">
														<p>${reply.content}</p>
													</div>
													<c:if test="${loginuser.id eq reply.id && loginuser ne null}">
														<a class="btn deleteReply" data-replyNo="${reply.replyNo}" href="#">삭제</a>
													</c:if>
												</div>
											</div>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</div>
							<div class="comment-respond">
								<h5 class="comment-reply-title">댓글 쓰기</h5>
								
								<form id="frm" class="comment-form row">
									<input class="form-control" type="hidden" name="id" value="${loginuser.id}">
									<input class="form-control" type="hidden" name="boardNo" value="${sharingBoardDetail.boardNo}">
									<div class="form-group col-md-12">
										<textarea class="form-control" rows="8" name="content" placeholder="Comment"></textarea>
									</div>
									<div class="form-submit col-md-12">
										<button class="btn btn-black" id="replySubmit" type="submit">Post Comment</button>
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