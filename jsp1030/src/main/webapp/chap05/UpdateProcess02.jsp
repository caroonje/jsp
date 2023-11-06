<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-30-030
  Time: 오후 12:27
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
// 클라이언트에서 전달받은 데이터 가져오기
    String userId = request.getParameter("userId");//수정할 사용자 ID
    String userPw = request.getParameter("userPw");// 현재 사용자 Pw
    String userPw1 = request.getParameter("userPw1");//수정할 Pw
    String userPw2 = request.getParameter("userPw2");//수정할 Pw 확인
    String userName = request.getParameter("userName");//수정할 사용자 이름
%>
<%@ include file="dbconn.jsp" %>

<%--1. PreparedStatement, ResultSet 변수 생성--%>
<%--2. select 용 SQL문 생성--%>
<%--3. 사용자가 클라이언트에서 전달한 데이터와 일치하는 사용자가 있는지 확인--%>
<%--4. update 용 SQL문 생성--%>
<%--5. PreparedStatement로 데이터 수정--%>

<div class="container mt-5">
    <h2 class="text-center">PreparedStatement 로 데이터 수정하기</h2>
    <%
        //PreparedStatement 타입의 변수 선언
        PreparedStatement pstmt = null;
        ResultSet result = null; //Select 문 실행 후 결과를 받아오기 위한 ResultSet 변수 선언
        try {
//            SELECT 문을 먼저 실행하여 기존 데이터가 있는지 확인
            String sql = "SELECT id, pass FROM member WHERE id = ?";
            pstmt = conn.prepareStatement(sql);
//            사용자 ID를 대입하여 SELECT문 완성
            pstmt.setString(1, userId);
//            SELECT 문 실행
            result = pstmt.executeQuery();
//            SELECT 문 실행 후 받아온 결과를 출력, next() 실행 결과가 false 일 경우 검색된 결과가 없다는 의미
            if (result.next()) {
//            getString()을 통해서 데이터 가져옴
                String id = result.getString("id");
                String pass = result.getString("pass");
//                클라이언트에서 전달한 데이터와 SELECT 문을 통해서 데이터베이스에서 가져온 정보가 동일한지 확인
                if (userId.equals(id) && userPw.equals(pass)) {
//                    수정할 비밀번호가 수정할 비밀번호 확인 데이터와 같은지 확인
                    if (userPw1.equals(userPw2)) {
//                        데이터 수정을 위해서 UPDATE 문을 생성
                        sql = "UPDATE member SET pass = ?, name = ? WHERE id = ?";
//                        UPDATE 문으로 수정된  변수 SQL을 사용하여 prepareStatement 객체로 생성
                        pstmt = conn.prepareStatement(sql);
//                        ?기호에 알맞은 데이터 각각 대입
                        pstmt.setString(1, userPw1);
                        pstmt.setString(2, userName);
                        pstmt.setString(3, userId);
//                        executeUpdate() 을 사용하여 UPDATE 쿼리문을 실행
                        pstmt.executeUpdate();
                        out.print("회원 정보를 수정했습니다.");
                    } else {
                        out.println("수정할 비밀번호가 서로 다릅니다.");
                    }
//                    일치할 경우 데이터 수정하는 sql문 생성
                } else {
//                    검색한 ID의 비밀번호가 일치 하지 않을 경우
                    out.print("사용자 정보가 일치 하지 않습니다.");
                }
            } else {
                out.print("사용자가 없습니다.");
            }

        } catch (SQLException e) {
            out.print("데이터 베이스 사용 중 오류가 발생했습니다.");
            out.println("SQLException : " + e.getMessage());
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
</div>

</body>
</html>
