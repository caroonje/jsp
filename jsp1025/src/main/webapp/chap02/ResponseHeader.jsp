<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-25
  Time: 오전 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%--자바 클래스 2개 import --%>
<%@ page import="java.util.Collection" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
// 날짜 사용 패턴 설정
  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
//  클라이언트에서 전달한 데이터 가져오기
//  SimpleDateFormat을 통해서 받아온 날짜 데이터를 지정한 날짜 형태로 변경
//  getTime() : 시간 정보 가져옴
  long addDate = sdf.parse(request.getParameter("addDate")).getTime();
//  getParameter()로 가져온 데이터는 모두 문자열이기 때문에 정수 타입으로 변환
  int addInt = Integer.parseInt(request.getParameter("addInt"));
  String addStr = request.getParameter("addStr");

//  내장 객체 response의 header 에 정보 저장
  response.addDateHeader("myBirthday", addDate);
//  header에 동일한 헤더 이름으로 데이터 저장 시 배열형태로 데이터가 추가됨
  response.addIntHeader("myNumber", addInt);
  response.addIntHeader("myNumber", 1004);
  response.addHeader("myName", addStr);
  response.addHeader("myName", "안중근");
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
  <h2>응답 헤더 정보 출력하기</h2>
  <ul>
  <%
//      내장 객체 response가 가지고 있는 모든 헤더의 이름을 가져옴
    Collection<String> headerNames = response.getHeaderNames();

    for (String hName : headerNames) {
      String hValue = response.getHeader(hName);
//      for 문의 끝 코드 블록 전에 스크립틀릿을 닫아 줌
  %>
<%--    html 코드를 사용하는 부분--%>
<%--    중간에 끊는 형태를 없애려면 out.print() 메소드를 사용해야 함--%>
<%--    out.print()로 html 코드를 입력하기에는 복잡할 경우 스크립틀릿을 닫고 html 태그로 표현함 --%>
    <li><%=hName%> : <%=hValue%></li>

<%--    스크립틀릿을 다시 시작하여 앞에 있는 for 문의 끝 코드블록을 붙여줌 --%>
  <%
    }
  %>
  </ul>

  <h2>myNumber만 출력하기</h2>
  <ul>
  <%
    Collection<String> myNumber = response.getHeaders("myNumber");

    for (String myNum : myNumber) {
      out.print("<li>myNumber : " + myNum + "</li>");
    }
  %>
  </ul>
</div>
</body>
</html>









