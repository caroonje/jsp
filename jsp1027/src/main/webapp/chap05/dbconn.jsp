<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-27-027
  Time: 오전 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="java.sql.*" %>
<%
  Connection conn = null;
  String dbUrl = "jdbc:mysql://localhost:3306/testdb?characterEncoding=UTF-8&serverTimezone=UTC";
  String dbUserId = "test1";
  String dbUserPw = "fullstack501";

  Class.forName("com.mysql.cj.jdbc.Driver");
  conn = DriverManager.getConnection(dbUrl,dbUserId,dbUserPw);

%>