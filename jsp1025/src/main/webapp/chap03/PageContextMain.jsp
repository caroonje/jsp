<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-25
  Time: 오후 3:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%--자바 빈즈로 선언한 Person 클래스를 import로 가져옴--%>
<%@ page import="com.bitc.fullstack501.jsp1025.Person" %>

<%--pageContext 사용--%>
<%
  // pageContext에 setAttribute()로 데이터 저장
  pageContext.setAttribute("pageInteger", 1000);
  pageContext.setAttribute("pageString", "페이지 영역의 문자열");
  pageContext.setAttribute("pagePerson", new Person("한석봉", 99));
%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Title</title>

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
  <h2>page 영역의 속성값 읽기</h2>
<%--  pageContext에 저장된 내용 가져오기, getAttribute()로 저장된 데이터 가져오기 --%>
<%--  pageContext는 모든 데이터를 다 저장할 수 있기 때문에 Object 타입임 --%>
<%--  pageContext에 저장된 내용을 가져올 경우 다시 강제 타입 변환이 필요함 --%>
  <%
    int pInteger = (Integer)(pageContext.getAttribute("pageInteger"));
    String pString = pageContext.getAttribute("pageString").toString();
    Person pPerson = (Person)(pageContext.getAttribute("pagePerson"));
  %>

<%--  pageContext에서 가져온 데이터를 화면에 출력 --%>
  <ul>
    <li>Integer 객체 : <%=pInteger%></li>
    <li>String 객체 : <%=pString%></li>
    <li>Person 객체 : <%=pPerson.getName()%>, <%=pPerson.getAge()%></li>
  </ul>

  <br>

  <h2>include된 파일에서 page 영역 읽어오기</h2>
<%--  디렉티브 태그 중 include를 사용하여 지정한 파일을 현재 파일에 복사하여 포함 --%>
<%--  페이지 이동이 아니기 때문에 pageContext에 저장된 내용을 가져올 수 있음 --%>
  <%@ include file="PageInclude.jsp" %>
  <br>

  <h2>페이지 이동 후 page 영역 읽어오기</h2>
<%--  a 태그를 통해서 지정한 링크로 이동 --%>
  <a class="btn btn-link" href="PageLocation.jsp" target="_blank">PageLocation.jsp 바로가기</a>
</div>
</body>
</html>









