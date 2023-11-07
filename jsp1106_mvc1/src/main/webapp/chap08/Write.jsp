<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-06-006
  Time: 오전 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%--로그인 체크--%>
<%--<%--%>
<%--    if (session.getAttribute("UserId")==null){--%>
<%--        out.print("<script>");--%>
<%--        out.print("alert('로그인 후 이용해 주세요');");--%>
<%--        out.print("location.href = './LoginForm.jsp'");--%>
<%--        out.print("</script>");--%>
<%--//  로그인 페이지로 이동 response.sendRedirect("./LoginForm.jsp");--%>
<%--    }--%>
<%--%>--%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MVC1 게시판 - 등록 페이지 </title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous">

    </script>

    <style>

    </style>
    <script>
$(document).ready(function (){
    $("#btn-list").on("click",function (){
        location.href = "./List.jsp";
    });
});
    </script>

</head>
<body>
<h1>MVC1 게시판 - 등록 페이지 </h1>
<header></header>
<main class="container mt-5">
<section>
    <div class="row my-3">
        <div class="col-sm">
            <form action="WriteProcess.jsp" method="post">
                <div class="my-3">
                    <label for="title" class="form-label">제목 : </label>
                    <input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력하세요">
                </div>
                <div class="my-3">
                    <label for="content" class="form-label">내용 : </label>
                    <textarea class="form-control" name="content" id="content" rows="5" placeholder="내용을 입력하세요"></textarea>
                </div>
                <div class="my-3 d-flex justify-content-center">
                    <button type="submit" class="btn btn-primary">작성 완료</button>
                    <button type="reset" class="btn btn-secondary mx-2">다시 입력</button>
                    <button type="button" class="btn btn-info" id="btn-list">목록 보기</button>
                </div>
            </form>
        </div>
    </div>
</section>
</main>
<footer></footer>
</body>
</html>
