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

<%@ page import="java.util.List" %>

<%
    List<BoardDto> boardList;

    BoardDao dao = new BoardDao(application);
    dao.dbOpen();
    boardList = dao.selectList();
    dao.dbClose();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MVC1 게시판 - 목록 페이지</title>

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
<h1>목록 페이지</h1>
<header>

</header>

<main class="container mt-5">
    <section>
        <div class="row my-3">
            <div class="col-sm">
                <table class="table table-hover table-striped text-center">
                    <colgroup>
                        <col style="width: 5%;">
                        <col style="width: 55%;">
                        <col style="width: 10%;">
                        <col style="width: 5%;">
                        <col style="width: 15%;">
                    </colgroup>
                    <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>조회수</th>
                        <th>작성일</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        for (BoardDto board : boardList) {
                    %>

                    <tr>
                        <td><%=board.getNum()%></td>
                        <td class="text-start"><a href="View.jsp?num=<%=board.getNum()%>" class="text-decoration-none"><%=board.getTitle()%></a></td>
                        <td><%=board.getId()%></td>
                        <td><%=board.getVisitcount()%></td>
                        <td><%=board.getPostdate()%></td>
                    </tr>
                    <%
                        }
                    %>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row my-3">
            <div class="col-sm">
                <div class="d-flex justify-content-end">
                    <a href="Write.jsp" class="btn btn-primary">글쓰기</a>
                </div>
            </div>
        </div>
    </section>
</main>

<footer>

</footer>


</body>
</html>
