<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-30-030
  Time: 오후 2:58
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
    String searchSelect = request.getParameter("searchSelect");
    String searchText = request.getParameter("searchText");
%>

<%@ include file="dbconn.jsp" %>

<div class="container mt-5">
    <h2 class="text-center"> Prepared Statement 로 데이터 조회하기</h2>
    <div class="row">
        <div class="col-sm-6 mx-auto">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>게시글 번호</th>
                    <th>게시글 제목</th>
                    <th>게시글 내용</th>
                    <th>ID</th>
                    <th>등록 날짜</th>
                </tr>
                </thead>
                <tboby>
                    <%
                        PreparedStatement pstmt = null;
                        ResultSet result = null;

                        try {
                            String sql = "";
                            if (searchText.equals("")) {
                                sql = "SELECT * FROM board";
                                pstmt = conn.prepareStatement(sql);
                            } else {
                                switch (searchSelect) {
                                    case "num":
                                        sql = "SELECT * FROM board WHERE num =? ";
                                        break;
                                    case "title":
                                        sql = "SELECT * FROM board WHERE title = ? ";
                                        break;
                                    case "id":
                                        sql = "SELECT * FROM board WHERE id =?";
                                        break;
                                }
                                pstmt = conn.prepareStatement(sql);
                                pstmt.setString(1, searchText);
                            }

                            result = pstmt.executeQuery();
                            int num = 0;
                            String title = null;
                            String content = null;
                            String id = null;
                            String postdate = null;
                            while (result.next()) {
                                num = result.getInt("num");
                                title = result.getString("title");
                                content = result.getString("content");
                                id = result.getString("id");
                                postdate = result.getString("postdate");
                            }
                    %>
                    <tr>
                        <td><%=num%></td>
                        <td><%=title%></td>
                        <td class="textarea"><%=content%></td>
                        <td><%=id%></td>
                        <td><%=postdate%></td>

                    </tr>
                    <%


                        } catch (SQLException e) {
                            out.print("데이터 베이스 사용중 오류가 발생했습니다. <br>");
                            out.print("SQLException : " + e.getMessage());
                        } finally {
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
                </tboby>
            </table>
        </div>
    </div>
</div>
</body>
</html>
