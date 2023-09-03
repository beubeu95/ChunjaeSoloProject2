<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<!DOCTYPE HTML>
<head>
    <title>나의 정보 수정</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@ include file="/setting/head.jsp" %>
    <c:set var="path" value="<%=request.getContextPath() %>" />
    <style>
        .menu_item { color: #333; }
        .menu_item:hover { color: #333; font-weight: bold; }
    </style>
    <c:if test="${msg eq 'success'}">
        <script>
            alert("취소/반품이 처리되었습니다.");
        </script>
    </c:if>
    <c:if test="${msg eq 'fail'}">
        <script>
            alert("취소/반품 처리에 실패하였습니다.");
        </script>
    </c:if>

</head>

<body>
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
                    <p class="bread"><span><a href="${path }/">Home</a></span> / <span>나의 정보 수정</span></p>
                </div>
            </div>
        </div>
    </div>
    <!-- BREADCRUMB 끝 -->

    <!-- 나의 정보 수정 -->
    <div class="container">
        <div class="row">
            <div class="col col-lg-3 mb-3 p-3">
                <div class="p-4 border">
                    <a href="${path}/mypageInfo.do" class="d-block menu_item" style="color:#7FAD39; font-weight:bold"> 나의 정보 수정 </a>
                    <a href="${path}/MyOrderList.do" class="d-block mt-2 menu_item" > 주문/배송 조회 </a>
                    <a href="${path}/mypageReview.do" class="d-block mt-2 menu_item"> 리뷰 관리</a>
                </div>
            </div>
            <div class="col-lg-9 col-md-9">
                <form action="${path}/mypageInfoPro.do" method="post">
                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <div class="checkout__input">
                                <p>아이디<span>*</span></p>
                                <input type="text" value="${mem.id }" name="id" id="id" class="indata" readonly required>
                            </div>
                            <div class="checkout__input">
                                <p>비밀번호<span>*</span></p>
                                <input type="password" value="${pw }" name="pw" id="pw" class="indata"  required>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>주소<span>*</span></p>
                                        <input type="text" name="postcode" id="postcode" class="indata" value="${postcode}" required>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p><span></span></p>
                                        <button type="button" id="post_btn" onclick="findAddr()" class="site-btn" >우편번호검색</button>
                                    </div>
                                </div>
                            </div>
                            <div class="checkout__input">
                                <input type="text" name="address1" id="address1" value="${addr1 }" class="indata"  required>
                            </div>
                            <div class="checkout__input">
                                <input type="text" name="address2" id="address2" value="${addr2 }"  class="indata"  required>
                            </div>
                            <div class="checkout__input">
                                <p>전화번호<span>*</span></p>
                                <input type="tel" value="${mem.tel }" name="tel" id="tel" class="indata"  required >
                            </div>
                            <div class="checkout__input">
                                <p>이메일<span>*</span></p>
                                <input type="email" value="${mem.email }" name="email" id="email"  class="indata"  required >
                            </div>
                            <div class="checkout__input">
                                <p>생년월일<span>*</span></p>
                                <input type="date" value="${mem.birth }" name="birth" id="birth" class="indata"  required>
                            </div>
                            <div>
                                <button type="submit" class="site-btn" style="float:right;">개인정보수정</button>
                            </div>
                        </div>
                    </div>
                </form>
                <script>
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
            </div>
        </div>
    </div>
    <!-- 나의 정보 수정 끝 -->

    <!-- FOOTER START -->
    <%@include file="/main/footer.jsp"%>
    <!-- FOOTER END -->


<!--위로가기 아이콘 -->
<div class="gototop js-top">
    <a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
</div>

</body>
</html>
