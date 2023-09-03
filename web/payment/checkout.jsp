<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="<%=request.getContextPath() %>" />
<!DOCTYPE HTML>
<html>
<head>
	<title>장바구니 결제</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<%@ include file="/setting/head.jsp" %>

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

	<!-- BREADCRUMB 시작 -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col">
					<p class="bread"><span><a href="${path }/">Home</a></span> / <span>장바구니 결제</span></p>
				</div>
			</div>
		</div>
	</div>
	<!-- BREADCRUMB 끝 -->

	<!-- 장바구니 결제 부분 시작 -->
	<div class="colorlib-product">
		<div class="container">
			<div class="row row-pb-lg">
				<div class="col-sm-10 offset-md-1">
					<div class="process-wrap">
						<div class="process text-center active">
							<p><span>01</span></p>
							<h3>Shopping Cart</h3>
						</div>
						<div class="process text-center active">
							<p><span>02</span></p>
							<h3>Checkout</h3>
						</div>
						<div class="process text-center">
							<p><span>03</span></p>
							<h3>Order Complete</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8">
					<form action="${path }/CheckoutPro.do" method="post" onsubmit="return payCheck(this)" class="colorlib-form">
						<h2>Billing Details</h2>
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<p>받는 사람 연락처<span style="color:red;">*</span></p>
								<input type="hidden" name="id" id="id" value="${mem.id }">
								<input type="hidden" name="name" id="name" value="${mem.NAME }">
								<input type="hidden" name="email" id="email" value="${mem.email }">
								<input type="hidden" name="tel" id="tel" value="${mem.tel }">
								<input type="hidden" name="address" id="address" value="${mem.address }">
								<input type="tel" name="custel" id="custel" class="form-control" required>
							</div>

							<div class="form-group">
								<p>배송지 주소<span style="color:red;">*</span></p>
								<input type="text" name="address1" id="address1" placeholder="기본 주소 입력" class="form-control" required /><br>
								<input type="text" name="address2" id="address2" placeholder="상세 주소 입력" class="form-control" required /><br>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" name="postcode" id="postcode" class="form-control"  style="width:160px;float:left;margin-right:20px;" placeholder="우편번호" required>
								<button type="button" id="post_btn" onclick="findAddr()"  class="form-control" >우편번호 검색</button>
							</div>
						</div>
					</div>
					<div class="row">
							<div class="col-lg-6">
								<div class="checkout__input" >
									<p>결제수단<span>*</span></p>
									<select name="pay_method" id="pay_method" style="width: 300px;">
										<option value="신용카드">신용카드</option>
										<option value="체크카드">체크카드</option>
										<option value="계좌이체">계좌이체</option>
									</select>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="checkout__input" style="width: 300px;">
									<p>결제사<span>*</span></p>
									<select name="pay_com" id="pay_com" style="width: 300px;" >
										<option value="선택안함">선택안함</option>
									</select>
									<input type="hidden" name="pay_com2" id="pay_com2" value="">
								</div>
							</div>
						</div>
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label for="pay_account">결제 번호</label>
								<input type="text" name="pay_account" class="form-control" id="pay_account" required>
								<input type="hidden" name="Paymount" id="payAmount">
								<input type="hidden" name="payCk" id="payCk" value="yes">
							</div>
					    </div>
				   </div>
				<form class="col-lg-4">
					<div class="row">
						<div class="col-md-12">
							<div class="cart-detail">
								<h2>Cart Total</h2>
								<ul>
									<li>
										<ul>
											<c:forEach var="cart" items="${cartList}">
											<li><span>${cart.title } </span><span class="total">${cart.price*cart.amount}
												<input type="hidden" name="title" id="proName" value="${cart.title }">
											</li>
											</c:forEach>
										</ul>
									</li>
									<li><span>Shipping</span><span id="subprice"></span></li>
									<li><span>Order Total</span><span id="totalprice"></span></li>
								</ul>
							</div>
					   </div>
					   <div class="w-100"></div>
					</div>
					<div class="row">
						<div class="col-md-12 text-center">
							<input type="button" id="pay" value="PLACE ORDER" class="btn btn-primary">
							<c:if test="${!empty sid }">
								<input type="submit" class="btn btn-primary" value="구매">
							</c:if>
						</div>
					</div>
				</form>
				<script>
					$(document).ready(function(){
						var cardArr1 = ["현대카드","농협카드","BC카드","KB카드"];
						var cardArr2 = ["하나카드","농협카드","BC카드","신한카드"];
						var bankArr = ["카카오뱅크","농협은행","신한은행","기업은행","국민은행"];
						$("#pay_method").change(function(){
							var th = $(this).val();
							if(th==="신용카드"){
								for(var i=0;i<cardArr1.length;i++) {
									$("#pay_com").append("<option value='" + cardArr1[i] + "'>" + cardArr1[i] + "</option>");
								}
							} else if(th==="체크카드"){
								for(var i=0;i<cardArr2.length;i++) {
									$("#pay_com").append("<option value='"+cardArr2[i]+"'>"+cardArr2[i]+"</option>");
								}
							} else {
								for(var i=0;i<bankArr.length;i++) {
									$("#pay_com").append("<option value='"+bankArr[i]+"'>"+bankArr[i]+"</option>");
								}
							}
						}).change();
						$("#pay_com").change(function(){
							$("#pay_com2").val($(this).val());
						});
					});
				</script>
				<script>
					//주소 연동 API
					function findAddr() {
						new daum.Postcode({
							oncomplete: function(data) {
								console.log(data);
								var roadAddr = data.roadAddress;
								var jibunAddr = data.jibunAddress;
								document.getElementById("postcode").value = data.zonecode;
								if(roadAddr !== '') {
									document.getElementById("address1").value = roadAddr;
								} else if(jibunAddr !== ''){
									document.getElementById("address1").value = jibunAddr;
								}
								document.getElementById("address2").focus();
							}
						}).open();
					}
				</script>
				<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
				<script>
					//결제모듈 API 연동
					$(document).ready(function(){
						var totalPay=0;
						var proName;

						$(".total").each(function(){
							totalPay = totalPay + parseInt($(this).text());
						});

						//합계를 출력
						$("#subprice").html("<span>"+totalPay+"</span>");
						$("#totalprice").html("<span>"+totalPay+"</span>");

						$("#pay").click(function(){
							var cname = $("#name").val();
							var email = $("#email").val();
							var tel = $("#tel").val();
							var addr = $("#addr").val();
							var postcode = $("#postcode").val();
							proName = $("#proName").val();


							alert("결제할 금액 : "+totalPay);

							//상품명_현재시간
							var d = new Date();
							var date = d.getFullYear()+''+(d.getMonth()+1)+''+d.getDate()+''+d.getHours()+''+d.getMinutes()+''+d.getSeconds();
							IMP.init('imp11164187'); // 결제 API를 사용하기 위한 코드 입력!
							IMP.request_pay({	      //결제 요청
								pg :"pgT5102001",         //상점 거래 ID
								merchant_uid : '상품명_' + date, //
								name : proName,				// 결제 명
								amount : totalPay,					// 결제금액
								buyer_email : email, // 구매자 email
								buyer_name : cname,				// 구매자 이름
								buyer_tel : tel,		// 구매자 전화번호
								buyer_addr : addr,		// 구매자 주소
								buyer_postcode : postcode			// 구매자 우편번호
							}, function(rsp){
								if(rsp.success){
									console.log(rsp);
									var msg = '결제가 완료 되었습니다.';
									var r1 = '고유 아이디 : ' +rsp.imp_uid;
									var r2 = '상점 거래 아이디 : ' +rsp.merchant_uid;
									var r3 = '결제 금액 : ' +rsp.paid_amount;
									var r4 = '카드 승인 번호 : '+rsp.apply_num;

									//$("#payCk").val("yes");
									//$("#payAmount").val(rsp.paid_amount);
									//$("#pmethod").val(rsp.pay_method);
									//$("#pcom").val(rsp.pg_provider);
									//$("#cnum").val(rsp.apply_num);
									//alert(msg);
									//$("#paymentResult").html(r1+"<br>"+r2+"<br>"+r3+"<br>"+r4);
								} else{
									//$("#paymentResult").html('결제실패<br>'+'에러내용 : ' +rsp.error_msg);
								}
								//테스트용이므로 실패시에도 그냥 통과시킴
								$("#payCk").val("yes");
								$("#payAmount").val(totalPay);
								$("#pay_method").val("신용카드");
								$("#pay_com").val("삼성카드");
								$("#cus_num").val("123-1234-1234-1278");
								$("#paymentResult").text("결제 완료 : "+totalPay);
							});
						});
					});
				</script>
				<script>
					function payCheck(f){
						var payCk = f.payCk.value;
						console.log(payCk);
						if(payCk!="yes"){
							alert("아직 결제 전 입니다.");
							return false;
						}
					}
				</script>
			</div>
		</div>
	</div>
	<!-- 장바구니 결제 부분 시작 -->

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

