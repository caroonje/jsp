<%@ page import="com.bitc.jsp1106_mvc1.utils.JSFunction" %><%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-07-007
  Time: 오후 2:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.bitc.jsp1106_mvc1.utils.JSFunction" %>
<%--로그인 확인--%>
<%
    if (session.getAttribute("userId") == null) {
        JSFunction.alertLocation("로그인 후 이용해 주세요", "./Login/LoginForm.jsp", out);
        return;
    }
%>
