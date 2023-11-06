<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-25
  Time: 오전 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Enumeration" %>

<!DOCTYPE html>
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
<div class="mt-5 container">
  <h2>3. 요청 헤더 정보 출력하기</h2>
  <%
//    Enumeration : Iterator와 비슷한 기능을 하는 반복자
    Enumeration<String> headers = request.getHeaderNames();

//    hasMoreElements() : 출력할 객체가 있는지 확인
    while (headers.hasMoreElements()) {
//      nextElement() : 실제 데이터 가져오기
      String headerName = headers.nextElement();
      String headerValue = request.getHeader(headerName);
      out.print("<ul>");
      out.print("<li>헤더명 : " + headerName + ", 헤더값 : " + headerValue + "</li>");
      out.print("</ul>");
    }
  %>

  <p>이 파일을 직접 실행하면 referer 정보는 출력되지 않습니다.</p>
</div>
</body>
</html>









