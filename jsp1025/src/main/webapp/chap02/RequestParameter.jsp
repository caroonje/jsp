<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-25
  Time: 오전 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>내장 객체 - request</title>

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
<%
//  html 에서 jsp 서버로 데이터 전송 시 문자셋처리 때문에 한글이 깨짐, 문자셋을 UTF-8로 변경해야 함
  request.setCharacterEncoding("UTF-8");
//  클라이언트에서 전달한 데이터를 request 내장 객체에서 가져오기
//  getParameter() : request 내장 객체에서 지정한 이름과 일치하는 데이터를 가져옴
//  getParameterValues() : request 내장 객체에서 지정한 이름과 일치하는 데이터를 배열로 가져옴
//  getParameter(), getParameterValues() 모두 String 타입으로 데이터를 가져옴
  String id = request.getParameter("id");
  String gender = request.getParameter("gender");
  String[] favo = request.getParameterValues("favo");
  String favoStr = "";

  if (favo != null) {
    for (int i = 0; i < favo.length; i++) {
      favoStr += favo[i] + " ";
    }
  }

//  textarea에서 입력받은 내용에는 줄바꿈 기호인 \n이 포함되어 있지만 html 에서는 \n을 줄바꿈 기호로 인식하지 못하므로 replace() 메소드를 통해서 <br> 태그로 변경해 줌
  String intro = request.getParameter("intro").replace("\r\n", "<br>");
%>

<div class="mt-5 container">
  <ul>
    <li>아이디 : <%=id%></li>
    <li>성별 : <%=gender%></li>
    <li>관심사항 : <%=favoStr%></li>
    <li>자기소개 : <%=intro%></li>
  </ul>
</div>
</body>
</html>









