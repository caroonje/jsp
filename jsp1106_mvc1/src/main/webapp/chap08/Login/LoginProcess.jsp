<%@ page import="com.bitc.jsp1106_mvc1.database.MemberDto" %>
<%@ page import="com.bitc.jsp1106_mvc1.database.MemberDao" %>
<%@ page import="com.bitc.jsp1106_mvc1.utils.JSFunction" %><%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-07-007
  Time: 오전 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");

    MemberDao dao = new MemberDao(application);

    dao.dbOpen();
    boolean isMember = dao.isMember(id,pwd);
    if (isMember){
        MemberDto member = dao.selectMember(id);
        dao.dbClose();
        session.setAttribute("userId",member.getId());
        session.setAttribute("userName",member.getName());
        session.setMaxInactiveInterval(60*10);

        response.sendRedirect("../List.jsp");

    }else {
        dao.dbClose();
        JSFunction.alertBack("ID나 비밀번호가 일치하지 않습니다",out);
    }
%>
