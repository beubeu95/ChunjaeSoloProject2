<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<!DOCTYPE HTML>
<html>
<head>
    <title>Faq</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@ include file="/setting/head.jsp" %>
    <c:set var="path" value="<%=request.getContextPath() %>" />

    <style>
        .faqlist li {padding: 20px;margin: 10px 0;background-color: #fff;border-radius: 8px;box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);transition: transform 0.2s, box-shadow 0.2s;cursor: pointer; list-style-type: none;}
        .faqlist li:hover {transform: translateY(-3px);box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);}
        .faqlist li .ans {padding: 20px;background-color: #f9f9f9;border-radius: 8px;margin-top: 10px;display: none;}
        .que:before {content: "Q";display: inline-block;width: 20px;height: 20px;line-height: 20px;text-align: center;background-color: #7fad39;color: #fff;border-radius: 50%;margin-right: 10px;}
        .ans:before { content: "A";display: inline-block;width: 20px;height: 20px;line-height: 20px;text-align: center;background-color: #ffd500;color: #fff;border-radius: 50%;margin-right: 10px;}
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
                    <p class="bread"><span><a href="${path }/">Home</a></span> / <span>FAQ</span></p>
                </div>
            </div>
        </div>
    </div>
    <!-- BREADCRUMB 끝 -->

    <!-- FAQ 부분 시작 -->
    <div class="page_wrap">
        <ul class="faqlist">
            <c:forEach var="faq" items="${faqList }" varStatus="status">
            <li>
                <div class="que">${faq.question }</div>
                <div class="ans">${faq.answer }</div>
            </li>
            </c:forEach>
        </ul>
        <script>
            $(document).ready(function(){
                $(".faqlist li").click(function(){
                    $(this).find(".ans").slideToggle(500);
                    $(this).find(".que").toggleClass("on");
                });
            });
        </script>
    </div>
    <!-- FAQ 부분 끝 -->

    <!-- FOOTER START -->
    <%@include file="/main/footer.jsp"%>
    <!-- FOOTER END -->


<!--위로가기 아이콘 -->
<div class="gototop js-top">
    <a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
</div>

</body>
</html>
