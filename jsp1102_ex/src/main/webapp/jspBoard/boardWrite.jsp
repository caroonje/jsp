
<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-02
  Time: 오전 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>JSP 게시판 글 쓰기 페이지</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
          crossorigin="anonymous"></script>

  <style>

  </style>
  <script>
    $(document).ready(function () {
      //  User: lecture-bisper
      //  Date: 2023-11-02
      //  Time: 15:58
      //  설명 : 취소 버튼 클릭 시 뒤로 가기
      //  매개변수 : 없음
      //  반환 타입 : 없음
      $("#btn-cancel").on("click", function () {
        // 자바스크립트의 DOM 객체를 사용한 이전 페이지로 이동
        history.back();
      });
    });
  </script>

</head>
<body>

<nav class="navbar navbar-expend-sm navbar-dark bg-dark">
  <div class="container-fluid">
    <div>
      <a href="#" class="navbar-brand">FullStack 501</a>
    </div>
    <div class="ms-auto">
      <span class="navbar-text me-3">로그인이 필요합니다</span>
      <a href="#" class="btn btn-success">로그인</a>
    </div>
  </div>
</nav>

<header>
  <div class="mt-5 p-5">
    <h1 class="text-center display-3">JSP 게시판 글쓰기 화면</h1>
  </div>
</header>

<main>
  <div class="container mt-5">
    <div class="row">
      <div class="col-sm-4 mx-auto">
        <form action="./insertBoard.jsp" method="post">
<%--          글 제목--%>
          <div class="my-3">
            <label for="title" class="form-label">제목 : </label>
            <input type="text" class="form-control" id="title" name="title" placeholder="글 제목을 입력해주세요">
          </div>
<%--          사용자 ID--%>
          <div class="my-3">
            <label for="id" class="form-label">사용자 ID : </label>
            <input type="text" class="form-control" id="id" name="id" placeholder="사용자 ID를 입력해주세요">
          </div>
<%--          글 비밀번호--%>
          <div class="my-3">
            <label for="pass" class="form-label">비밀번호 : </label>
            <input type="text" class="form-control" id="pass" name="pass" placeholder="글 비밀번호를 입력해주세요">
          </div>
<%--          글 내용--%>
          <div class="my-3">
            <label for="content" class="form-label">내용 : </label>
            <textarea class="form-control" id="content" name="content" rows="5" placeholder="글 내용을 입력해주세요"></textarea>
          </div>
<%--          버튼--%>
          <div class="my-3 clear-fix">
            <button type="submit" class="btn btn-primary float-start">글쓰기</button>
            <button type="reset" class="btn btn-secondary float-end" id="btn-cancel">취소</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</main>

<footer class="p-sm-5 mt-5 border-top ">
  <p class="lead text-muted text-center">made by fullstack501</p>
</footer>

</body>
</html>









