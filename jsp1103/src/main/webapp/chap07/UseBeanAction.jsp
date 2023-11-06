<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-03-003
  Time: 오후 3:16
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
    <h2 class="text-center">액션 태그로 폼값 한번에 받기</h2>

    <jsp:useBean id="person" class="com.bitc.jsp1103.Person"/>
<%--    setProperty 액션 태그 사용시 클라이언트의 form 태그에 포함된 input 태그의 name 속성값이 모두 자바빈즈 의 필드명과 동일한 경우 setPropertu 액션 태그의 property속성값을 * 로 지정하면 스크립틀릿에서 request,getParameter()로 가져와야 하는 것을 자동으로 받아옴--%>
    <jsp:setProperty name="person" property="*"/>

    <ul>
        <li>이름 : <jsp:getProperty name="person" property="name"/> </li>
        <li>나이 : <jsp:getProperty name="person" property="age"/> </li>
    </ul>
</div>
</body>
</html>
