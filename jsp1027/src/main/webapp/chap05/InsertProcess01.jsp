<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-27
  Time: 오후 12:20
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
<div class="container mt-5">
<%--    미리 만들어 놓은 DB connection 부분을 include로 가져옴--%>
    <%@ include file="dbconn.jsp"%>
    <%
        //jdbc(mysql) 연결 문자열 생성
//        String dbUrl = "jdbc:mysql://localhost:3306/testdb?characterEncoding=UTF-8&serverTimezone=UTC";
//        mysql 사용자 id/pw
//        String dbUserId = "test1";
//        String dbUserPw = "fullstack501";
//      데이터 베이스 연결을 위한 Connection 변수 생성
//        Connection conn = null;
//        sql 쿼리문을 데이터 베이스로 전송하고 실행하기 위한 Statement변수 생성
        Statement stmt = null;

//        클라이언트에서 전달받은 데이터 가져오기
        request.setCharacterEncoding("UTF-8");
        String userId = request.getParameter("userId");
        String userPw = request.getParameter("userPw");
        String userName = request.getParameter("userName");

        try {
//            mysql jdbc가 로드 되었는지 확인
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            mysql 접속 주소와 사용자 ID/PW를 가지고 데이터 베이스 연결
//            conn = DriverManager.getConnection(dbUrl, dbUserId, dbUserPw);
//            데이터 베이스에서 실행할 SQL쿼리문 생성
            String sql = "INSERT INTO member (id, pass, name, regidate) ";
            sql += "VALUES ('" + userId + "', '" + userPw + "', '" + userName + "', NOW()) ";

//            Connection 객체로  Statement객체 생성
            stmt = conn.createStatement();
//            Statement 객체의 메소드 executeUpdate() 를 활용하여 SQL문을 실행
//            매개변수로 받은 SQL문은 데이터 베이스에서 실행하고 결과를 받아옴
            int result = stmt.executeUpdate(sql);
            out.print("회원 가입이 성공했습니다.");
        }
        catch (SQLException e) {
            out.print("회원 가입이 실패했습니다.");
            out.print("SQLException : " + e.getMessage());
        }
        finally {
//            데이터베이스 사용 후 리소스를 반환할 경우 Statement객체 먼저 반환하고 Connection 객체를 나중에 반환, 조립은 분해의 역순
            if (stmt != null) {
                stmt.close();
            }

            if (conn != null) {
                conn.close();
            }
        }

    %>
</div>
</body>
</html>








