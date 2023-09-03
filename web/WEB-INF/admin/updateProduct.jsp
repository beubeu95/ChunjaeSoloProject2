<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<!DOCTYPE HTML>
<head>
    <title>제품 수정</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@ include file="/setting/head.jsp" %>
    <c:set var="path" value="<%=request.getContextPath() %>" />

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
                    <p class="bread"><span><a href="${path }/">Home</a></span> / <span>제품 수정</span></p>
                </div>
            </div>
        </div>
    </div>
    <!-- BREADCRUMB 끝 -->

    <!-- 제품 수정 부분 시작 -->
    <div class="container-md p-5 mt-5">
        <h3 class="mb-2"> 제품 수정 </h3>
        <form name="frm1" id="frm1" action="${path}/UpdateProductPro.do" method="post">
            <div class="form-outline mb-4 p-3">
                <div class="row">
                    <div class="col col-6" style="height: 300px; background-image: url('${path}/storage/${product.thumb}'); background-position: center; background-size: cover"></div>
                    <div class="col col-6" style="height: 300px; background-image: url('${path}/storage/${product.img_src}'); background-position: center; background-size: cover"></div>
                </div>
            </div>
            <div class="row">
                <div class="form-outline mb-4 col col-4">
                    <select name="cate_id" id="cate_id" class="form-control form-control-lg">
                        <c:forEach var="cate" items="${cateList}" varStatus="status">
                            <c:if test="${cate.cate_no eq product.cate_id}">
                                <option value="${cate.cate_no}" selected>${cate.cate_name}</option>
                            </c:if>
                            <c:if test="${cate.cate_no ne product.cate_id}">
                                <option value="${cate.cate_no}">${cate.cate_name}</option>
                            </c:if>
                        </c:forEach>
                    </select>
                    <label class="form-label" for="cate_id"> 카테고리 </label>
                </div>

                <div class="form-outline mb-4 col col-8">
                    <input type="hidden" id="pro_no" name="pro_no" value="${pro.pro_no}"/>
                    <input type="text" id="title" name="title" class="form-control form-control-lg" maxlength="90" value="${product.title}" required />
                    <label class="form-label" for="title"> 상품명 </label>
                </div>
            </div>
            <div class="form-outline mb-4">
                <textarea class="form-control" id="description" name="description" placeholder="상품의 자세한 정보를 입력하세요" maxlength="1990" rows="10" required> ${product.description} </textarea>
                <label for="description" class="form-label"> 상품 정보 </label>
            </div>
            <div class="form-outline mb-4">
                <textarea class="form-control" id="pro_content" name="pro_content" placeholder="도서 상품의 설명을 입력하세요" maxlength="1990" rows="10" required> ${product.pro_content} </textarea>
                <label for="pro_content" class="form-label"> 상품 설명 </label>
            </div>
            <div class="form-outline mb-4">
                <input class="form-control form-control-lg" type="number" name="price" id="price" min="1000" step="100" value="${product.price}" required>
                <label for="price" class="form-label"> 상품 가격 </label>
            </div>
            <div class="form-outline mb-4">
                <p> ❗️상품 이미지는 변경 불가합니다. </p>
            </div>
            <div class="d-flex justify-content-center mt-4">
                <button type="submit" class="btn btn-dark btn-block btn-lg gradient-custom-4"> 상품 수정하기 </button>
            </div>
        </form>
    </div>
    <!-- 제품 수정 부분 시작 -->

    <!-- FOOTER START -->
    <%@include file="/main/footer.jsp"%>
    <!-- FOOTER END -->


    <!--위로가기 아이콘 -->
    <div class="gototop js-top">
        <a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
    </div>

</body>
</html>
