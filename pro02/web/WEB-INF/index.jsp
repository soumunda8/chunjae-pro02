<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인페이지</title>
    <c:set var="path" value="<%=request.getContextPath() %>" />
    <%@ include file="/common.jsp"%>
</head>
<body>
<div class="fluid-container">
    <%@ include file="/header.jsp" %>
    <div class="contents">
        <h2>사용자 : ${user }</h2>
        <h2>메인 절대 주소 : ${realPath }</h2>
        <h2>메인 상대 주소 : ${path }</h2>
        <hr>
        <table class="table">
            <tbody>
            <tr>
                <td> <img src="./img/monstaX.jpeg" alt="몬스타엑스" width="400"></td>
                <td><img src="./images/monstaX.jpeg" alt="몬스타엑스" width="400"></td>
            </tr>
            </tbody>
        </table>
        <div class="btn-group">
            <a href="" class="btn btn-primary">서브1</a>
            <a href="" class="btn btn-primary">서브2</a>
        </div>
    </div>
    <%@ include file="/footer.jsp"%>
</div>
</body>
</html>