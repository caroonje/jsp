<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-25
  Time: 오전 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>내장 객체 - response</title>

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
  // getParameter() 메소드로 서버에서 전달된 데이터 가져오기
  String id = request.getParameter("userId");
  String pw = request.getParameter("userPw");

//  클라이언트에서 전달된 데이터가 서버에 저장된 데이터와 같은지 확인
  if (id.equalsIgnoreCase("must") && pw.equalsIgnoreCase("1234")) {
//    내장 객체 response에서 제공하는 sendRedirect() 를 사용하여 다른 페이지로 이동
//    클라이언트에서 지정한 페이지로 이동하는 것과 동일한 방식으로 다른 페이지로 이동
    response.sendRedirect("ResponseWelcome.jsp");
  }
  else {
//    내장 객체 request에서 제공하는 getRequestDispatcher()를 사용하여 다른 JSP 페이지로 전달
//    forward() : 지정된 페이지로 이동, 매개변수로 내장 객체 request, response를 사용함
//    서버 안에서 다른 JSP 페이지로 이동
    request.getRequestDispatcher("ResponseMain.jsp?loginErr=1").forward(request, response);
  }
%>
</body>
</html>









