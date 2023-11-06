<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-26-026
  Time: 오전 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"  language="java" %>
<%@ page import="com.bitc.jsp1026.Person" %>

<%

    request.setAttribute("requestString","request 영역의 문자열");
    request.setAttribute("requestPerson",new Person("안중근",99));

    pageContext.setAttribute("pageString","page 영역에 저장한 문자열");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>내장 객체 - </title>

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
    <h2>request 영역의 속성값 삭제하기</h2>
    <%
        //request 영역에 저장된 데이터를 removeAttribute()로 삭제
        request.removeAttribute("requestString");
//        requestInteger 라는 이름으로 저장된 데이터가 없기 때문에 데이터가 삭제되지 않고,오류도 발생하지 않음
        request.removeAttribute("requestInteger");
    %>
    <br>    <hr>    <br>

    <h2>request 영역의 속성값 읽기</h2>
    <%
        //request 영역에 저장된 데이터를 getAttribute()를 통해서 가져옴
        Person rPerson = (Person)(request.getAttribute("requestPerson"));
    %>
    <ul>
<%--        저장되었던 내용을 화면에 출력--%>
<%--        requestString 이라는 이름을 저장된 데이터가 없으므로 null이 출력--%>
        <li>String 객체 : <%=request.getAttribute("requestString")%></li>
        <li>Person 객체 : <%=rPerson.getName()%>, <%=rPerson.getAge()%></li>
<%--    page 영역에 저장한 데이터 가져오기--%>
        <li>page 영역의 String 객체 : <%=pageContext.getAttribute("pageString").toString()%></li>
    </ul>

    <br>
    <hr>
    <br>
    <h2>포워드 된 페이지에서 request 영역 속성값 읽기</h2>

    <%
        //현재 페이지의 요청 정보를 가지고 다른 페이지로 서버 내에서 이동
//        다른 페이지로 이동시 get전송방식을 사용하여 파라미터를 2개 가지고 이동함
        request.getRequestDispatcher("RequestForward.jsp?paramHan=한글&paramEng=English").forward(request,response);
    %>
</div>
</body>
</html>
