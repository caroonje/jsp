<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-03-003
  Time: 오후 3:35
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
    request.setCharacterEncoding("UTF-8");
    String pValue = "방랑시인";
%>
<div class="container mt-5">
    <h2 class="text-center">액션 태그 param 사용</h2>
<%--    useBean 액션 태그로 객체 생성 , 기존의 request 영역에 저장된 person 객체를 가져옴--%>
<%--setProperty 액션 태그로 데이터 저장--%>
<%--forward 액션 태그로 서버 내부에서 페이지 이동, 파라미터 1개 추가--%>
<%--        param 액션 태그로 데이터 2개를 추가로 전달함--%>
    <jsp:useBean id="person" class="com.bitc.jsp1103.Person" scope="request"/>
    <jsp:setProperty name="person" property="name" value="김삿갓"/>
    <jsp:setProperty name="person" property="age" value="56"/>
    <jsp:forward page="ParamForward.jsp?param1=김병연">
    <jsp:param name="param2" value="경기도 양주"/>
    <jsp:param name="param3" value="<%=pValue%>"/></jsp:forward>
</div>
</body>
</html>
