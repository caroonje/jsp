<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-03-003
  Time: 오전 11:17
  To change this template use File | Settings | File Templates.
--%>
<%-- boardDetail.jsp 에서 전달받은 파라미터 값을 가져오기--%>
<%--DTO에 전달 받은 파라미터값 저장--%>
<%--DAO를 사용하여 데이터 베이스 연결--%>
<%--DAO를 사용하여 DTO 정보를 데이터 베이스에 전달하여 데이터수정 --%>
<%--리스트 화면으로 페이지 이동--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.bitc.jsp1102.database.JSPBoardDao" %>
<%@ page import="com.bitc.jsp1102.database.JSPBoardDto" %>


<%
    request.setCharacterEncoding("UTF-8");

    int idx = Integer.parseInt(request.getParameter("idx"));
    String title = request.getParameter("title");
    String content = request.getParameter("content");

    JSPBoardDto board = new JSPBoardDto();
    board.setBoard_idx(idx);
    board.setBoard_title(title);
    board.setBoard_content(content);

    JSPBoardDao dao = new JSPBoardDao(application);
    dao.dbOpen();
    dao.updateBoard(idx,title,content);
//    데이터 수정하기

    dao.dbClose();
    response.sendRedirect("./boardList.jsp");
%>

