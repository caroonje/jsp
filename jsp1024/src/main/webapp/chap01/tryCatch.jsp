<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-24
  Time: 오후 12:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>

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
    try {
      int myAge = Integer.parseInt(request.getParameter("age")) + 10;
      out.println("10년 후 당신의 나이는 " + myAge + "입니다.");
    }
    catch (Exception e) {
      out.println("예외 발생 : 매개변수 age가 null 입니다.");
    }
  %>
</div>
</body>
</html>
