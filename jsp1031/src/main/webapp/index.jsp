<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>

  <meta charset="UTF-8">
  <title>JSP - Hello World</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
          crossorigin="anonymous"></script>
</head>
<body>

<div class="container mt-5">
  <h2>데이터 베이스 사용하기</h2>
  <ul class="my-3">
    <li><a href="connectionTest1.jsp" target="_blank" class="btn btn-link">jdbc 사용법 1 (jsp파일 사용)</a> </li>
    <li><a href="connectionTest2.jsp" target="_blank" class="btn btn-link">jdbc 사용법 2 (class 사용)</a> </li>
    <li><a href="connectionTest3.jsp" target="_blank" class="btn btn-link">jdbc 사용법 3 (web.xml 사용)</a> </li>
  </ul>
</div>
</body>
</html>