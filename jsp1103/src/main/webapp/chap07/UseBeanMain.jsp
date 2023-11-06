<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-03-003
  Time: 오후 2:57
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
    <h2>useBean 액션 태그 사용하기</h2>

    <h3>자바빈즈 생성하기</h3>
    <jsp:useBean id="person" class="com.bitc.jsp1103.Person" scope="request"/>
    <br>
    <h3>setProperty 액션태그로 자바빈즈 속성 지정하기</h3>
    <jsp:setProperty name="person" property="name" value="아이유"/>
    <jsp:setProperty name="person" property="age" value="30"/>
    <br>
    <h3>getProperty 액션태그로 자바빈즈 속성 읽기</h3>
    <ul>
        <li>이름 :
            <jsp:getProperty name="person" property="name"/>
        </li>
        <li>나이 :
            <jsp:getProperty name="person" property="age"/>
        </li>
    </ul>
    <br>
    <hr>
    <br>
    <h2>스크립틀릿을 사용하여 객체에 데이터 넣고 가져오기</h2>
    <%@ page import="com.bitc.jsp1103.Person" %>
    <%
        Person p1 = new Person();
    %>
    <br>

    <h3>데이터 저장하기</h3>
    <%
        p1.setName("유인나");
        p1.setAge(30);
    %>
    <br>

    <h3>데이터 가져오기</h3>
    <ul>
        <li>이름 : <%=p1.getName()%></li>
        <li>나이 : <%=p1.getAge()%></li>
    </ul>

</div>
</body>
</html>


