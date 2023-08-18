<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <%@ include file="/common.jsp"%>
    <c:set var="path" value="<%=request.getContextPath() %>" />
</head>
<body>
<div class="container">
    <%@ include file="../header.jsp"%>
    <div class="contents" style="min-height:100vh;">
            <nav aria-label="breadcrumb container-fluid" style="padding-top:28px;border-bottom:2px solid #666;">
                <div class="container">
                <ol class="breadcrumb justify-content-end">
                    <li class="breadcrumb-item"><a href="${path }">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Custom</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Login</li>
                </ol>
                </div>
            </nav>
        <h2 class="title">로그인</h2>
        <div class="container">
            <h2>${msg }</h2>
            <form action="${path }/loginPro.do" method="post">
                <table class="table">
                    <tbody>
                    <tr>
                        <td><input type="text" name="id" id="id" class="form-control" placeholder="아이디를 입력하세요."></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="pw" id="pw" class="form-control" placeholder="비밀번호를 입력하세요."></td>
                    </tr>
                    <tr>
                        <td>
                            <div class="btn-group">
                                <input type="submit" value="로그인" class="btn btn-primary">
                                <a href="" class="btn btn-secondary">회원가입</a>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
    <%@ include file="../footer.jsp"%>
</div>
</body>
</html>