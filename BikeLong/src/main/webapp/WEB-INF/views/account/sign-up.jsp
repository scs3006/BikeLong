<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<title>회원가입</title>
		<!-- Favicons-->
		<link rel="shortcut icon" href="/bikelong/resources/assets/images/favicon.png">
		<link rel="apple-touch-icon" href="/bikelong/resources/assets/images/apple-touch-icon.png">
		<link rel="apple-touch-icon" sizes="72x72" href="/bikelong/resources/assets/images/apple-touch-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="114x114" href="/bikelong/resources/assets/images/apple-touch-icon-114x114.png">
		<!-- Web Fonts-->
		<link href="https://fonts.googleapis.com/css?family=PT+Serif%7cSignika:300,400,600,700" rel="stylesheet">
		<!-- Bootstrap core CSS-->
		<link href="/bikelong/resources/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
		<!-- Plugins and Icon Fonts-->
		<link href="/bikelong/resources/assets/css/plugins.min.css" rel="stylesheet">
		<!-- Template core CSS-->
		<link href="/bikelong/resources/assets/css/template.css" rel="stylesheet">
		<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
		
		<style type="text/css">
			
		</style>
		
		<script type="text/javascript">
		$(function(){
			
			$('form').on('submit',function(event){
				event.preventDefault();
				
				var regId = /^[A-Za-z0-9]{4,10}$/;
				var id = $(this).find('[name=id]').val();
				if(id != "") {
				 if(!regId.test(id)) {
					 alert('아이디의 형식을 확인하세요.');
					 return;
					 }
				}
			
				var regPw = /^[A-Za-z0-9]{6,20}$/;
				var password = $(this).find('[name=password]').val();
				var cpassword = $(this).find('[name=cpassword]').val();
				if(password != "") {
				if(!regPw.test(password)) {
					alert('비밀번호의 형식을 확인하세요.');
					return;
				} else {
					if(password != cpassword){
							alert('비밀번호가 불일치합니다.');
							$(this).find('[name=password]').val('');
							$(this).find('[name=cpassword]').val('');
							return;
						}
					}
				}

				var regName = /^[가-힣]{2,10}$/;
				var name = $(this).find('[name=name]').val();
				if(name != "") {
				if(!regName.test(name)) {
					 alert('이름은 한글만 가능, 10문자까지입니다.');
					 return;
					}
				}
				 
				var regex= /^\d{3}-\d{4}-\d{4}$/;
				var phone = $(this).find('[name=phone]').val();
				if(phone != "") {
					if(!regex.test(phone) ) {
						alert('전화번호 형식이 맞지 않습니다.');
						return;
					}
				}
				
				var address = $(this).find('[name=address]').val();
				var basicWeight = $(this).find('[name=basicWeight]').val();
				
				$.ajax({
					url : "signup.action",
					method : "POST",
					data : {"id" : id, "name" : name, "password" : password, "phone" : phone, "address" : address, "basicWeight" : basicWeight},
					success : function(data,status,xhr){
						if(data=="success"){
							alert('회원가입에 성공하셨습니다.');
							location.href = '/bikelong/account/signin.action';
						}
						if(data=="fail"){
							$('form').find('[name=id]').val('');
							alert('이미 존재하는 아이디 입니다.');
						}
					},
					error : function(xhr, status, err){
						$('form').find('[name=id]').val('');
						alert('이미 존재하는 아이디 입니다.');
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
		<jsp:include page="/WEB-INF/views/include/header.jsp" />
		<!-- Header end-->

		<!-- Wrapper-->
		<div class="wrapper">

			<!-- Hero-->
			<section class="module-cover fullscreen parallax" data-background="/bikelong/resources/assets/images/main.jpg" data-overlay="0.5">
				<div class="container" id="account">
					<div class="row">
						<div class="col-md-4 m-auto">
							<div class="text-center">
								<div class="up-as">
									<h5>Create a new account</h5>
								</div>
								<div class="up-form">
									<form method="post" action="signup.action">
										<div class="form-group">
											<input class="form-control placeholder" id="aaaa" type="text" name="id" required="required" placeholder="id(영문 대,소문자,숫자 포함 4~10글자)">
										</div>
										<div class="form-group">
											<input class="form-control placeholder" type="text" name="name" required="required" placeholder="name(한글만 2~10글자)">
										</div>
										<div class="form-group">
											<input class="form-control placeholder" type="password" name="password" required="required" placeholder="Pasword(영문 대,소문자,숫자 포함 6~20)">
										</div>
										<div class="form-group">
											<input class="form-control placeholder" type="password" name="cpassword" required="required" placeholder="Confirm password">
										</div>
										<div class="form-group">
											<input class="form-control placeholder" type="text" name="phone" required="required" placeholder="phone(010-xxxx-xxxx)">
										</div>
										<div class="form-group">
											<input class="form-control placeholder" type="text" name="address" required="required" placeholder="address(시, 구 까지)">
										</div>
										<div class="form-group">
											<input class="form-control placeholder" type="text" name="basicWeight" placeholder="weight">
										</div>
										<div class="form-group">
											<button class="btn btn-block btn-round btn-brand" type="submit">Sign Up</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- Hero end-->

			<svg class="footer-circle" xmlns="http://www.w3.org/2000/svg" version="1.1" width="100%" height="100" viewbox="0 0 100 100" preserveaspectratio="none">
				<path d="M0 100 C40 0 60 0 100 100 Z"></path>
			</svg>
			
			<!-- Footer-->
			<jsp:include page="/WEB-INF/views/include/footer.jsp" />
			<!-- Footer end-->
			
		</div>
		<!-- Wrapper end-->

		<!-- Off canvas-->
		<div class="off-canvas-sidebar" data-background="/bikelong/resources/assets/images/sidebar.jpg">
			<div class="off-canvas-sidebar-wrapper">
				<div class="off-canvas-header"><a class="close-offcanvas" href="#"><span class="arrows arrows-arrows-remove"></span></a></div>
				<div class="off-canvas-content">
					<!-- Text widget-->
					<aside class="widget widget_text">
						<div class="textwidget">
							<p><img src="/bikelong/resources/assets/images/logo-light.png" width="74px" alt=""></p>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</p>
							<ul class="icon-list">
								<li><i class="ti-email"></i> info@themebusiness.com</li>
								<li><i class="ti-headphone-alt"></i> 1-444-123-4559</li>
								<li><i class="ti-location-pin"></i> Raymond Boulevard 224, New York</li>
							</ul>
						</div>
					</aside>
					<!-- Recent portfolio widget-->
					<aside class="widget widget_recent_works">
						<div class="widget-title">
							<h5>Instagram</h5>
						</div>
						<ul>
							<li><a href="#"><img src="/bikelong/resources/assets/images/widgets/1.jpg" alt=""></a></li>
							<li><a href="#"><img src="/bikelong/resources/assets/images/widgets/2.jpg" alt=""></a></li>
							<li><a href="#"><img src="/bikelong/resources/assets/images/widgets/3.jpg" alt=""></a></li>
							<li><a href="#"><img src="/bikelong/resources/assets/images/widgets/4.jpg" alt=""></a></li>
							<li><a href="#"><img src="/bikelong/resources/assets/images/widgets/5.jpg" alt=""></a></li>
							<li><a href="#"><img src="/bikelong/resources/assets/images/widgets/6.jpg" alt=""></a></li>
						</ul>
					</aside>
					<!-- Text widget-->
					<!--aside.widget.widget_text
					.textwidget
						.up-logo
							p.text-center.m-b-50: img(src="resources/assets/images/logo-light.png" width="100" alt="")
						.up-form
							form(method="post")
								.form-group
									input.form-control.form-control-lg(type="email" placeholder="Email")
								.form-group
									input.form-control.form-control-lg(type="password" placeholder="Pasword")
								.form-group
									button(type="submit" class="btn btn-block btn-lg btn-round btn-brand") Log in
						.up-help
							p: a(href="#") Forgot your password?
							p Don't have an account yet? <a href="#">Sign in</a>
					
					-->

					<!-- Twitter widget-->
					<aside class="widget twitter-feed-widget">
						<div class="widget-title">
							<h5>Twitter Feed</h5>
						</div>
						<div class="twitter-feed" data-twitter="345170787868762112" data-number="2"></div>
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