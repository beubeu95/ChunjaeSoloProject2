<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="<%=request.getContextPath() %>" />

<aside id="colorlib-hero">
    <div class="flexslider">
        <ul class="slides">
            <li style="background-image: url(${path }/images/bg_banner1.jpg);">
                <div class="overlay"></div>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6 offset-sm-3 text-center slider-text">
                            <div class="slider-text-inner">
                                <div class="desc">
                                    <h1 class="head-1">중학생</h1>
                                    <h2 class="head-2">새학기</h2>
                                    <h2 class="head-3">100점 기원 문제집</h2>
                                    <p class="category"><span>퀄리티 좋은 문제들 엄선!</span></p>
                                    <p><a href="${path}/CateProList.do?cate_id=D" class="btn btn-primary">보러가기</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li style="background-image: url(${path }/images/bg_banner2.jpg);">
                <div class="overlay"></div>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6 offset-sm-3 text-center slider-text">
                            <div class="slider-text-inner">
                                <div class="desc">
                                    <h1 class="head-1">개학</h1>
                                    <h2 class="head-2">기념</h2>
                                    <h2 class="head-3"><strong class="font-weight-bold">20%</strong> Off</h2>
                                    <p class="category"><span>참고서 세일!</span></p>
                                    <p><a href="${path}/CateProList.do?cate_id=H" class="btn btn-primary">보러가기</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</aside>