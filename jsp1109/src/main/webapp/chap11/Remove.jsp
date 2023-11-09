<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-09-009
  Time: 오후 1:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>title </title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>

    <style>

    </style>
    <script>

    </script>

</head>
<body>
<c:set var="scopeVar" value="Page Value" scope="page"/>
<c:set var="scopeVar" value="Request Value" scope="request"/>
<c:set var="scopeVar" value="Session Value" scope="session"/>
<c:set var="scopeVar" value="Application Value" scope="application"/>

<div>
    <h3>JSTL로 선언한 변수 출력 </h3>
    <ul>
        <li>scopeVar : ${ scopeVar }</li>
        <li>requestScope.scopeVar : ${ requestScope.scopeVar }</li>
        <li>sessionScope.scopeVar : ${ sessionScope.scopeVar }</li>
        <li>applicationScope.scopeVar : ${ applicationScope.scopeVar }</li>
    </ul>

    <hr>

    <h3>Session영역에서 삭제하기</h3>
    <c:remove var="scopeVar" scope="session"/>
    <ul>
        <li>scopeVar : ${ scopeVar }</li>
        <li>requestScope.scopeVar : ${ requestScope.scopeVar }</li>
        <li>sessionScope.scopeVar : ${ sessionScope.scopeVar }</li>
        <li>applicationScope.scopeVar : ${ applicationScope.scopeVar }</li>
    </ul>

    <hr>

    <h3>scope 지정없이 삭제하기</h3>

    <c:remove var="scopeVar"/>
    <ul>
        <li>scopeVar : ${ scopeVar }</li>
        <li>requestScope.scopeVar : ${ requestScope.scopeVar }</li>
        <li>sessionScope.scopeVar : ${ sessionScope.scopeVar }</li>
        <li>applicationScope.scopeVar : ${ applicationScope.scopeVar }</li>
    </ul>

</div>

</body>
</html>
