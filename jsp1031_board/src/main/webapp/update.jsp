<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-31
  Time: 오후 12:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>

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

    int seq = Integer.parseInt(request.getParameter("num"));
%>

<%@ include file="dbconn.jsp" %>

<%
    int num = 0;
    String title = "";
    String content = "";
    String id = "";
    String postDate = "";
    int visitCount = 0;

    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        String sql = "SELECT num, title, content, id, postdate, visitcount FROM board WHERE num = ? ";

        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, seq);
        rs = pstmt.executeQuery();

        if (rs.next()) {
            num = rs.getInt("num");
            title = rs.getString("title");
            content = rs.getString("content");
            id = rs.getString("id");
            postDate = rs.getString("postdate");
            visitCount = rs.getInt("visitcount");
        }
        else {
            out.print("조회된 데이터가 없습니다.");
        }
    }
    catch (SQLException e) {
        out.print("데이터 조회 중 오류가 발생했습니다.");
        out.print("SQLException : " + e.getMessage());
    }
    finally {
        try {
            if (rs != null) { rs.close(); }
            if (pstmt != null) { pstmt.close(); }
            if (conn != null) { conn.close(); }
        }
        catch (Exception e) {}
    }
%>

<div class="container mt-5">
    <h2 class="text-center">board 글 수정하기</h2>

    <div class="row">
        <div class="col-sm-6 mx-auto">
            <form action="updateProcess.jsp" method="post">
                <div class="row my-3">
                    <div class="col-sm-2">
                        <input type="text" class="form-control" name="num" readonly value=<%=num%> >
                    </div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="title" value=<%=title%> >
                    </div>
                </div>
                <div class="row my-3">
                    <div class="col-sm">
                        <input type="text" class="form-control" readonly value=<%=id%>>
                    </div>
                    <div class="col-sm">
                        <input type="text" class="form-control" readonly value=<%=postDate%> >
                    </div>
                    <div class="col-sm">
                        <input type="text" class="form-control" readonly value=<%=visitCount%> >
                    </div>
                </div>
                <div class="row my-3">
                    <div class="col-sm">
                        <textarea class="form-control" name="content" rows="5"><%=content%></textarea>
                    </div>
                </div>
                <div class="my-3 d-flex justify-content-end">
                    <button type="submit" class="btn btn-info">수정</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>