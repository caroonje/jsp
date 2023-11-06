<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-25
  Time: 오후 2:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>내장 객체 - exception</title>

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
<div class="container mt-5">
  <%
    int status = response.getStatus(); // response 내장 객체를 사용하여 에러 코드 확인
    System.out.println(status);

    if (status == 404) {
      out.print("404 에러가 발생했습니다.");
      out.print("<br>파일 경로를 확인해주세요");
    }
    else if (status == 405) {
      out.print("405 에러가 발생했습니다.");
      out.print("<br>요청 방식을 확인해 주세요");
    }
    else if (status == 500) {
      out.print("500 에러가 발생했습니다.");
      out.print("<br>소스 코드에 오류가 없는지 확인해주세요");
    }
  %>
</div>
</body>
</html>









