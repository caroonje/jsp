<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-02
  Time: 오전 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.bitc.jsp1102.database.JSPBoardDao" %>
<%@ page import="com.bitc.jsp1102.database.JSPBoardDto" %>

<%--1. 목록페이지에서 전달받은 파라미터값 가져오기(글번호)--%>
<%--DAO를 사용하여 DB연결--%>
<%--DAO를 사용하여 글번호에 맞는 데이터 조회하기--%>
<%--DTO를 사용하여 데이터 받아오기--%>
<%--화면에 DTO에 담긴 내용 출력하기--%>

<%
    request.setCharacterEncoding("UTF-8");

    int idx = Integer.parseInt(request.getParameter("idx"));

    JSPBoardDto board;
    JSPBoardDao dao = new JSPBoardDao(application);
    dao.dbOpen();
    dao.updateBoardCount(idx);
//   글번호로  데이터 조회하기
    board = dao.selectBoardDetail(idx);
    dao.dbClose();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>JSP 게시판 글 상세 페이지</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous">

    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <style>

    </style>
    <script>
        $(document).ready(function (){
            // 목록 버튼 뒤로 돌아가기
            $("#btn-list").on("click",function (){
                history.back();
            });

        //     수정 버튼 클릭시
            $("#btn-update").on("click",function (){
                //  id 속성값이 frm인 html 태그(from)를 선택하여 자바스크립트 변수 frm에 대입
                const frm = $("#frm")[0];
                // form 가 가지고 있는 action 속성에 값을 변경
                frm.action = "./updateBoard.jsp"
                // form 태그의 submit() 이벤트 발생
                frm.submit();
            });
        //     삭제 버튼 클릭시
            $("#btn-delete").on("click",function (){
                const frm = $("#frm")[0];
                frm.action = "./deleteBoard.jsp"
                frm.submit();
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
        <h1 class="text-center display-3">JSP 게시판 상세 글 화면</h1>
    </div>
</header>

<main>
    <div class="container mt-5">
        <div class="row">
            <div class="col-sm-4 mx-auto">
                <form id="frm" method="post">
                    <%--          글 번호--%>
                    <div class="my-3">
                        <label for="idx" class="form-label">글 번호 : </label>
                        <input type="text" class="form-control" id="idx" name="idx"
                               value="<%=board.getBoard_idx()%>" readonly>
                    </div>
                    <%--          글 제목--%>
                    <div class="my-3">
                        <label for="title" class="form-label">글 제목 : </label>
                        <input type="text" class="form-control" id="title" name="title"
                               value="<%=board.getBoard_title()%>">
                    </div>
                    <%--          글 쓴이--%>
                    <div class="my-3">
                        <label for="id" class="form-label">글 쓴이 : </label>
                        <input type="text" class="form-control" id="id" name="id"
                               value="<%=board.getBoard_member_id()%>"readonly>
                    </div>
                    <%--          글 등록날짜--%>
                    <div class="my-3">
                        <label for="regdate" class="form-label">등록 날짜 : </label>
                        <input type="text" class="form-control" id="regdate" name="regdate"
                                value="<%=board.getBoard_regdate()%>" readonly>
                    </div>
                    <%--          조회 수--%>
                    <div class=" my-3">
                        <label for="cnt" class="form-label">조회 수 : </label>
                        <input type="text" class="form-control" id="cnt" name="cnt"
                               value="<%=board.getBoard_cnt()%>" readonly>
                    </div>
                    <%--          글 내용--%>
                    <div class=" my-3">
                        <label for="content" class="form-label">내용 : </label>
                        <textarea class="form-control" id="content" name="content" rows="5"><%=board.getBoard_content()%> </textarea>
                    </div>
                    <%--          버튼--%>
                    <div class="my-3">
                        <div class="row">
                            <div class="col-sm">
                                <button type="button" class="btn btn-secondary" id="btn-list">목록</button>
                            </div>
                            <div class="col-sm d-flex justify-content-end">
                                <button type="button" class="btn btn-warning me-2" id="btn-update">수정</button>
                                <button type="button" class="btn btn-danger" id="btn-delete">삭제</button>
                            </div>
                        </div>
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









