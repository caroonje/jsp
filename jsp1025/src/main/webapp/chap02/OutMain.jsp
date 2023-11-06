<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-25
  Time: 오후 12:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
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
<div class="container mt-5">
  <%
    // 버퍼 내용 삭제하기
    out.print("출력되지 않는 텍스트"); // 버퍼에 내용 저장
    out.clearBuffer(); // 버퍼에 저장되어 있는 내용 삭제, 화면에 출력되기 전에 버퍼 내용을 삭제하여 화면에 미출력

    out.print("<h2>out 내장 객체</h2>"); // 버퍼에 내용 저장

//    버퍼 크기 확인
    out.print("출력 버퍼의 크기 : " + out.getBufferSize() + "<br>"); // 버퍼의 총 크기 확인
    out.print("남은 버퍼의 크기 : " + out.getRemaining() + "<br>"); // 남은 버퍼 크기 확인

    out.flush(); // 버퍼에 저장된 내용 화면에 출력, 버퍼에 저장된 내용 삭제
    out.print("flush 후 버퍼의 크기 : " + out.getRemaining() + "<br>"); // 출력 후 버퍼의 남은 크기 확인

    out.print(1);
    out.print(false);
    out.print('가');
  %>
</div>
</body>
</html>









