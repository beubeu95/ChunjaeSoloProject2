<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
<title>NT Books</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<%@ include file="/setting/head.jsp" %>
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');
	</style>


</head>
<body>
<div class="colorlib-loader"></div>

<div id="page">
	<!--HEADER START-->
	<%@include file="/main/header.jsp" %>
	<div class="sale" style="background-color:#88c8bc;">
		<div class="container">
			<div class="row">
				<div class="col-sm-8 offset-sm-2 text-center">
					<div class="row">
						<div class="owl-carousel2">
							<div class="item">
								<div class="col" style="padding-top:10px;">
									<h3><a href="#"  style="color:#FFFFFF;">20% off 세일! 새학기 기념 전과목 참고서 세일</a></h3>
								</div>
							</div>
							<div class="item">
								<div class="col" style="padding-top:10px;">
									<h3><a href="#" style="color:#FFFFFF;">20% off 세일! 새학기 기념 전과목 참고서 세일</a></h3>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- HEADER END-->

	<!-- BANNER START -->
	<%@include file="/contents/banner.jsp" %>
	<!-- BANNER END -->

	<!-- SECTION1 START -->
	<%@ include file="/contents/link.jsp" %>
	<!-- SECTION1 END -->

	<!-- SECTION2 START -->
	<%@ include file="/contents/productMain.jsp" %>
	<!-- SECTION@ END -->

	<!-- FOOTER START -->
	<%@include file="/main/footer.jsp"%>
	<!-- FOOTER END -->

</div>

<!--위로가기 아이콘 -->
<div class="gototop js-top">
	<a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
</div>

</body>
</html>

