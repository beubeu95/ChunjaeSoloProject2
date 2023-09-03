<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="<%=request.getContextPath() %>" />

<nav class="colorlib-nav" role="navigation">
    <div class="top-menu">
        <div class="container">
            <div class="row">
                <div class="col-sm-7 col-md-9">
                    <div id="colorlib-logo"><a href="${path}/">NTBOOKS</a></div>
                </div>
                <div class="col-sm-5 col-md-3">
                    <form action="#" class="search-wrap">
                        <div class="form-group">
                            <input type="search" class="form-control search" placeholder="Search">
                            <button class="btn btn-primary submit-search text-center" type="submit"><i class="icon-search"></i></button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 text-left menu-1">
                    <ul>
                        <li class="active"><a href="${path}/">Home</a></li>
                        <li class="has-dropdown">
                            <a href="${path}/CateProList.do?cate_id=A&cate_id=B&cate_id=C">초등</a>
                            <ul class="dropdown">
                                <li><a href="${path}/CateProList.do?cate_id=A">초등교과서</a></li>
                                <li><a href="${path}/CateProList.do?cate_id=B">초등참고서</a></li>
                                <li><a href="${path}/CateProList.do?cate_id=C">초등문제집</a></li>
                            </ul>
                        </li>
                        <li class="has-dropdown">
                            <a href=${path}/CateProList.do?cate_id=D&cate_id=E&cate_id=F">중등</a>
                            <ul class="dropdown">
                                <li><a href="${path}/CateProList.do?cate_id=D">중등교과서</a></li>
                                <li><a href="${path}/CateProList.do?cate_id=E">중등참고서</a></li>
                                <li><a href="${path}/CateProList.do?cate_id=F">중등문제집</a></li>
                            </ul>
                        </li>
                        <li class="has-dropdown">
                            <a href="${path}/CateProList.do?cate_id=G&cate_id=H&cate_id=K&cate_id=I">고등</a>
                            <ul class="dropdown">
                                <li><a href="${path}/CateProList.do?cate_id=G">고등교과서</a></li>
                                <li><a href="${path}/CateProList.do?cate_id=H">고등참고서</a></li>
                                <li><a href="${path}/CateProList.do?cate_id=I">고등문제집</a></li>
                            </ul>
                        </li>
                        <li class="has-dropdown">
                            <a href="${path}/NoticeList.do"> 고객지원 </a>
                            <ul class="dropdown">
                                <li><a href="${path}/NoticeList.do"> 공지사항 </a></li>
                                <li><a href="${path}/FaqList.do"> FAQ </a></li>
                            </ul>
                        </li>
                        <li class="cart">
                                <a href="${path}/CartList.do"><i class="icon-shopping-cart"></i> Cart </a>
                            <c:if test="${sid eq null}">
                                <a href="${path}/Login.do"><i class="fa fa-user"></i> Login</a>
                                <a href="${path}/Term.do"><i class="fa fa-sign-in" aria-hidden="true"></i> Join </a>
                            </c:if>
                            <c:if test="${sid ne null and sid ne 'admin'}">
                                <a href="${path}/Logout.do"><i class="fa fa-user"></i> Logout </a>
                                <a href="${path}/mypageInfo.do"><i class="fa fa-sign-in" aria-hidden="true"></i> MyPage </a>
                            </c:if>
                            <c:if test="${sid eq 'admin'}">
                                <a href="${path}/Logout.do"><i class="fa fa-user"></i> Logout </a>
                                <a href="${path}/AdminProductList.do"><i class="fa fa-sign-in" aria-hidden="true"></i> Admin Page </a>
                            </c:if>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</nav>