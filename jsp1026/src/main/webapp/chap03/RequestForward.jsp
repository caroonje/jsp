<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-26-026
  Time: 오전 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.bitc.jsp1026.Person" %>
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
  <h2>포워드로 전달된 페이지</h2>
  <h4>RequestMain 파일의 리퀘스트 영역 속성 읽기</h4>
  <%
      //현재 페이지에서는 request 영역에 데이터를 저장하는 작업이 없음
      //request 영역에 저장된 데이터를 getAttribute()를 사용하여 가져오기
    Person rPerson = (Person) (request.getAttribute("requestPerson"));
  %>

  <ul>
<%--     저장되었던 데이터를 화면에 출력--%>
    <li>String 객체 : <%=request.getAttribute("requestString")%></li>
    <li>Person 객체 : <%=rPerson.getName()%>, <%=rPerson.getAge()%></li>
<%--    RequestMain.jsp 페이지의 page 영역에 저장한 내용 가져오기  --%>
<%--    page 영역에 저장한 데이터는 페이지 이동 시 무조건 삭제이기 때문에 forward로 이동해도 삭제됨--%>
    <li>page 영역의 String 객체 :  <%=(String) pageContext.getAttribute("pageString")%></li>
  </ul>
  <br>
  <hr>
  <br>
  <h4>매개변수로 전달된 값 출력하기</h4>

  <%
      // 페이지 이동시 get 전송 방식을 통해서 전달된 파라미터 값을 가져와서 화면에 출력하기
//      페이지 이동시 파라미터로 전ㄴ달된 데이터라도 request 영역에 저장되어 있음
//      request는 기본적으로 문자셋이 한글을 인식하지 못하므로 문자셋을 UTF-8로 변환
    request.setCharacterEncoding("UTF-8");
//      getParameter()를 사용하여 데이터 가져오기
    out.print(request.getParameter("paramHan"));
    out.print(request.getParameter("paramEng"));
  %>
</div>
</body>
</html>
