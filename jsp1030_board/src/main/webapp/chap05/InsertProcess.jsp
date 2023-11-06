<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-30-030
  Time: 오후 2:57
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

    String title = request.getParameter("Title");
    String content = request.getParameter("CONTENT");
    String userId = request.getParameter("userId");
%>

<%@ include file="dbconn.jsp"%>

<div class="container mt-5">
    <h2 class="text-center">Prepared Statement 로 데이터 추가하기</h2>
    <%
        String sql = "insert into board (title,content,id,postdate) ";
        sql += "values (?, ?, ?,NOW()) ";

        PreparedStatement pstmt = null;

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,title);
            pstmt.setString(2,content);
            pstmt.setString(3,userId);
            int result = pstmt.executeUpdate();

            if (result >0){
                out.print(result + "건의 데이터가 추가 되었습니다.");
            }else {
                out.print("데이터 베이스에서 데이터가 추가되지 않았습니다.");
            }

        }catch (SQLException e){
            out.print("데이터 베이스에 데이터 추가중 오류가 발생했습니다.");
            out.println("SQLException : " + e.getMessage());
        }
        finally {
            try {
                if (pstmt != null){
                    pstmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            }catch (Exception e){

            }
        }
    %>
</div>
</body>
</html>
