<%@ page import="com.bitc.jsp1106_mvc1.database.BoardDto" %>
<%@ page import="com.bitc.jsp1106_mvc1.database.BoardDao" %>
<%@ page import="com.bitc.jsp1106_mvc1.utils.JSFunction" %><%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-06-006
  Time: 오전 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%--로그인 체크--%>
<%
    //현재 로그인 부분 구현이 안되었기에 주석처리
//    if (session.getAttribute("UserId")==null){
//        out.print("<script>");
//        out.print("alert('로그인 후 이용해 주세요');");
//        out.print("location.href = './LoginForm.jsp'");
//        out.print("</script>");
////  로그인 페이지로 이동 response.sendRedirect("./LoginForm.jsp");
//    }
    request.setCharacterEncoding("UTF-8");
    String title = request.getParameter("title");
    String content = request.getParameter("content");

    BoardDto board = new BoardDto();
    board.setTitle(title);
    board.setContent(content);
    board.setId("test1");
//    board.setId(session.getAttribute("userId").toString());
//현재 로그인 화면 및 로그인 프로세스가 없으므로 더미 데이터로 test1을 입력해 줌

    BoardDao dao = new BoardDao(application);
    dao.dbOpen();
    int result = dao.insertWrite(board);
    dao.dbClose();

    if (result == 1){
        response.sendRedirect("./List.jsp");
    }else {
        JSFunction.alertBack("글쓰기중 오류가 발생했습니다.",out);
//        out.print("<script>");
//        out.print("alert('글쓰기 중 오류가 발생했습니다.');");
//        out.print("history.back();");
//        out.print("</script>");
    }

%>