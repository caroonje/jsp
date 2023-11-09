<%@ page import="com.bitc.jsp1106_mvc1.database.BoardDao" %>
<%@ page import="com.bitc.jsp1106_mvc1.database.BoardDto" %>
<%@ page import="com.bitc.jsp1106_mvc1.utils.JSFunction" %><%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-06-006
  Time: 오전 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:include page="./Login/LoginCheck.jsp"></jsp:include>
<%
    request.setCharacterEncoding("UTF-8");

    int num = Integer.parseInt(request.getParameter("num"));
    String id = request.getParameter("id");
    String title = request.getParameter("title");
    String content = request.getParameter("content");

    if (id.equals(session.getAttribute("userId").toString()) == false) {
        JSFunction.alertBack("작성자만 수정할 수 있습니다.", out);
        return;
    } else {
        BoardDto board = new BoardDto();
        board.setNum(num);
        board.setTitle(title);
        board.setContent(content);

        BoardDao dao = new BoardDao(application);
        dao.dbOpen();
        int result = dao.updateEdit(board);
        dao.dbClose();

        if (result > 0) {
            response.sendRedirect("./List.jsp");
        } else {
            JSFunction.alertBack("수정 중 오류가 발생", out);
        }
    }

%>
