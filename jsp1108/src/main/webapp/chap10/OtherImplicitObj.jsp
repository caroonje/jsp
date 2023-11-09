<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-08-008
  Time: 오후 2:41
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
<%
    Cookie cookie = new Cookie("ELCookie","EL좋아요");
    cookie.setPath("/");
    cookie.setMaxAge(10);
    response.addCookie(cookie);
    %>
<div class="container mt-5">
    <h2>쿠키값 읽기</h2>
    <ul>
        <li>ELCookie 값 : ${cookie.ELCookie.value}</li>
    </ul>

<br><hr><br>
    <h2>HTTP 헤더 읽기</h2>

    <ul>
        <li>host : ${header.host}</li>
        <li>user-agent : ${header["user-agent"]}</li>
        <li>cookie : ${header.cookie}</li>
    </ul>
    <br><hr>    <br>
    <h2>컨텍스트 초기화 매개변수</h2>
    <ul>
        <li>MySqlDriver : ${initParam.MySqlDriver}</li>
    </ul>
    <br><hr>    <br>
    <h2>컨텍스트 루트 경로 읽기</h2>
    <ul>
    <li>${pageContext.request.contextPath}</li>
    </ul>
</div>
</body>
</html>
