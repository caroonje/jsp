<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-27-027
  Time: 오후 2:57
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
<div class="container mt-5">
    <h2 class="text-center">Statement로 데이터 삭제하기</h2>
    <div class="col-sm-4 mx-auto">
        <form action="DeleteProcess01.jsp" method="post">
            <div class="my-3">
                <label for="user-id" class="form-label">아이디 : </label>
                <input type="text" class="form-control" id="user-id" name="userId" placeholder="삭제할 사용자의 아이디를 입력하세요">
            </div>
            <div class="my-3">
                <label for="user-pw" class="form-label">비밀번호 : </label>
                <input type="password" class="form-control" id="user-pw" name="userPw" placeholder="삭제할 사용자의 비밀번호를 입력하세요">
            </div>
            <div class="my-3 d-grid gap-2">
                <button type="submit" class="btn btn-primary">삭제</button>
                <button type="reset" class="btn btn-secondary">취소</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
