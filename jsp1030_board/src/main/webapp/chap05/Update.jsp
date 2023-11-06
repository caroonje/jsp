<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-30-030
  Time: 오후 2:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
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
<%
    request.setCharacterEncoding("UTF-8");
    String searchNum = request.getParameter("searchNum");


%>

<%@ include file="dbconn.jsp" %>

<div class="container mt-5">
    <div class="row">
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th>게시글번호</th>
                <th>제목</th>
                <th>내용</th>
                <th>작성자</th>
                <th>작성날짜</th>
                <th>조회수</th>
            </tr>
            </thead>
            <tbody>
            <%
                PreparedStatement pstmt = null;
                ResultSet result = null;
                try {
                    String sql = "SELECT * FROM board WHERE num = ?";
                    pstmt = conn.prepareStatement(sql);
                    pstmt.setString(1,searchNum);
                    result = pstmt.executeQuery();
                    while (result.next()) {
                        int num = result.getInt("num");
                        String title = result.getString("title");
                        String content = result.getString("content");
                        String id = result.getString("id");
                        String postdate = result.getString("postdate");
                        String visitcount = result.getString("visitcount");
            %>
            <tr>
                <td><%=num%></td>
                <td><%=title%></td>
                <td><%=content%></td>
                <td><%=id%></td>
                <td><%=postdate%></td>
                <td><%=visitcount%></td>
            </tr>
            <%
                    }
                } catch (SQLException e) {
                    out.print("데이터 베이스 사용중 오류가 발생했습니다. <br>");
                    out.print("SQLException : " + e.getMessage());
                } finally {
//                            리로스 해제,리소스 해제는 ResultSet,PreparedStatement,Connection 순서로 진행
                    try {
                        if (result != null) {
                            result.close();
                        }
                        if (pstmt != null) {
                            pstmt.close();
                        }
                        if (conn != null) {
                            conn.close();
                        }
                    } catch (Exception e) {

                    }
                }
            %>
            </tbody>
        </table>
        <div class="col-4 mx-auto">
            <form action="UpdateProcess.jsp" method="post">
                <div class="my-3">
                    <label for="num" class="form-label">게시글 번호</label>
                    <input type="text" class="form-control" id="num" name="searchNum" placeholder=<%=searchNum%>>
                </div>

                <div class="my-3">
                    <label for="title" class="form-label">TITLE </label>
                    <input type="text" class="form-control" id="title" name="Title" placeholder="수정할 제목을 입력하세요">
                </div>
                <div class="my-3">
                    <label for="content" class="form-label">내용 </label>
                    <textarea type="text" class="form-control" id="content" name="CONTENT" placeholder="수정할 내용을 입력하세요"></textarea>
                </div>

                <div class="my-3 d-grid gap-2">
                    <button type="submit" class="btn btn-primary">수정</button>
                    <button type="reset" class="btn btn-secondary">취소</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
