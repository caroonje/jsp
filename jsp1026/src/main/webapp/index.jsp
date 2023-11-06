<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.bitc.jsp1026.Person" %>


<!DOCTYPE html>

<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>JSP - Hello World</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
<h1><%= "Hello World!" %></h1>
<br/>
<div>
  <h3>내장 객체 영역</h3>
  <ul>
    <li><a href="chap03/RequestMain.jsp" target="_blank">RequestMain.jsp</a></li>
    <li><a href="chap03/SessionMain.jsp" target="_blank">SessionMain.jsp</a></li>
    <li><a href="chap03/ApplicationMain.jsp" target="_blank">ApplicationMain.jsp</a></li>

  </ul>

  <br>  <hr>  <br>
  <h3>Cookie</h3>
  <ul>
    <li><a href="chap04/CookieMain.jsp" target="_blank">CookieMain.jsp</a></li>
    <li><a href="chap04/PopupMain.jsp" target="_blank">PopupMain.jsp</a></li>
    <li><a href="chap04/PopupMain2.jsp" target="_blank">PopupMain2.jsp</a></li>
  </ul>
</div>
</body>
</html>
