<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-31
  Time: 오후 2:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="java.sql.*" %>

<%@ page import="com.bitc.jsp1031.JDBConnect" %>

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

<div class="container mt-5">
  <h2 class="text-center">Class를 사용하여 DB 연결</h2>

  <div>
    <%
      JDBConnect jdbCon = new JDBConnect();

      try {
        String sql = "SELECT * FROM board ";

        jdbCon.stmt = jdbCon.conn.createStatement();
        jdbCon.rs = jdbCon.stmt.executeQuery(sql);

        while (jdbCon.rs.next()) {
          out.print("<p>" + jdbCon.rs.getString("title") + "</p>");
        }
      }
      catch (SQLException e) {
        out.print("데이터 조회 중 오류가 발생했습니다.");
        out.print("SQLException : " + e.getMessage());
      }
      finally {
        jdbCon.close();
      }
    %>
  </div>
</div>

</body>
</html>









