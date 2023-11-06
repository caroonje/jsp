<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-24
  Time: 오후 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>page 지시어 - errorPage, isErrorPage 속성</title>

  <link rel="stylesheet" href="/resources/css/bootstrap.css">
  <script src="/resources/js/bootstrap.bundle.js"></script>

</head>
<body>
<div class="container">
  <%
    int myAge = Integer.parseInt(request.getParameter("age")) + 10;
    out.println("10년 후 당신의 나이는 " + myAge + "입니다.");
  %>
</div>
</body>
</html>
