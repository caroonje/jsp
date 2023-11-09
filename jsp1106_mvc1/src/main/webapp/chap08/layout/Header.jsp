<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-07-007
  Time: 오후 12:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String pageName = "";

    String result = request.getRequestURI();
    int index = result.lastIndexOf("/") + 1;
    result = result.substring(index);
    switch (result){
        case "List.jsp":
            pageName = "목록";
        break;
        case "Write.jsp":
            pageName = "글쓰기";
            break;
        case "View.jsp":
            pageName = "상세";
            break;
        case "Edit.jsp":
            pageName = "수정";
            break;
        case "LoginForm.jsp":
            pageName = "로그인";
            break;
        case "MemberJoin.jsp":
            pageName = "회원가입";
            break;
    }



%>

<header class="p-sm-5 text-center" style="margin-top:80px;">
    <div class="container" >
        <div class="rounded-3 bg-secondary bg-opacity-25">
            <h1 class="display-4">회원제 게시판 - <%=pageName%> 페이지</h1>
        </div>
    </div>
</header>
