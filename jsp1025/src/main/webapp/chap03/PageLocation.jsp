<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-25
  Time: 오후 3:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.bitc.fullstack501.jsp1025.Person" %>

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
    <h2>이동 후 page 영역의 속성값 읽기</h2>
    <%
        // pageContext에서 getAttribute() 메소드로 데이터 가져오기
//    getAttribute() 메소드 사용 시 지정한 이름의 속성에 데이터가 있으면 가져오고, 없으면 null을 반환
        Object pInteger = pageContext.getAttribute("pageInteger");
        Object pString = pageContext.getAttribute("pageString");
        Object pPerson = pageContext.getAttribute("pagePerson");
    %>

    <%-- 삼항연산자를 통해서 pageContext에서 가져온 데이터가 null인지 아닌지 확인하고 출력 --%>
    <ul>
        <li>Integer 객체 : <%=(pInteger == null) ? "값 없음" : pInteger%>
        </li>
        <li>String 객체 : <%=(pString == null) ? "값 없음" : pString%>
        </li>
        <li>Person 객체 : <%=(pPerson == null) ? "값 없음" : ((Person) pPerson).getName()%>
        </li>
    </ul>
</div>
</body>
</html>









