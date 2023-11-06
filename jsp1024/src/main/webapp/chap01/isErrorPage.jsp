<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-24
  Time: 오후 12:39
  To change this template use File | Settings | File Templates.
--%>

<%-- isErrorPage 속성값을 true로 설정 시 예외에 대한 정보가 담겨있는 exception 내장 객체를 사용할 수 있음 --%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Title</title>

  <link rel="stylesheet" href="../resources/css/bootstrap.css">
  <script src="../resources/js/bootstrap.bundle.js"></script>
</head>
<body>
<div class="container">
  <h2>서비스 중 일시적인 오류가 발생했습니다.</h2>
  <p>
    오류명 : <%= exception.getClass().getName() %><br>
    오류 메시지 : <%= exception.getMessage() %>
  </p>
</div>
</body>
</html>
