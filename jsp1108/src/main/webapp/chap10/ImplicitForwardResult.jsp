<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-08-008
  Time: 오전 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
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
<div class="container mt-5">
    <h2>ImplicitForwardResult.jsp</h2>
    <h3>각 영역에 저장된 속성 읽기 - 기존 jsp 방식</h3>
    <ul>
        <li>페이지 영역 : <%=pageContext.getAttribute("scopeValue")%></li>
        <li>리퀘스트 영역 : <%=request.getAttribute("scopeValue")%></li>
        <li>세션 영역 : <%=session.getAttribute("scopeValue")%></li>
        <li>애플리케이션 영역 : <%=application.getAttribute("scopeValue")%></li>
    </ul>

    <br>
    <hr>
    <br>
    <h3>각 영역에 저장된 속성 읽기 - EL 언어 방식 </h3>
    <ul>
        <li>페이지 영역 : ${pageScope.scopeValue}</li>
        <li>리퀘스트 영역 :${requestScope["scopeValue"]}</li>
        <li>세션 영역 : ${sessionScope['scopeValue']}</li>
        <li>애플리케이션 영역 :${applicationScope.scopeValue}</li>
    </ul>
    <br>
    <hr>
    <br>
    <h3>영역 지정 없이 속성 읽기</h3>
    <ul>
<%--       forward된 페이지에서 영역지정 없이 속성명으로 데이터 출력시 request영역의 데이터를 출력--%>
        <li>페이지 영역 : ${scopeValue}</li>
<%--    표현식 사용시 반드시 영역 지정이 필요함--%>
<%--        <li>페이지 영역 : <%=scopeValue%></li>--%>
    </ul>
</div>
</body>
</html>
