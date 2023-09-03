<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<!DOCTYPE HTML>
<head>
    <title>배송정보 수정</title>
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
                    <p class="bread"><span><a href="${path }/">Home</a></span> / <span>배송정보 수정</span></p>
                </div>
            </div>
        </div>
    </div>
    <!-- BREADCRUMB 끝 -->

    <!-- 배송정보 수정 부분 시작 -->
    <div class="container-md p-5 mt-5">
            <h4 class="mb-2"> 주문 정보 </h4>
            <div class="border p-4">
                <div class="row">
                    <div class="form-outline mb-4 col col-3">
                        <input type="text" name="del_no" class="form-control form-control"value="${delivery.del_no}" readonly />
                        <label class="form-label" for="title"> 배송번호 </label>
                    </div>

                    <div class="form-outline mb-4 col col-9">
                        <input type="text" id="title" name="title" class="form-control form-control" value="${delivery.title}" readonly />
                        <label class="form-label" for="title"> 상품명 </label>
                    </div>
                </div>
                <div class="row">
                    <div class="form-outline mb-4 col col-6">
                        <input type="text" class="form-control" id="cus_id" name="cus_id" value="${delivery.custom_id}" readonly>
                        <label for="cus_id" class="form-label"> 주문자 ID </label>
                    </div>
                    <div class="form-outline mb-4 col col-6">
                        <input type="text" class="form-control" id="cus_tel" name="cus_tel" value="${delivery.cus_tel}" readonly>
                        <label for="cus_tel" class="form-label"> 주문자 전화번호 </label>
                    </div>
                </div>
                <div class="form-outline">
                    <input class="form-control form-control" type="text" name="cus_addr" id="cus_addr" value="${delivery.del_addr}" readonly>
                    <label for="cus_addr" class="form-label"> 배송지주소 </label>
                </div>
            </div>

            <h4 class="mt-5 mb-2"> 배송 정보 </h4>
            <form name="frm1" id="frm1" action="${path}/UpdateDeliveryPro.do" method="post" class="border p-4">
                <div class="row">
                    <div class="form-outline mb-4 col col-4">
                        <input type="hidden" id="del_no" name="del_no" value="${delivery.del_no}">
                        <input type="hidden" id="type" name="type" value="${param.type}">
                        <input type="date" id="pay_resdate" name="pay_resdate" class="form-control form-control" value="${fn:substring(delivery.pay_resdate, 0, 10)}" readonly />
                        <label class="form-label" for="pay_resdate"> 결제일 </label>
                    </div>
                    <div class="form-outline mb-4 col col-4">
                        <input type="date" id="del_date" name="del_date" class="form-control form-control" value="${fn:substring(delivery.del_date, 0, 10)}" readonly />
                        <label class="form-label" for="del_date"> 배송시작일 </label>
                    </div>
                    <div class="form-outline mb-4 col col-4">
                        <input type="date" id="res_date" name="res_date" class="form-control form-control" value="${fn:substring(delivery.res_date, 0, 10)}" required />
                        <label class="form-label" for="res_date"> 배송예정일 </label>
                    </div>
                </div>
                <div class="row">
                    <div class="form-outline mb-4 col col-4">
                        <input type="text" class="form-control" id="del_com" name="del_com" value="${delivery.del_com}" required>
                        <label for="del_com" class="form-label"> 배송사 </label>
                    </div>
                    <div class="form-outline mb-4 col col-8">
                        <input type="text" class="form-control" id="del_tel" name="del_tel" value="${delivery.del_tel}" required>
                        <label for="del_tel" class="form-label"> 배송기사 전화번호 </label>
                    </div>
                </div>
                <div class="row">
                    <div class="form-outline mb-4 col col-8">
                        <input class="form-control" type="text" name="del_code" id="del_code" value="${delivery.del_code}" required>
                        <label for="del_code" class="form-label"> 송장번호 </label>
                    </div>
                    <div class="form-outline mb-4 col col-4">
                        <select class="form-control" name="del_state" id="del_state">
                            <c:forEach var="state" items="${state_list}" varStatus="status">
                                <c:if test="${delivery.current_state eq state}">
                                    <option value="${status.index}" selected> ${state} </option>
                                </c:if>
                                <c:if test="${delivery.current_state ne state}">
                                    <option value="${status.index}"> ${state} </option>
                                </c:if>
                            </c:forEach>
                        </select>
                        <label for="del_state" class="form-label"> 배송상태 </label>
                    </div>
                </div>

                <div class="d-flex justify-content-center mt-4">
                    <button type="submit" class="btn btn-dark btn-block btn-lg gradient-custom-4"> 배송정보 수정 </button>
                </div>
            </form>
        </div>
    <!-- 배송정보 수정 부분 끝 -->

    <!-- FOOTER START -->
    <%@include file="/main/footer.jsp"%>
    <!-- FOOTER END -->


    <!--위로가기 아이콘 -->
    <div class="gototop js-top">
        <a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
    </div>

</body>
</html>