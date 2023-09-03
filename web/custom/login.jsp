<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="<%=request.getContextPath() %>" />
<!DOCTYPE HTML>
<html>
<head>
    <title>로그인</title>
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
                    <p class="bread"><span><a href="${path }/">Home</a></span> / <span>로그인</span></p>
                </div>
            </div>
        </div>
    </div>
    <!-- BREADCRUMB 끝 -->

    <!-- 로그인 영역 시작-->
    <div class="colorlib-product">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact__form__title">
                        <h2 style="text-align: center; font-weight: bold;">환영합니다~!</h2>
                    </div>
                </div>
            </div>
            <div class="d-flex justify-content-center" >
                <form action="${path }/LoginPro.do" method="post">
                    <div class="row" >
                        <div class="col-lg-12 " style="margin-bottom:30px;">
                            <input type="text" name="id" id="id" class="form-control" placeholder="아이디 입력">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 " style="margin-bottom:40px;">
                            <input type="password" name="pw" id="pw" class="form-control"style="line-height:30px;" placeholder="비밀번호 입력">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 text-center" style="width:400px;">
                            <button type="submit" class="btn btn-primary" style="width:370px; background-color: #88c8bc;">LOGIN</button><br><br>
                            <div><span>처음이신가요?</span>&nbsp;
                                <a href="${path}/custom/term.jsp" style="font-size : 15px; font-weight:bold; text-decoration-line: none; color:#88c8bc;">회원가입</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- 로그인 영역 끝-->

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

