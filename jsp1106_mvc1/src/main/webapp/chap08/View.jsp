<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-06-006
  Time: 오전 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.bitc.jsp1106_mvc1.database.BoardDto" %>
<%@ page import="com.bitc.jsp1106_mvc1.database.BoardDao" %>

<%
    request.setCharacterEncoding("UTF-8");

    int num = Integer.parseInt(request.getParameter("num"));

    BoardDao dao = new BoardDao(application);
    dao.dbOpen();
    BoardDto board = dao.selectView(num);
    dao.dbClose();

%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MVC1 게시판 - 상세 페이지</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>

    <style>
    .caption1 {
        width:14%;
    }
    .caption2 {
        width:7%;
    }
    </style>
    <script>
        $(document).ready(function (){
            $("#btn-edit").on("click",function (){
                const num = $("#num").val();
                location.href = "./Edit.jsp?num=" + num;
            });
            $("#btn-delete").on("click",function (){
                const confirmed = confirm("리얼로 삭제??")
                if (confirmed == true){
                    const frm = $("#frm")[0];
                    frm.action = "./DeleteProcess.jsp"
                    frm.submit();
                }
            });
            $("#btn-list").on("click",function (){
                location.href = "./List.jsp";
            });
        });
    </script>

</head>
<body>
<header></header>
<main class="container mt-5">
    <section>
        <form id="frm" action="" method="post">
        <div class="row my-3">
            <div class="col-sm">
                <div class="input-group">
                    <span class="input-group-text caption1">번호</span>
                    <input type="text" class="form-control" id="num" name="num" readonly value="<%=board.getNum()%>">
                </div>
            </div>
            <div class="col-sm">
                <div class="input-group">
                    <span class="input-group-text caption1" >작성자</span>
                    <input type="text" class="form-control" name="id" readonly value="<%=board.getId()%>">
                </div>
            </div>
        </div>
        <div class="row my-3">
            <div class="col-sm">
                <div class="input-group">
                    <span class="input-group-text caption1">작성일</span>
                    <input type="text" class="form-control" readonly value="<%=board.getPostdate()%>">
                </div>
            </div>
            <div class="col-sm">
                <div class="input-group">
                    <span class="input-group-text caption1">조회수</span>
                    <input type="text" class="form-control" readonly value="<%=board.getVisitcount()%>">
                </div>
            </div>
        </div>
        <div class="row my-3">
            <div class="col-sm">
                <div class="input-group">
                    <span class="input-group-text caption2">제목</span>
                    <input type="text" class="form-control" readonly value="<%=board.getTitle()%>">
                </div>
            </div>
        </div>
        <div class="row my-3">
            <div class="col-sm">
                <div class="input-group">
                    <span class="input-group-text caption2 ">내용</span>
                    <textarea class="form-control" rows="10" readonly ><%=board.getContent()%></textarea>
                </div>
            </div>
        </div>
        <div class="row my-3">
            <div class="col-sm d-flex justify-content-center">
                <button type="button" class="btn btn-warning" id="btn-edit">수정하기</button>
                <button type="submit" class="btn btn-danger mx-2" id="btn-delete" >삭제하기</button>
                <button type="button" class="btn btn-secondary" id="btn-list">목록보기</button>
            </div>
        </div>
        </form>
    </section>
</main>
<footer>

</footer>
</body>
</html>

