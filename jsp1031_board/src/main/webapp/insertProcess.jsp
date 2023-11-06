<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-31-031
  Time: 오후 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<%
  request.setCharacterEncoding("UTF-8");

  String title = request.getParameter("title");
  String userId = request.getParameter("userId");
  String content = request.getParameter("content");

%>
<%@ include file="dbconn.jsp"%>

<%
  PreparedStatement pstmt = null;
  try {
    String sql = "insert into board (title,content,id,postdate) values (?,?,?,now())";
    pstmt = conn.prepareStatement(sql);

    pstmt.setString(1,title);
    pstmt.setString(2,content);
    pstmt.setString(3,userId);

    int result = pstmt.executeUpdate();

    if (result > 0) {
      out.print("데이터가 정상적으로 등록 되었습니다.");
    }else {
      out.print("데이터가 정삭적으로 등록되지 않았습니다.");
    }
  }catch (SQLException e) {
    out.print("데이터 등록 중 오류가 발생했습니다.");
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

<%--화면 이동--%>
<%--1. 자바스크립트 사용방법--%>
<%--setTimeout() 함수를 사용하여 지정한 시간 이후에 페이지 이동--%>
<script>
<%--setTimeout() : 자바스크립트가 지원하는 타이머 함수 --%>
<%--첫번ㅉ때 매개 변수에 지정한 시간이 지난 후 동작할 함수 입력--%>
<%--두번째 매개 변수에 시간 입력,1/1000 크기로 입력--%>
<%--setInterval() : 자바스크립트가 지원하는 다회용 타이머 함수--%>
<%--사용방법은 setTimeout()와 동일--%>
<%--setInterval() 선언시 timer 변수를 반환하고 clearInterval() 함수를 통해서 setInterval을 삭제할 수 있음--%>
  setTimeout(function () {
    // 지정한 페이지로 이동
    location.href="select.jsp"
  },3000);
</script>

<%--2. response 객체의 sendRedirect() 사용--%>
<%--sendRedirect() 사용 시 즉시 페이지 이동--%>
<%--<%--%>
<%--  response.sendRedirect("select.jsp");--%>
<%--%>--%>

<%--3. meta 태그 사용--%>
<%--지정한 시간이후에 페이지 이동--%>
<%--http-equiv="refresh" : 화면 새로 고침---%>
<%--content="5" : 5초마다 한번씩 화면 새로고침--%>
<%--URL="접속할 주소 " : 지정한 URL로 이동--%>
<%--<meta http-equiv="refresh" content="5;URL='http://localhost:8080/select.jsp'">--%>