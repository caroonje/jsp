<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-09-009
  Time: 오후 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page import="com.bitc.jsp1109.Person" %>
<%@ page import="java.util.Date" %>
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

<c:set var="directVar" value="100"/>
<c:set var="elVar" value="${directVar mod 5}"/>
<c:set var="expVar" value="<%=new Date()%>"/>
<c:set var="betweenVar">변수값 요렇게 설정</c:set>

<h4>EL을 이용해 변수 출력</h4>
<ul>
    <li>directVar : ${pageScope.directVar}</li>
    <li>elVar : ${elVar}</li>
    <li>expVar : ${expVar}</li>
    <li>betweenVar : ${betweenVar}</li>
</ul>

<hr>
<h4>자바빈즈 생성 1 - 생성자 사용</h4>
<%--JSTL를 사용하여 Person 클래스 타입의 객체 생성,request 영역에 저장--%>
<c:set var="personVar1" value='<%=new Person("박문수",50)%>' scope="request"></c:set>
<ul>
    <li>이름 : ${requestScope.personVar1.name}</li>
    <li>나이 : ${personVar1.age}</li>

</ul>

<hr>
<h4>자바빈즈 생성 2: target,property 사용</h4>

<c:set var="personVar2" value="<%=new Person()%>" scope="request"></c:set>
<c:set target="${personVar2}" property="name" value="정약용"></c:set>
<c:set target="${personVar2}" property="age" value="60"></c:set>

<ul>
    <li>이름 : ${personVar2.name}</li>
    <li>나이 : ${requestScope.personVar2.age}</li>
</ul>


</body>
</html>
