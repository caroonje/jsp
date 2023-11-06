<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-31-031
  Time: 오후 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%
    request.setCharacterEncoding("UTF-8");

    int num = Integer.parseInt(request.getParameter("num"));

%>

<%@ include file="dbconn.jsp" %>

<%
    PreparedStatement pstmt = null;

    try {
        String sql = "DELETE FROM board where num = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, num);
        int result = pstmt.executeUpdate();

        if (result > 0) {
            out.print("데이터를 정상적으로 삭제 했습니다");
        } else {
            out.print("데이터를 정삭적으로 삭제하지 못했습니다.");
        }
    } catch (SQLException e) {
        out.print("데이터 조회 중 오류가 발생했습니다.");
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