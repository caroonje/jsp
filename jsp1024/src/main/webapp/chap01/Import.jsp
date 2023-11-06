<%--
  Created by IntelliJ IDEA.
  User:
  Date: 2023-10-24
  Time: 오전 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%-- 기본 자바의 import와 동일한 역할 --%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<html>
<head>
  <meta charset="UTF-8">
  <title>page 지시어 - import 속성</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</head>
<body>
<div class="container">
<%--  스크립틀릿 --%>
<%--  일반 자바 소스 코드를 입력하여 사용 --%>
<%--  스크립틀릿은 주로 body 태그 안에 선언하여 사용함 --%>
<%--  <% %> 을 여러개 사용할 경우 하나의 파일로 연결되어 있음 --%>
  <%
    Date today = new Date();
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
  %>

  <br><hr><br>

  <%
    String todayStr = dateFormat.format(today);
    out.println("오늘 날짜 : " + todayStr);
  %>
</div>
</body>
</html>









