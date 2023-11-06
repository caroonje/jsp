<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-24
  Time: 오후 12:35
  To change this template use File | Settings | File Templates.
--%>

<%-- 에러 가능성이 있는 소스코드가 있는 파일의 page 디렉티브 태그에 errorPage 속성을 지정함 --%>
<%-- 에러 발생 시 이동할 페이지 명을 입력 --%>
<%-- 주소창의 주소는 변경되지 않고 지정한 errorPage 속성에 지정한 페이지로 이동하여 예외처리를 진행함 --%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" errorPage="isErrorPage.jsp" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Title</title>

  <link rel="stylesheet" href="../resources/css/bootstrap.css">
  <script src="../resources/js/bootstrap.bundle.js"></script>

</head>
<body>
<div class="container">
  <%
    // 에러가 발생할 가능성이 있는 소스코드
    int myAge = Integer.parseInt(request.getParameter("age")) + 10;
    out.println("10년 후 당신의 나이는 " + myAge + "입니다.");
  %>
</div>
</body>
</html>










