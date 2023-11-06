<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-24
  Time: 오후 2:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="java.time.LocalDateTime" %>
<%@ page  import="java.time.LocalDate" %>

<%
  // 변수 선언
  LocalDate today = LocalDate.now();
  LocalDateTime tomorrow = LocalDateTime.now().plusDays(1);
%>
