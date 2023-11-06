<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-24
  Time: 오후 2:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Title</title>

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
<%-- include 사용 시 외부 파일을 현재 파일에 포함시킬 수 있음 --%>
<%-- include 사용 시 현재 파일에 외부 파일의 내용을 복사해 놓는다고 생각하면 됨 --%>
<%@ include file="includeFile.jsp" %>

<div class="container">
  <%
    // include를 통해서 includeFile.jsp에 선언한 변수를 가져올 수 있음
    out.println("오늘 날씨 : " + today);
    out.println("<br />");
    out.println("내일 날씨 : " + tomorrow);
  %>
</div>
</body>
</html>









