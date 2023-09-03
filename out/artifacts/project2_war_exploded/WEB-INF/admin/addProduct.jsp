<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<!DOCTYPE HTML>
<head>
    <title>제품 등록</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@ include file="/setting/head.jsp" %>
    <c:set var="path" value="<%=request.getContextPath() %>" />

    <style>
        .menu_item { color: #333; }
        .menu_item:hover { color: #333; font-weight: bold; }
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
                    <p class="bread"><span><a href="${path }/">Home</a></span> / <span>제품 등록</span></p>
                </div>
            </div>
        </div>
    </div>
    <!-- BREADCRUMB 끝 -->

    <!-- 제품 등록 부분 시작 -->
    <div class="container-md p-5 mt-5">
        <h3 class="mb-2"> 제품 등록 </h3>
        <form name="frm1" id="frm1" action="${path}/AddProductPro.do" method="post" enctype="multipart/form-data">
            <div class="row">
                <div class="form-outline mb-4 col col-4">
                    <select name="cate_id" id="cate_id" class="form-control form-control-lg">
                        <c:forEach var="cate" items="${cateList}" varStatus="status">
                            <option value="${cate.cate_no}">${cate.cate_name}</option>
                        </c:forEach>
                    </select>
                    <label class="form-label" for="cate_id"> 카테고리 </label>
                </div>

                <div class="form-outline mb-4 col col-8">
                    <input type="text" id="title" name="title" class="form-control form-control-lg" maxlength="90" required />
                    <label class="form-label" for="title"> 상품명 </label>
                </div>
            </div>
            <div class="form-outline mb-4">
                <textarea class="form-control" id="description" name="description" placeholder="상품의 자세한 정보를 입력하세요" maxlength="1990" rows="10" required></textarea>
                <label for="description" class="form-label"> 상품 정보 </label>
            </div>
            <div class="form-outline mb-4">
                <textarea class="form-control" id="pro_content" name="pro_content" placeholder="도서 상품의 설명을 입력하세요" maxlength="1990" rows="10" required></textarea>
                <label for="pro_content" class="form-label"> 상품 설명 </label>
            </div>
            <div class="form-outline mb-4">
                <input class="form-control form-control-lg" type="number" name="price" id="price" value="1000" min="1000" step="100" required>
                <label for="price" class="form-label"> 상품 가격 </label>
            </div>
            <div class="row">
                <div class="form-outline mb-4 col col-4">
                    <input class="form-control form-control-lg" type="file" name="thumb" id="thumb" placeholder="상품 메인이미지" required>
                    <label for="thumb" class="form-label"> 상품 이미지(메인) </label>
                </div>
                <div class="form-outline mb-4 col col-4">
                    <input class="form-control form-control-lg" type="file" name="img_src" id="img_src" placeholder="상품 서브이미지" required>
                    <label for="img_src" class="form-label"> 상품 이미지(서브) </label>
                </div>
                <div class="form-outline mb-4 col col-4">
                    <input class="form-control form-control-lg" type="file" name="movie" id="movie" placeholder="상품 맛보기 동영상" required>
                    <label for="img_src" class="form-label"> 상품 이미지(서브) </label>
                </div>
            </div>
            <div class="d-flex justify-content-center mt-4">
                <button type="submit" class="btn btn-dark btn-block btn-lg gradient-custom-4"> 상품 등록하기 </button>
            </div>
        </form>
    </div>
    <!-- 제품 등록 부분 끝 -->

    <!-- FOOTER START -->
    <%@include file="/main/footer.jsp"%>
    <!-- FOOTER END -->


    <!--위로가기 아이콘 -->
    <div class="gototop js-top">
        <a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
    </div>

</body>
</html>
