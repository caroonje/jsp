<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-27-027
  Time: 오전 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.Connection" %>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>데이터 베이스 연결 테스트</title>

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
    Connection conn = null;

    try {
        String url = "jdbc:mysql://localhost:3306/testdb?characterEncoding=UTF-8&serverTimezone=UTC";
        String userId = "test1";
        String userPw = "fullstack501";

        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, userId, userPw);
        out.println("데이터 베이스 연결이 성공했습니다.");
    }
    catch (SQLException e) {
        out.print("데이터 베이스 연결이 실패했습니다.");
        out.print("SQLException : " + e.getMessage());
    }
    catch (Exception e) {
        out.print(e.getMessage());
    }
    finally {
        if (conn != null) {
            conn.close();
        }
    }
%>
</body>
</html>
