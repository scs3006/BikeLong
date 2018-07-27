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
						<li class="breadcrumb-item active">RentalShop Write</li>
					</ol>
				</div>
			</div>
		</div>
	</section>
	<!-- Page Header end-->
	
	<!-- WriteForm -->
	<section class="module divider-top">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="rentalShopWrite.action" method="post">
						<div class="col-md-12">
							<div class="form-group">
								대여소 이름<input class="form-control" type="text" name="name">
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								대여소 주소<input class="form-control" type="text" name="address">
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								대여소 위도<input class="form-control" type="text" name="lat">
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								대여소 경도<input class="form-control" type="text" name="lng">
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								자전거 대수<input class="form-control" type="text" name="count">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
						

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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
	<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyA0rANX07hh6ASNKdBr4mZH0KZSqbHYc3Q"></script>
	<script src="resources/assets/js/plugins.min.js"></script>
	<script src="resources/assets/js/custom.min.js"></script>
</body>
</html>