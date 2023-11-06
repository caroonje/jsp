<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-03-003
  Time: 오전 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.bitc.jsp1102.database.JSPBoardDao" %>
<%@ page import="com.bitc.jsp1102.database.JSPBoardDto" %>

<%
    request.setCharacterEncoding("UTF-8");

    int idx = Integer.parseInt(request.getParameter("idx"));

    JSPBoardDto board = new JSPBoardDto();
    board.setBoard_idx(idx);

    JSPBoardDao dao = new JSPBoardDao(application);
    dao.dbOpen();
//    데이터 삭제하기
    dao.deleteBoard(idx);
    dao.dbClose();

    response.sendRedirect("./boardList.jsp");
    %>
