<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 목록</title>
    <%@ include file="/common.jsp"%>
    <c:set var="path" value="<%=request.getContextPath() %>" />
    <style>
        #tb1 {width:960px;margin:40px auto;}
        #tb1 th {background-color:#111;color:#fff;}
        .item1 {width:10%;}
        .item2 {width:80%;}
        .item3 {width:10%;}
        #page-nation1 {width:960px;margin:20px auto;}
    </style>
</head>
<body>
<div class="container">
    <%@ include file="/header.jsp"%>
    <div class="contents" style="min-height:100vh;">
        <div id="carouselExample" class="carousel slide">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="${path }/images/sub_vi01.jpg" class="d-block w-100" alt="서브비주얼1">
                </div>
                <div class="carousel-item">
                    <img src="${path }/images/sub_vi02.jpg" class="d-block w-100" alt="서브비주얼1">
                </div>
                <div class="carousel-item">
                    <img src="${path }/images/sub_vi03.jpg" class="d-block w-100" alt="서브비주얼1">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <nav aria-label="breadcrumb container-fluid" style="padding-top:28px;border-bottom:2px solid #666;">
            <div class="container">
                <ol class="breadcrumb justify-content-end">
                    <li class="breadcrumb-item"><a href="${path }">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Notice</a></li>
                    <li class="breadcrumb-item active" aria-current="page">NoticeList</li>
                </ol>
            </div>
        </nav>
        <h2 class="title">공지사항 목록</h2>
        <div class="container">
            <table class="table table-secondary" id="tb1">
                <thead>
                <tr>
                    <th class="item1">연번</th>
                    <th class="item2">제목</th>
                    <th class="item3">작성일</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="noti" items="${noticeList }" varStatus="status">
                <tr class="table-secondary">
                    <td class="item1">${status.count }</td>
                    <td class="item2">
                        <a href="${path }/notice.do?no=${noti.no }">${noti.title }</a>
                    </td>
                    <td class="item3">
                        <!-- 2023-08-17 13:21:47.199719 -->
                        ${noti.resdate }
                        <%--<fmt:parseDate value="${noti.resdate }" var="dateFmt" pattern="YYYY-MM-DD HH24:MI:SS.KS"/>
                        <fmt:formatDate value="${dateFmt}" dateStyle="yyyy-MM-dd" />--%>
                    </td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
            <nav aria-label="Page navigation example" id="page-nation1">
                <ul class="pagination">
                    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                </ul>
            </nav>
        </div>
    </div>
    <%@ include file="/footer.jsp"%>
</div>
</body>
</html>