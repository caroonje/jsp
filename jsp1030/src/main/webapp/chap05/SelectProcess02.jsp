<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-30-030
  Time: 오전 11:18
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
//1. 파라미터 값 가져오기
//  클라이언트에서 select와 input 태그를 통해서 2개의 데이터를 전달함
//  select 태그는 검색 종류 설정
    String searchSelect = request.getParameter("searchSelect");
//  input 태그는 검색어
    String searchText = request.getParameter("searchText");

%>
<%--2. connection 객체 가져와서 DB연결하기--%>
<%@ include file="dbconn.jsp" %>

<div class="container mt-5">
    <h2 class="text-center">Prepared Statement 로 데이터 조회하기</h2>
    <div class="row">
        <div class="col-sm-6 mx-auto">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>번호</th>
                    <th>아이디</th>
                    <th>비밀 번호</th>
                    <th>이름</th>
                    <th>등록 날짜</th>
                </tr>
                </thead>
                <tboby>
                    <%
//                     3. PreparedStatement, ResultSet 객체 생성
                        PreparedStatement pstmt = null;
                        ResultSet result = null;


                        try {
//                         4. sql문 생성
                            String sql = "";
//                            클라이언트에서 전달받은 검색어가 있는지 확인
                            if (searchText.equals("")) {
//                                검색어가 없을 경우 전체 내용을  출력하는 SQL문 생성
                                sql = "SELECT seq,id,pass,name,regidate FROM MEMBER ";
//                                PreparedStatment 객체 생성
                                pstmt = conn.prepareStatement(sql);
                            } else {
//                                검색어가 있을 경우 searchSelect 값에 따라 SQL문을 변경
                                switch (searchSelect) {
                                    case "seq"://번호로 검색
                                        sql = "SELECT seq,id,pass,name,regidate FROM member WHERE seq = ? ";
                                        break;

                                    case "id"://사용자 ID로 검색
                                        sql = "SELECT seq,id,pass,name,regidate FROM member WHERE id = ?";
                                        break;

                                    case "name"://사용자 이름으로 검색
                                        sql = "SELECT seq,id,pass,name,regidate FROM member WHERE name = ?";
                                        break;
                                }
//                                PreparedStatment 객체 생성
                                pstmt = conn.prepareStatement(sql);
//                                등록된 SQL문의 ? 부분에 데이터 대입하기
                                pstmt.setString(1, searchText);
                            }

//                            5.sql쿼리 실행 , 결과값이 ResultSet 타입의 변수 result에 저장
                            result = pstmt.executeQuery();
//                            6.가져온 결과값 출력
                            while (result.next()) {
//                                getInt(컬럼명) : 데이터 베이스에서 가져온 데이터에서 지정한 컬럼명과 일치하는 컬럼의 데이터를 정수로 가져옴
                                int seq = result.getInt("seq");
//                                getString(컬럼명) : 데이터 베이스에서 가져온 데이터에서 지정한 컬럼명과 일치하는 컬럼의 데이터를 문자열로 가져옴
                                String id = result.getString("id");
                                String pass = result.getString("pass");
                                String name = result.getString("name");
                                String regidate = result.getString("regidate");

//                                getInt(), getString() 사용시 index를 통해서 데이터를 가져오는 것도 가능함
//                                select 문에 입력한 컬럼의 순서대로 index가 지정됨,index는 1부터 시작
//                                int seq = result.getInt(1);
//                                String id = result.getString(2);
//                                String pass = result.getString(3);
//                                String name = result.getString(4);
//                                String regidate = result.getString(5);

//                                화면 출력 시 out.print() 를 사용하는 방법과 스크립틀릿을 끊어서 html 태그 + 표현식을 사용하는 방법이 있음
//                                out.print("<tr>");
//                                out.print("<td>" + seq + "</td>");
//                                out.print("<td>" + id + "</td>");
//                                out.print("<td>" + pass + "</td>");
//                                out.print("<td>" + name + "</td>");
//                                out.print("<td>" + regidate + "</td>");
//                                out.print("</tr>");
                    %>

                    <tr>
                        <td><%=seq%></td>
                        <td><%=id%></td>
                        <td><%=pass%></td>
                        <td><%=name%></td>
                        <td><%=regidate%></td>
                    </tr>
                    <%
                            }

                        } catch (SQLException e) {
                            out.print("데이터 베이스 사용중 오류가 발생했습니다. <br>");
                            out.print("SQLException : " + e.getMessage());
                        } finally {
//                            리로스 해제,리소스 해제는 ResultSet,PreparedStatement,Connection 순서로 진행
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
