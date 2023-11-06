<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-24
  Time: 오후 3:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
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
<div class="container">
  <h2>1. 클라이언트와 서버의 환경 정보 읽기</h2>
  <a href="./RequestWebInfo.jsp?eng=Hello&han=안녕" class="btn btn-link">GET 방식 전송</a>
  <br>

  <form action="./RequestWebInfo.jsp" method="post">
    <div class="my-3">
      <label for="eng" class="form-label">영어 : </label>
      <input type="text" class="form-control" id="eng" name="eng" value="Bye" />
    </div>
    <div class="my-3">
      <label for="han" class="form-label">한글 : </label>
      <input type="text" class="form-control" id="han" name="han" value="잘 가" />
    </div>
  </form>

  <br/><hr/><br/>

  <h2>2. 클라이언트의 요청 매개변수 읽기</h2>
  <form action="RequestParameter.jsp" method="post">
    <div class="my-3">
      <label for="id" class="form-label">아이디 : </label>
      <input type="text" class="form-control" id="id" name="id" value="" />
    </div>
    <div class="my-3">
      <label class="form-label">성별 : </label>
      <div class="form-check">
        <input type="radio" class="form-check-input" id="gender-man" name="gender" value="man">
        <label for="gender-man" class="form-check-label">남자</label>
      </div>
      <div class="form-check">
        <input type="radio" class="form-check-input" id="gender-woman" name="gender" value="woman" checked>
        <label for="gender-woman" class="form-check-label">여자</label>
      </div>
    </div>
    <div class="my-3">
      <label class="form-label">관심사항 : </label>
      <div class="form-check">
        <input type="checkbox" class="form-check-input" id="favo-eco" name="favo" value="eco">
        <label for="favo-eco" class="form-check-label">경제</label>
      </div>
      <div class="form-check">
        <input type="checkbox" class="form-check-input" id="favo-pol" name="favo" value="pol" checked>
        <label for="favo-pol" class="form-check-label">정치</label>
      </div>
      <div class="form-check">
        <input type="checkbox" class="form-check-input" id="favo-ent" name="favo" value="ent">
        <label for="favo-ent" class="form-check-label">연예</label>
      </div>
    </div>
    <div class="my-3">
      <label for="intro" class="form-label">자기소개 : </label>
      <textarea class="form-control" id="intro" name="intro" rows="5"></textarea>
    </div>
    <div class="my-3">
      <div class="d-flex justify-content-end">
        <button type="submit" class="btn btn-primary">전송하기</button>
      </div>
    </div>
  </form>

  <br><hr><br>

  <h2>3. HTTP 요청 헤더 정보 읽기</h2>
  <a href="./RequestHeader.jsp" class="btn btn-link">요청 헤더 정보 읽기</a>
</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>









