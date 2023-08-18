<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 상세보기</title>
    <%@ include file="../../common.jsp"%>
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
    <%@ include file="../../header.jsp"%>
    <div class="contents" style="min-height:100vh;">
        <nav aria-label="breadcrumb container-fluid" style="padding-top:28px;border-bottom:2px solid #666;">
            <div class="container">
                <ol class="breadcrumb justify-content-end">
                    <li class="breadcrumb-item"><a href="${path }">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Notice</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Detail</li>
                </ol>
            </div>
        </nav>
        <h2 class="title">공지사항 상세보기</h2>
        <div class="container">
            <table class="table table-secondary" id="tb1">
                <tbody>
                <tr>
                    <th>글번호</th>
                    <td>${notice.no }</td>
                </tr>
                <tr>
                    <th>제목</th>
                    <td>${notice.title }</td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td>${notice.content }</td>
                </tr>
                <tr>
                    <th>작성일</th>
                    <td>${notice.resdate }</td>
                </tr>
                <tr>
                    <th>조회수</th>
                    <td>${notice.visited }</td>
                </tr>
                </tbody>
            </table>
            <div class="btn-group">
                <a href="${path }/noticeList.do" class="btn btn-primary">글목록</a>
            </div>
        </div>
    </div>
    <%@ include file="../../footer.jsp"%>
</div>
</body>
</html>