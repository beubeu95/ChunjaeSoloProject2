<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="<%=request.getContextPath() %>" />

<div class="colorlib-intro">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 text-center">
                <h2 class="intro">NT BOOKS - 좋은 교재만 판매합니다!</h2>
            </div>
        </div>
    </div>
</div>
<div class="colorlib-product">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-6 text-center">
                <div class="featured">
                    <a href="${path}/CateProList.do?cate_id=A&cate_id=B&cate_id=C" class="featured-img" style="background-image: url(${path }/images/B-9.jpg);"></a>
                    <div class="desc">
                        <h2><a href="${path}/CateProList.do?cate_id=A&cate_id=B&cate_id=C">초등</a></h2>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 text-center">
                <div class="featured">
                    <a href="{path}/CateProList.do?cate_id=D&cate_id=E&cate_id=F" class="featured-img" style="background-image: url(${path }/images/F-5.jpg);"></a>
                    <div class="desc">
                        <h2><a href="${path}/CateProList.do?cate_id=D&cate_id=E&cate_id=F">중등</a></h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="colorlib-product">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-6 text-center">
                <div class="featured">
                    <a href="${path}/CateProList.do?cate_id=I&cate_id=J&cate_id=K&cate_id=L" class="featured-img" style="background-image: url(${path }/images/K-5.jpg);"></a>
                    <div class="desc">
                        <h2><a href="${path}/CateProList.do?cate_id=I&cate_id=J&cate_id=K&cate_id=L">고등</a></h2>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 text-center">
                <div class="featured">
                    <a href="${path}/NoticeList.do" class="featured-img" style="background-image: url(${path }/images/banner-bg.jpg);"></a>
                    <div class="desc">
                        <h2><a href="${path}/NoticeList.do">고객지원</a></h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>