<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="<%=request.getContextPath() %>" />
<!DOCTYPE HTML>
<html>
<head>
    <title>상품 상세보기</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@ include file="/setting/head.jsp" %>

    <script src="https://kit.fontawesome.com/67fc414e58.js" crossorigin="anonymous"></script>
    <style>
        button.player_btn {
            border: none;
            background-color: #ffffff;

        }
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
                    <p class="bread"><span><a href="${path }/">Home</a></span> / <span>상품 상세보기</span></p>
                </div>
            </div>
        </div>
    </div>
    <!-- BREADCRUMB 끝 -->

    <!-- 상품 상세보기 시작 -->
    <div class="colorlib-product">
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
                            <div class="quantity">
                                <div class="pro-qty">
                                    <div class="pro-qty">
                                        <c:if test="${amount<=0}">
                                            <input type="text" value="품절" readonly>
                                        </c:if>
                                        <c:if test="${amount>0}">
                                            <input type="number" value="1" min="1" max="${amount}">
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <c:if test="${sid eq 'admin'}">
                        <div class="col-sm-12 text-center">
                            <p class="addtocart"><a href="${path }/Receive.do?pro_no=${pro.pro_no }" class="btn btn-primary btn-addtocart" style="width:200px;"><i class="icon-shopping-cart"></i>입고</a></p>
                        </div>
                        </c:if>
                        <c:if test="${sid ne null and sid ne 'admin'}">
                        <div class="col-sm-12 text-center">
                            <p class="addtocart"><a href="${path }/AddCart.do?pro_no=${pro.pro_no }" class="btn btn-primary btn-addtocart" style="width:200px;"><i class="icon-shopping-cart"></i> Add to Cart</a></p>
                        </div>
                        </c:if>
                    </div>
            </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-md-12 pills">
                        <div class="bd-example bd-example-tabs">
                            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">

                                <li class="nav-item">
                                    <a class="nav-link active" id="pills-description-tab" data-toggle="pill" href="#pills-description" role="tab" aria-controls="pills-description" aria-expanded="true">Description</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="pills-manufacturer-tab" data-toggle="pill" href="#pills-manufacturer" role="tab" aria-controls="pills-manufacturer" aria-expanded="true">Video</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="pills-review-tab" data-toggle="pill" href="#pills-review" role="tab" aria-controls="pills-review" aria-expanded="true">Review</a>
                                </li>
                            </ul>

                            <div class="tab-content" id="pills-tabContent">
                                <div class="tab-pane border fade show active" id="pills-description" role="tabpanel" aria-labelledby="pills-description-tab">
                                    <h6>상품 상세설명</h6>
                                    <p>${pro.pro_content}</p>
                                </div>
                                <div class="tab-pane border fade" id="pills-manufacturer" role="tabpanel" aria-labelledby="pills-manufacturer-tab">
                                    <h6>상품 동영상</h6>
                                    <div class="player" style="width: 800px; margin: 0 auto;">
                                        <div class="vdo_fr">
                                            <video id="video" autoplay style="width: 100%">
                                                <source src="${path}/storage/${info.movie}" type="video/mp4"/>
                                            </video>
                                        </div>
                                        <div id="buttonbar" style="width: 100%">
                                            <button id="play" class="player_btn"> <i class="fas fa-play"></i> </button>
                                            <button id="pause" class="player_btn"> <i class="fas fa-pause"></i> </button>
                                            <button id="stop" class="player_btn"> <i class="fas fa-stop"></i> </button>
                                            <div class="btn float-right">
                                                <input id="vol" type="range" value="500" min="0" max="1000">
                                                <button id="volTxt" class="player_btn">50%</button>
                                                <button id="full" class="player_btn"> <i class="fas fa-expand-arrows-alt"></i> </button>
                                            </div>
                                        </div>
                                        <script src="${path}/js/vdo.js"></script>
                                    </div>
                                </div>
                                <div class="tab-pane border fade" id="pills-review" role="tabpanel" aria-labelledby="pills-review-tab">
                                    <h5 style="margin-bottom: 20px"><strong>후기</strong></h5>
                                    <div>
                                        <c:forEach var="review" items="${reviewList}">
                                            <div class="name"><strong>회원 ID: </strong>${review.mem_id}&nbsp;&nbsp;&nbsp;&nbsp;<strong>작성일시: </strong>${review.regdate}</div>
                                            <div class="star"><strong>별점: </strong>
                                                <c:if test="${review.star eq 5}">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </c:if>
                                                <c:if test="${review.star eq 4}">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </c:if>
                                                <c:if test="${review.star eq 3}">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </c:if>
                                                <c:if test="${review.star eq 2}">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </c:if>
                                                <c:if test="${review.star eq 1}">
                                                    <i class="fa fa-star"></i>
                                                </c:if>
                                            </div>
                                            <div class="content">${review.content}</div>
                                            <hr>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 상품 상세보기 끝 -->


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


