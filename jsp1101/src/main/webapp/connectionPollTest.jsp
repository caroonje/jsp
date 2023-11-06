<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-01-001
  Time: 오전 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.bitc.jsp1101.DBConnPool" %>
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
<div class="container mt-5">
    <h2 class="text-center">커넥션 풀 사용하기</h2>

    <%
        DBConnPool pool = new DBConnPool();
        String sql = "select * from board";
        pool.stmt =pool.conn.createStatement();
        pool.rs = pool.stmt.executeQuery(sql);

        while (pool.rs.next()){
            out.print(pool.rs.getString("title") + "<br>");
        }
        pool.close();
    %>
</div>
</body>
</html>
