<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-31
  Time: 오후 2:28
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

<%@ include file="dbconn.jsp" %>

<div class="container mt-5">
  <h2>기존의 JSP 파일을 통해서 DB 접속하기</h2>

  <div>
    <%
      Statement stmt = null;
      ResultSet rs = null;
      try {
        String sql = "SELECT * FROM board ";
        stmt = conn.createStatement();
        rs = stmt.executeQuery(sql);

        while (rs.next()) {
          out.print("<p>" + rs.getString("title") + "</p>");
        }
      }
      catch (SQLException e) {
        out.print("데이터 조회 중 오류가 발생했습니다.");
        out.print("SQLException : " + e.getMessage());
      }
      finally {
        try {
          if (rs != null) { rs.close(); }
          if (stmt != null) { stmt.close(); }
          if (conn != conn) { conn.close(); }
        }
        catch (Exception e) {}
      }
    %>
  </div>
</div>
</body>
</html>









