<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-31-031
  Time: 오후 12:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<%
    request.setCharacterEncoding("UTF-8");
    int num = Integer.parseInt(request.getParameter("num"));
    String title = request.getParameter("title");
    String content = request.getParameter("content");
%>
<%@ include file="dbconn.jsp" %>

<%
    PreparedStatement pstmt = null;

    try {
        String sql = "UPDATE board SET title = ? , content = ?, postdate = NOW() WHERE num = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,title);
        pstmt.setString(2,content);
        pstmt.setInt(3,num);

        if (pstmt.executeUpdate()>0){
            out.print("데이터가 정상적으로 수정되었습니다.");
        }else {
            out.print("데이터가 정상적으로 수정되지 않았습니다.");
        }
    }catch (SQLException e) {
        out.print("데이터 수정 중 오류가 발생했습니다.");
        out.print("SQLException : " + e.getMessage());
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
<script>
    setTimeout(function () {
        location.href = "select.jsp"
    }, 3000);
</script>
