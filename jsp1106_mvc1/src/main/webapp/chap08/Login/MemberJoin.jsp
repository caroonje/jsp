<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-08-008
  Time: 오전 9:13
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>

    <style>

    </style>
    <script>
$(document).ready(function (){
    $("#btn-cancel").on("click",function (){
        history.back();
    })
})
    </script>

</head>
<body>
<%@ include file="../layout/Menu.jsp"%>
<%@ include file="../layout/Header.jsp"%>

<main class="container mt-5">
    <section>
        <div class="row">
            <div class="col-sm-4 mx-auto">
                <form action="./MemberJoinProcess.jsp" method="post">
                    <div class="form-floating my-3">
                        <input type="text" class="form-control" id="id" name="id" placeholder="ID를 입력하세요">
                        <label for="id">User ID</label>
                    </div>
                    <div class="form-floating my-3">
                        <input type="password" class="form-control" id="pwd" name="pwd" placeholder="비밀번호를 입력하세요">
                        <label for="pwd">User Password</label>
                    </div>
                    <div class="form-floating my-3">
                        <input type="text" class="form-control" id="name" name="name" placeholder="사용자 이름를 입력하세요">
                        <label for="name">User Name</label>
                    </div>
                    <div class="my-3 d-grid gap-2">
                        <button type="submit" class="btn btn-primary">회원 가입</button>
                        <button type="reset" class="btn btn-secondary" id="btn-cancel">취소</button>
                    </div>
                </form>
            </div>
        </div>
    </section>
</main>

<%@ include file="../layout/Footer.jsp"%>
</body>
</html>
