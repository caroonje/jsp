<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-26-026
  Time: 오전 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%--자바 클래스 import--%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>

<%@ page import="com.bitc.jsp1026.Person" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>application 영역 </title>

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
<h2>application 영역의 공유</h2>
    <%
        // application 영역에 저장할 데이터 생성
        Map<String, Person> maps = new HashMap<>();
        maps.put("actor1", new Person("이수일",30));
        maps.put("actor2", new Person("심순애",28));
//      application에 저장할 데이터를 setAttribute()로 저장
        application.setAttribute("maps",maps);
    %>
    <p>application 영역에 속성이 저장되었습니다.</p>
</div>

</body>
</html>
