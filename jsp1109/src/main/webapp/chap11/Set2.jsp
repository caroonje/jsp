<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-09-009
  Time: 오후 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Vector" %>
<%@ page import="com.bitc.jsp1109.Person" %>
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
<h4>List 컬렉션 이용하기</h4>
<%
    ArrayList<Person> pList = new ArrayList<Person>();
    pList.add(new Person("성상문",55));
    pList.add(new Person("박팽년",60));
%>
    <c:set var="personList" value="<%=pList%>" scope="request"/>

    <ul>
        <li>이름 : ${requestScope.personList[0].name}</li>
        <li>나이 : ${personList[0].age}</li>
    </ul>

    <h4>Map 컬렉션 이용하기</h4>

    <%
        Map<String,Person> pMap = new HashMap<String, Person>();
        pMap.put("personArgs1",new Person("하위지",65));
        pMap.put("personArgs2",new Person("이개",67));
    %>
    <c:set var="personMap" value="<%=pMap%>" scope="request"/>
    <ul>
        <li>이름 : ${requestScope.personMap.personArgs2.name}</li>
        <li>나이 : ${personMap.personArgs2.age}</li>
    </ul>
</div>
</body>
</html>
