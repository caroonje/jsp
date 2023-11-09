<%@ page import="com.bitc.jsp1106_mvc1.database.BoardDao" %>
<%@ page import="com.bitc.jsp1106_mvc1.database.BoardDto" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-07-007
  Time: 오후 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
    <div class="container-fluid">
        <a href="/index.jsp" class="navbar-brand">회원제 게시판</a>

        <ul class="navbar-nav">
            <li class="nav-item">
                <a href="#" class="nav-link">메뉴1</a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link">메뉴2</a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link">메뉴3</a>
            </li>
        </ul>

        <div class="ms-auto">
            <%
                if (session.getAttribute("userId")==null) {
                    out.print("<a href='Login/LoginForm.jsp' class='btn btn-outline-success'>로그인</a>");

                } else {
            %>
            <span class="navbar-text me-3"><%=session.getAttribute("userName")%> 님 반갑습니다.</span>
            <a href="Login/Logout.jsp" class="btn btn-outline-secondary"> 로그아웃 </a>
            <%
                }
            %>
        </div>
    </div>
</nav>