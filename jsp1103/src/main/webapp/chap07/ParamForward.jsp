<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-03-003
  Time: 오후 3:36
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
<div class="container mt-5">
    <h2>포워드된 페이지에서 매개변수 확인</h2>
<%--    useBean 액션 태그를 사용하여 객체 생성,객체 생성 위치를 request영역에 저장--%>
    <jsp:useBean id="person" class="com.bitc.jsp1103.Person" scope="request"/>

    <ul>
<%--        기존의 request 영역에 생성된 person 객체가 가지고 있던 데이터 출력--%>
        <li><jsp:getProperty name="person" property="name"/></li>
        <li>나이 : <jsp:getProperty name="person" property="age"/></li>
        <li>본명 : <%=request.getParameter("param1")%></li>
        <li>출생 : <%=request.getParameter("param2")%></li>
        <li>특징 : <%=request.getParameter("param3")%></li>
    </ul>

<%--    include 액션 태그를 사용하여 ParamInclude.jsp 파일을 포함--%>
    <jsp:include page="ParamInclude.jsp">
        <jsp:param name="loc1" value="강원도 영월"/>
        <jsp:param name="loc2" value="김삿갓면"/>
    </jsp:include>
</div>
</body>
</html>
