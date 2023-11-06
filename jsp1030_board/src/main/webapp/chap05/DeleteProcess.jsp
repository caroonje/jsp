<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-30-030
  Time: 오후 2:58
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

    String deleteNum = request.getParameter("deleteNum");

%>

<%@ include file="dbconn.jsp" %>

<div class="container mt-5">
    <h2 class="text-center">PreparedStatement 로 데이터 삭제하기</h2>

        <%
        PreparedStatement pstmt = null;


        try {
            String sql = "DELETE FROM board WHERE num= ? ";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,deleteNum);

            pstmt.executeUpdate();
            out.print("지정한 회원을 삭제 했습니다.");

        } catch (SQLException e) {
            out.print("데이터 베이스 사용 중 오류가 발생했습니다.");
            out.println("SQLException : " + e.getMessage());
        } finally {
            try {
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


</body>
</html>
