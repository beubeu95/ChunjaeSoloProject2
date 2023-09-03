<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="<%=request.getContextPath() %>" />
<!DOCTYPE HTML>
<html>
<head>
    <title>상품 목록</title>
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
                    <p class="bread"><span><a href="${path }/">Home</a></span> / <span>상품목록</span></p>
                </div>
            </div>
        </div>
    </div>
    <!-- BREADCRUMB 끝 -->

    <!-- 상품 목록 영역 시작 -->
    <div class="colorlib-product">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-xl-3">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="side border mb-1">
                                <h3>카테고리</h3>
                                <ul>
                                <c:if test="${param.cate_id eq 'ABC' || param.cate_id eq 'A' || param.cate_id eq 'B' || param.cate_id eq 'C'}">
                                    <li><a href="${path}/CateProList.do?cate_id=A">초등교과서</a></li>
                                    <li><a href="${path}/CateProList.do?cate_id=B">초등참고서</a></li>
                                    <li><a href="${path}/CateProList.do?cate_id=C">초등문제집</a></li>
                                </c:if>
                                <c:if test="${param.cate_id eq 'DEF' || param.cate_id eq 'D' || param.cate_id eq 'E' || param.cate_id eq 'F'}">
                                    <li><a href="${path}/CateProList.do?cate_id=A">중등교과서</a></li>
                                    <li><a href="${path}/CateProList.do?cate_id=B">중등참고서</a></li>
                                    <li><a href="${path}/CateProList.do?cate_id=C">중등문제집</a></li>
                                </c:if>
                                <c:if test="${param.cate_id eq 'GHI' || param.cate_id eq 'G' || param.cate_id eq 'H' || param.cate_id eq 'I'}">
                                    <li><a href="${path}/CateProList.do?cate_id=E">고등교과서</a></li>
                                    <li><a href="${path}/CateProList.do?cate_id=F">고등참고서</a></li>
                                    <li><a href="${path}/CateProList.do?cate_id=G">고등문제집</a></li>
                                </c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-xl-9">
                    <div class="row row-pb-md">
                        <c:forEach var="pro" items="${proList}" varStatus="status">
                        <div class="col-lg-4 mb-4 text-center">
                            <div class="product-entry border">
                                <a href="${path}/getProduct.do?pro_no=${pro.pro_no }" class="prod-img">
                                    <img src="${path }/storage/${pro.img_src}" class="img-fluid" alt="book">
                                </a>
                                <div class="desc">
                                    <h2><a href="${path}/getProduct.do?pro_no=${pro.pro_no }">${pro.title}</a></h2>
                                    <span class="price">${pro.price}</span>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        <div class="w-100"></div>
                        <c:if test="${empty proList}">
                            <li class="col-12">해당 상품이 존재하지 않습니다.</li>
                        </c:if>
                    </div>
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <div class="block-27">
                                <ul>
                                    <li><a href="${path}/CateProList.do?cate_id=${pro.cate_id}&page=1"><i class="ion-ios-arrow-back"></i></a></li>
                                    <li class="active"><span>1</span></li>
                                    <li><a href="${path}/CateProList.do?cate_id=${pro.cate_id}&page=2">2</a></li>
                                    <li><a href="${path}/CateProList.do?cate_id=${pro.cate_id}&page=3">3</a></li>
                                    <li><a href=""><i class="ion-ios-arrow-forward"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 상품 목록 영역 시작 -->

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


