<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="<%=request.getContextPath() %>" />
<!DOCTYPE HTML>
<html>
<head>
    <title>입고 처리</title>
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
                    <p class="bread"><span><a href="${path }/">Home</a></span> / <span> ${pro.title } 입고 처리</span></p>
                </div>
            </div>
        </div>
    </div>
    <!-- BREADCRUMB 끝 -->

    <!-- 입고 처리 영역 시작 -->
    <div class="container">
        <div class="row row-pb-lg product-detail-wrap">
            <div class="col-sm-8">
                <div class="item">
                    <div class="product-entry border" style=" padding-left: 200px;">
                        <a href="" class="prod-img">
                            <img src="${path}/storage/${pro.thumb }" class="img-fluid" alt="상품 이미지">
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="product-desc">
                    <h3>${pro.title}</h3>
                    <p class="price">
                        <span>${pro.price}</span>
                    </p>
                    <p>${pro.description}</p>
                </div>
                <div class="input-group mb-4">
                    <div class="product__details__quantity">
                        <div class="product__details__quantity">
                            <form action="${path}/ReceivePro.do" method="post">
                                <p class="mb-2">입고 금액<span>*</span></p>
                                <div class="col-lg-12">
                                    <div class="checkout__input">
                                        <input type="hidden" id="pro_no" name="pro_no" value="${pro.pro_no}">
                                        <input class="form-control" type="number" name="receive" id="receive" min="1" value="1000">
                                    </div>
                                </div>
                                <p class="mb-2">입고 수량<span>*</span></p>
                                <div class="col-lg-12">
                                    <div class="checkout__input">
                                        <input class="form-control" type="number" name="re_amount" id="re_amount" min="1" max="100" value="1" >
                                    </div>
                                </div>
                                <div class="col-sm-12 text-center" style="margin-top: 30px;">
                                    <p class="addtocart"><input type="submit" id="receive_btn" class="btn btn-primary btn-addtocart" style="width:200px;" value="RECEIVE"/><i class="icon-shopping-cart"></i></p>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 입고 처리 영역 끝 -->



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


