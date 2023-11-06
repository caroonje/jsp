<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-27-027
  Time: 오후 3:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%--데이터 베이스 사용을 위한 클래스 호출--%>
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
<%--1.클라이언트에서 전달받은 파라미터 값 가져오기--%>
<%
    request.setCharacterEncoding("UTF-8");
    String userId = request.getParameter("userId");
%>
<%--2.db connection 정보가 담긴 파일 가져오기--%>
<%@ include file="dbconn.jsp"%>


<%--    3. db 접속 후 sql 문 전송 및 결과 받기--%>
<div class="container mt-5">
    <h2 class="text-center">Statement 로 데이터 조회하기</h2>
    <%
        //select 쿼리문 생성
        String sql = "SELECT id,pass,name,regidate FROM MEMBER where id = '"+ userId + "' ";
//        sql 쿼리문 실행 및 결과를 받아오기 위한 Statement 타입의 변수 생성
        Statement stmt = null;
//        Statement 혹은 PrepareStatement를 통해서 select 쿼리문 수행 후 그 결과를 저장하는 클래스
//        Iterator 와 사용 방식이 비슷함
        ResultSet rs = null;


        try{
//            connection 객체를 통해서 Statement 객체를 생성
            stmt = conn.createStatement();
//            select 쿼리문 실행을 위해 Statement의 executeQuery() 메소드를 실행
//            데이터 베이스에서 쿼리문 실행 후 그 결과를 ResultSet 타입의로 반환함
            rs = stmt.executeQuery(sql);

//            next() : 데이터 베이스의 Select 문 결과를 가지고 있는 ResultSet 타입의 변수에 출력할 데이터가 있는지 여부를 확인하는 메소드,출력할 데이터가 있으면 true, 없으면 false를 출력
            while (rs.next()){
//                getString(컬럼명 | index) : ResultSet 타입의 변수에 저장된 데이터 중 지정한 컬럼명의 데이터를 가져오는 메소드,String 타입의 데이터로 가져옴
//                getInt(컬럼명 | index) : ResultSet 타입의 변수에 저장된 데이터 중 지정한 컬럼명의 데이터를 가져오는 메소드,Int 타입의 데이터로 가져옴
                String id = rs.getString("id");
                String pass = rs.getString("pass");
                String name = rs.getString("name");
                String regiDate = rs.getString("regidate");

                out.print("사용자 ID : " + id +"<br>");
                out.print("비밀번호 : " + pass+"<br>");
                out.print("이름 : " + name+"<br>");
                out.print("등록 날짜 : " + regiDate+"<br>");
            }
        }
        catch (SQLException e){
            out.print("데이터 베이스 조회 중 오류가 발생했습니다.");
            out.print("SQLException : " + e.getMessage());
        }
        finally {
            try {
//                Select 문 실행 후 리소스의 해제 시 ResultSet,Statement,connection 순서로 리소스를 해체해야함.
                if (rs != null){rs.close();}
                if (stmt != null){stmt.close();}
                if (conn != null){conn.close();}
            }catch (Exception e){

            }
        }

    %>
</div>

</body>
</html>
