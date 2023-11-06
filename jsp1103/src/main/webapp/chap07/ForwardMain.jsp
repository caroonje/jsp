<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-03-003
  Time: 오후 2:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>title </title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>

    <style>

    </style>
    <script>

    </script>

</head>
<body>
<%
    pageContext.setAttribute("pAttr","김유신");
    request.setAttribute("rAttr","계백");
%>
<div class="container mt-5">
    <h2 class="text-center">액션 태그를 이용한 포워딩</h2>
<%--    액션 태그의 forward를 사용하여 지정한 페이지로 이동--%>
<%--    forward는 리다이렉트와 달리 서버 안에서 페이지 이동함--%>
    <jsp:forward page="ForwardSub.jsp"></jsp:forward>

<%--    <%--%>
<%--        //디렉티브 태그를 이용한 forward , 액션 태그의 forward와 동일한 기능--%>
<%--        request.getRequestDispatcher("ForwardSub.jsp").forward(request,response);--%>
<%--    %>--%>
</div>
</body>
</html>
