<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-25
  Time: 오전 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>내장 객체 - response</title>

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
  <h2>1. 로그인 폼</h2>
  <%
//      클라이언트에서 전달된 정보 가져오기
    String loginErr = request.getParameter("loginErr");
    if (loginErr != null) {
      out.print("<p class='text-danger'>로그인 실패</p>");
    }
  %>

<%--  ResponseLogin.jsp 페이지로 데이터 전달, 데이터 전달 방식은 post 방식 사용 --%>
  <form action="./ResponseLogin.jsp" method="post">
    <div class="my-3">
      <label for="user-id" class="form-label">아이디 : </label>
      <input type="text" class="form-control" id="user-id" name="userId" placeholder="아이디를 입력하세요">
    </div>
    <div class="my-3">
      <label for="user-pw" class="form-label">비밀번호 : </label>
      <input type="password" class="form-control" id="user-pw" name="userPw" placeholder="비밀번호를 입력하세요">
    </div>
    <div class="my-3 d-flex justify-content-end">
<%--      type이 submit인 버튼의 클릭 이벤트 발생 시 form 태그에 설정한 서버 주소로 데이터 전송 --%>
      <button type="submit" class="btn btn-primary">로그인</button>
    </div>
  </form>

  <br><hr><br>

  <h2>2. HTTP 응답 헤더 설정하기</h2>
<%--  form 태그의 submit 이벤트 동작 시 데이터를 전달할 서버 주소 설정, 데이터 전달 방식은 get --%>
  <form action="./ResponseHeader.jsp" method="get">
    <div class="my-3">
      <label for="add-date" class="form-label">날짜 형식 : </label>
      <input type="text" class="form-control" id="add-date" name="addDate" placeholder="2023-10-25 10:40">
    </div>
    <div class="my-3">
      <label for="add-int" class="form-label">숫자 형식 : </label>
      <input type="text" class="form-control" id="add-int" name="addInt" placeholder="8282">
    </div>
    <div class="my-3">
      <label for="add-str" class="form-label">문자 형식 : </label>
      <input type="text" class="form-control" id="add-str" name="addStr" placeholder="홍길동">
    </div>
    <div class="my-3 d-flex justify-content-end">
      <button type="submit" class="btn btn-primary">응답 헤더 설정 & 출력</button>
    </div>
  </form>
</div>
</body>
</html>









