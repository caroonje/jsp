<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-02
  Time: 오후 4:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.bitc.jsp1102.database.JSPBoardDto" %>
<%@ page import="com.bitc.jsp1102.database.JSPBoardDao" %>

<%-- 2. DTO/DAO를 사용하여 DB 연결 --%>
<%-- 3. DTO/DAO를 사용하여 SQL문 실행 --%>
<%-- 4. 리다이렉트하기 --%>

<%
//  클라언트에서 전달한 파라미터 가져오기
  request.setCharacterEncoding("UTF-8");

  String title = request.getParameter("title");
  String id = request.getParameter("id");
  String pass = request.getParameter("pass");
  String content = request.getParameter("content");

//  가져온 파라미터 값을 JSPBoardDto 타입의 객체에 대입
  JSPBoardDto board = new JSPBoardDto();
  board.setBoard_title(title);
  board.setBoard_content(content);
  board.setBoard_member_id(id);
  board.setBoard_pw(pass);

//  DAO를 통해서 데이터 베이스 연결
  JSPBoardDao dao = new JSPBoardDao(application);
  dao.dbOpen();
//  DAO의 멤버 메소드 insertBoard()를 사용하여 데이터 베이스 데이터 추가
  dao.insertBoard(board);
  dao.dbClose();

//  데이터 추가 작업 종료 후 게시판 목록 화면으로 이동
  response.sendRedirect("./boardList.jsp");
%>








