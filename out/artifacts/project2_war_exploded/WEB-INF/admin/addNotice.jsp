<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<!DOCTYPE HTML>
<head>
    <title>공지사항 등록</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@ include file="/setting/head.jsp" %>
    <c:set var="path" value="<%=request.getContextPath() %>" />

    <style>
        #tb1 { width:960px; margin:40px auto; }
        #tb1 th { background-color: #111; color:#fff; }
        .item1 { width:10%; }
        .item2 { width:70%; }
        .item3 { width:10%; }
        .item4 { width:10%; }
        #page-nation1 { width: 960px; margin:20px auto; }
    </style>

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
                <p class="bread"><span><a href="${path }/">Home</a></span> / <span>공지사항 등록</span></p>
            </div>
        </div>
    </div>
    </div>
    <!-- BREADCRUMB 끝 -->

    <!--공지사항 등록 부분 시작-->
    <div class="container">
        <div class="box_wrap">
            <form action="${path }/AddNoticePro.do" method="post">
                <table class="table table-secondary" id="tb1">
                    <tbody>
                    <tr>
                        <th>글 제목</th>
                        <td><input type="text" name="title" id="title" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>글 내용</th>
                        <td><textarea name="content" id="content" class="form-control"></textarea></td>
                    </tr>
                    </tbody>
                </table>
                <div class="group container">
                    <input type="submit" value="글 등록" class="btn btn-primary"/>
                    <a href="${path }/NoticeList.do" class="btn btn-primary">글 목록</a>
                </div>
            </form>
        </div>
    </div>
    <!--공지사항 등록 부분 끝 -->

    <!-- FOOTER START -->
    <%@include file="/main/footer.jsp"%>
    <!-- FOOTER END -->


    <!--위로가기 아이콘 -->
    <div class="gototop js-top">
        <a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
    </div>

</body>
</html>
