<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-27-027
  Time: 오전 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%--자바에서 제공하는 데이터베이스 제어를 위한 클래스--%>
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
    //데이터 베이스 접속을 진행하는 클래스
    Connection conn = null;

    try {
//        mysql용 데이터 베이스 접속 주소 ,mysql용 접속 주소
//        "jdbc(JDBC사용):mysql(DB종류)://localhost(접속주소):3306(포트번호)/testdb(사용할DB명)?characterEncoding=UTF-8&serverTimezone=UTC"
        String url = "jdbc:mysql://localhost:3306/testdb?characterEncoding=UTF-8&serverTimezone=UTC";
//        사용자 ID/PW
        String userId = "test1";
        String userPw = "fullstack501";
//        JDBC드라이버가 현재 프로그램에 로드가 됐는지 확인
        Class.forName("com.mysql.cj.jdbc.Driver");
//        getConnection() : 실제 데이터 베이스에 연결, Connection 객체에 연결 정보를 저장
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
//        데이터 베이스 접속 및 사용은 외부 리소스를 사용하는 것이기 때문에 finally를 사용하여 해당 접속을 반드시 종료 해야함
        if (conn != null) {
//            데이터 베이스 접속 종료
            conn.close();
        }
    }
%>
</body>
</html>
