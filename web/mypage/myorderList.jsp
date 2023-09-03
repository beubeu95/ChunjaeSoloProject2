<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<!DOCTYPE HTML>
<html>
<head>
    <title>주문/배송 조회</title>
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
                    <p class="bread"><span><a href="${path }/">Home</a></span> / <span>주문/배송 조회</span></p>
                </div>
            </div>
        </div>
    </div>
    <!-- BREADCRUMB 끝 -->

    <!--주문/배송 조회 영역 시작 -->
    <div class="container">
        <div class="row">
            <div class="col col-lg-3 mb-3 p-3">
                <div class="p-4 border">
                    <a href="${path}/mypageInfo.do" class="d-block menu_item"> 개인정보 변경 </a>
                    <a href="${path}/MyOrderList.do" class="d-block mt-2 menu_item" style="color:#7FAD39; font-weight:bold"> 주문/배송 조회 </a>
                    <a href="${path}/mypageReview.do" class="d-block mt-2 menu_item"> 리뷰 관리</a>
                </div>
            </div>
            <div class="col col-lg-9 mt-3">
                <c:set var="resdate" value=""/>
                <c:forEach var="order" items="${orderList}">
                    <c:if test="${resdate eq order.resdate}">
                        <div class="row">
                            <div class="col col-lg-6">
                                <h4> ${order.title} </h4>
                                <p> 총 ${order.amount}권 / ${order.pay_price}원 </p>
                            </div>
                            <div class="col col-lg-2 d-flex align-items-center">
                                    ${order.del_state}
                            </div>
                            <div class="col col-lg-2 d-flex align-items-center">
                                <c:if test="${order.del_state eq '입고 중'}">
                                    <button type="button" class="btn btn-outline-secondary" onclick="javascript:location.href='${path}/ReturnPaymentOne.do?pay_no=${order.pay_no}'"> 취소 </button>
                                </c:if>
                                <c:if test="${order.del_state eq '배송 도착'}">
                                    <button type="button" class="btn btn-outline-secondary" onclick="javascript:location.href='${path}/ReturnPaymentOne.do?pay_no=${order.pay_no}'"> 환불 </button>
                                </c:if>
                            </div>
                        </div>
                        <hr class="mb-5">
                    </c:if>
                    <c:if test="${resdate ne order.resdate}">
                        <c:set var="resdate" value="${order.resdate}"></c:set>
                        <div class="row">
                            <div class="col col-lg-10 d-flex align-items-center">
                                <h4> ${order.resdate} </h4>
                            </div>
                            <c:if test="${order.del_state eq '입고 중'}">
                                <button type="button" class="btn btn-secondary" onclick="javascript:location.href='${path}/ReturnPayments.do?resdate=${order.resdate}'"> 전체 취소 </button>
                            </c:if>
                            <c:if test="${order.del_state eq '배송 도착'}">
                                <button type="button" class="btn btn-secondary" onclick="javascript:location.href='${path}/ReturnPayments.do?resdate=${order.resdate}'"> 전체 환불 </button>
                            </c:if>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col col-lg-2 d-flex align-items-center">
                                <img src="${path}/storage/${order.thumb}" alt="상품이미지" width="90px" height="auto">
                            </div>
                            <div class="col col-lg-6">
                                <h4> ${order.title} </h4>
                                <p> 총 ${order.amount}권 / ${order.pay_price}원 </p>
                            </div>
                            <div class="col col-lg-2 d-flex align-items-center">
                                    ${order.del_state}
                            </div>
                            <div class="col col-lg-2 d-flex align-items-center">
                                <c:if test="${order.del_state eq '입고 중'}">
                                    <button type="button" class="btn btn-outline-secondary" onclick="javascript:location.href='${path}/ReturnPaymentOne.do?pay_no=${order.pay_no}'"> 취소 </button>
                                </c:if>
                                <c:if test="${order.del_state eq '배송 도착'}">
                                    <button type="button" class="btn btn-outline-secondary" onclick="javascript:location.href='${path}/ReturnPaymentOne.do?pay_no=${order.pay_no}'"> 환불 </button>
                                </c:if>
                            </div>
                        </div>
                        <hr class="mb-5">
                    </c:if>
                </c:forEach>
            </div>
        </div>
    </div>
    <!-- 주문/배송 조회 영역 끝 -->

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

