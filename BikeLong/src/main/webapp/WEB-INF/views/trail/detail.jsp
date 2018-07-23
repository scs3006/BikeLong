<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>자전거 산책로 공유 상세정보</title>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript"
	src="/bikelong/resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>

</head>
<script type="text/javascript">
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
		$('.deleteReply').each(function(idx){
			$(this).click(function(event){
				var replyNo = $(this).attr('data-replyNo');
				$.ajax({
					url : "/bikelong/reply/delete.action",
					method : "GET",
					data : {'replyNo' : replyNo},
					success : function(data,status,xhr){
						if(data=="success"){
							alert('댓글 삭제에 성공하셨습니다.');
							location.href="/bikelong/trailpathboard/detail.action?boardNo=${trailBoarddetail.boardNo}";
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
											<div class="form-group">제목 : ${trailBoarddetail.title}</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">글쓴이 : ${trailBoarddetail.id}</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												작성일 : ${trailBoarddetail.date}
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												해당 지역 : ${trailBoarddetail.locationName} <br /> <br />
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												${trailBoarddetail.content} <br /> <br />
											</div>
										</div>
										<div class="col-md-12">
											<div class="text-center">
												<a class="btn btn-black"
													href="/bikelong/trailpathboard/list.action">목록보기</a> <a
													class="btn btn-black"
													href="/bikelong/trailpathboard/update.action?boardNo=${trailBoarddetail.boardNo}">수정</a>
												<a class="btn btn-black"
													href="/bikelong/trailpathboard/delete.action?boardNo=${trailBoarddetail.boardNo}&pageNo=${pageNo}">삭제</a>
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
									<input class="form-control" type="hidden" name="boardNo" value="${trailBoarddetail.boardNo}">
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