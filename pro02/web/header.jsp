<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="headerPath" value="<%=request.getContextPath() %>" />
<header class="header container-fluid" id="hd">
    <div class="container">
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="${headerPath }">CHUNJAE</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <%--<li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="${path2 }">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>--%>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="${headerPath}/proList.do" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                상품
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="${headerPath}/proList.do">교과서</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#">참고서</a></li>
                                <li><a class="dropdown-item" href="#">문제집</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                커뮤니티
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="${headerPath}/noticeList.do">공지사항</a></li>
                                <li><a class="dropdown-item" href="#">묻고답하기</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#">학습후기</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" aria-disabled="true">Disabled</a>
                        </li>
                    </ul>
                    <ul class="nav justify-content-end">
                        <c:if test="${sid eq 'admin' }">
                            <li class="nav-item"><a class="nav-link" href="${headerPath}/adminNoticeList.do">관리자페이지</a></li>
                        </c:if>
                        <c:if test="${!empty sid }">
                            <li class="nav-item"><a class="nav-link" href="${headerPath}/mypage.do">MyPage</a></li>
                            <li class="nav-item"><a class="nav-link" href="${headerPath}/logout.do">Logout</a></li>
                            <li class="nav-item"><a class="nav-link" href="${headerPath}/login.do">contact us</a></li>
                        </c:if>
                        <c:if test="${empty sid }">
                        <li class="nav-item"><a class="nav-link" href="${headerPath}/login.do">login</a></li>
                        <li class="nav-item"><a class="nav-link" href="${headerPath}/login.do">join</a></li>
                        <li class="nav-item"><a class="nav-link" href="${headerPath}/login.do">contact us</a></li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</header>