<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-24
  Time: 오후 4:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>내장 객체 - request</title>

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

<div class="container">
  <h2>1. 클라이언트와 서버의 환경정보 읽기</h2>

  <ul class="list-group">
    <li class="list-group-item">데이터 전송 방식 : <%=request.getMethod()%></li>
    <li class="list-group-item">URL : <%=request.getRequestURL()%></li>
    <li class="list-group-item">URI : <%=request.getRequestURI()%></li>
    <li class="list-group-item">프로토콜 : <%=request.getProtocol()%></li>
    <li class="list-group-item">서버명 : <%=request.getServerName()%></li>
    <li class="list-group-item">서버 포트 : <%=request.getServerPort()%></li>
<%--    현재 IPV6 방식의 주소로 출력함 --%>
    <li class="list-group-item">클라이언트 IP 주소 : <%=request.getRemoteAddr()%></li>
<%--    주소를 제외한 옵션값 부분을 모두 출력함, urldecoding이 되어 있지 않음--%>
    <li class="list-group-item">쿼리스트링 : <%=request.getQueryString()%></li>
<%--    getParameter() : 클라이언트에서 서버로 전송한 데이터를 가져오는 메소드, 전송된 데이터를 문자열 타입 --%>
    <li class="list-group-item">전송된 값 1 : <%=request.getParameter("eng")%></li>
    <li class="list-group-item">전송된 값 2 : <%=request.getParameter("han")%></li>
  </ul>
</div>
</body>
</html>









