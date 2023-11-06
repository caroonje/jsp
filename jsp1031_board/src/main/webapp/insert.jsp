<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-31-031
  Time: 오전 10:43
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
<%--글 입력 화면--%>
<%--title,content,id,postdate--%>
<div class="container mt-5">
    <h2 class="text-center">board에 글 등록하기</h2>
    <div class="row">
        <div class="col-sm-4 mx-auto">
            <form action="insertProcess.jsp" method="post">
            <div class="my-3">
                <label for="title" class="form-label">글 제목 : </label>
                <input type="text" class="form-control" id="title" name="title" placeholder="글 제목을 입력하세요">
            </div>
            <div class="my-3">
                <label for="user-id" class="form-label">글 쓴이 : </label>
                <input type="text" class="form-control" id="user-id" name="userId" placeholder="글을 등록할 사용자의 아이디를 입력하세요">
            </div>
            <div class="my-3">
                <label for="content" class="form-label">글 내용 : </label>
                <textarea class="form-control" id="content" name="content" rows="5"></textarea>
            </div>
            <div class="my-3 d-flex justify-content-end">
                <button type="submit" class="btn btn-primary me-2">등록</button>
                <button type="reset" class="btn btn-secondary">취소</button>

            </div>
            </form>
        </div>

    </div>
</div>

</body>
</html>
