<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-06
  Time: 오전 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.bitc.jsp1106_mvc1.database.BoardDao" %>
<%@ page import="com.bitc.jsp1106_mvc1.utils.JSFunction" %>

<jsp:include page="./Login/LoginCheck.jsp"></jsp:include>

<%--<%@ include file="Login/LoginCheck.jsp"%>--%>
<%

    request.setCharacterEncoding("UTF-8");

    int num = Integer.parseInt(request.getParameter("num"));
    String id = request.getParameter("id");

//    if (session.getAttribute("userId") == null) {
//        JSFunction.alertLocation("로그인 후 이용해 주세요", "./Login/LoginForm.jsp", out);
//        return;
//    }


// 글 삭제 시 글 작성자가 현재 로그인한 사용자인지 확인
    if (id.equals((String)session.getAttribute("userId"))) {

        BoardDao dao = new BoardDao(application);
        dao.dbOpen();
        int result = dao.deletePost(num);
        dao.dbClose();

        if (result == 1) {
            JSFunction.alertLocation("삭제되었습니다.", "./List.jsp", out);
        } else {
            JSFunction.alertBack("삭제 중 오류가 발생했습니다.", out);
        }
    } else {
// 작성자와 로그인한 사용자가 같지 않으면 뒤로 가기
        JSFunction.alertBack("작성자 본인만 삭제할 수 있습니다.", out);

    }
%>