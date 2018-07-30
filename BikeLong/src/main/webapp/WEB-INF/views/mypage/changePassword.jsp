<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<title>마이페이지</title>
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
		
		<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
		
		<script type="text/javascript">
		$(function(){
			$('#frm').on('submit',function(event){
				event.preventDefault();
				
				var regPw = /^[A-Za-z0-9]{6,20}$/;
				var originPw = $('#originPw').val();
				var confirmPw = $('#confirmPw').val();
				var newPassword = $(this).find('[name=password]').val();
				if(originPw != "") {
					if(!regPw.test(newPassword)) {
						alert('비밀번호의 형식을 확인하세요.');
						return;
					} else {
						if(originPw != confirmPw){
								alert('비밀번호가 불일치합니다.');
								$('#originPw').val('');
								$('#confirmPw').val('');
								return;
							}
						}
					}
				
				var queryString =  $("#frm").serialize();
				
				$.ajax({
					url : "/bikelong/account/changePassword.action",
					method : "POST",
					data : queryString,
					success : function(data,status,xhr){
						if(data=="success"){
							alert('비밀번호 변경에 성공하셨습니다.');
							location.href="/bikelong/mypage/mypage.action";
						}
						if(data=="checkPw"){
							alert('기존 비밀번호가 일치하지 않습니다.');
							$('#originPw').val('');
							$('#confirmPw').val('');
						}
						if(data=="fail"){
							alert('비밀번호 변경에 실패하셨습니다.');
						}
					},
					error : function(xhr, status, err){
						alert('비밀번호 변경에 실패하셨습니다.');
					}
				});
				
			});
		});
		</script>
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

		<!-- Wrapper-->
		<div class="wrapper">
			<!-- Page Header-->
				<section class="module-page-title">
					<div class="container">
						<div class="row align-items-center">
							<div class="col-md-6">
								<h1 class="page-title-heading">Change Password</h1>
							</div>
							<div class="col-md-6">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="/bikelong/index.action">Home</a></li>
									<li class="breadcrumb-item active"><a href="/bikelong/mypage/mypage.action">Mypage</a></li>
									<li class="breadcrumb-item active">Change Password</li>
								</ol>
							</div>
						</div>
					</div>
				</section>
			<!-- Page Header end-->
			
			<div class="container" style="padding-top:50px;">
				<div class="row">
					<div class="col-md-6 m-auto text-center">
						<p class="subtitle">WELCOME TO BIKELONG</p>
						<h1 class="display-1">비밀번호 변경</h1>
						<div class="divider-border"> </div>
					</div>
				</div>
			</div>
			
			<section class="module" style="padding-top: 50px;">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<form method="post" id="frm">
								<div class="row">
									<div class="col-md-6">
										<div class="text-center">* 비밀번호</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<input class="form-control" type="password" name="originPw" id="originPw" placeholder="Password">
										</div>
									</div>
									<div class="col-md-6">
										<div class="text-center">* 비밀번호 확인</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<input class="form-control" type="password" id="confirmPw" placeholder="Confirm Password">
										</div>
									</div>
									<div class="col-md-6">
										<div class="text-center">* 새로운 비밀번호 <br/>(영문 대,소문자,숫자 포함 6~20)</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<input type="hidden" name="id" value="${loginuser.id}">
											<input class="form-control" type="password" name="newPassword" placeholder="New Password">
										</div>
									</div>
									<br/><br/>
									<div class="col-md-12">
										<div class="text-center">
											<input class="btn btn-black" type="submit" value="비밀번호변경">
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="space" data-mY="100px"></div>
						</div>
					</div>
				</div>
			</section>
		</div>
			<svg class="footer-circle" xmlns="http://www.w3.org/2000/svg" version="1.1" width="100%" height="100" viewbox="0 0 100 100" preserveaspectratio="none">
				<path d="M0 100 C40 0 60 0 100 100 Z"></path>
			</svg>
			
			<!-- Footer-->
			<jsp:include page="/WEB-INF/views/include/footer.jsp" />
			<!-- Footer end-->

	
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