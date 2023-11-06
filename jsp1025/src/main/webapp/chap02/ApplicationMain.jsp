<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-25
  Time: 오후 2:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

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
  <h2>web.xml 에 설정한 내용 가져오기</h2>
<%--  web.xml에 저장된 내용을 가져옴--%>
  <h3>초기화 매개변수 : <%=application.getInitParameter("INIT_PARAM")%></h3>
  <br>
  <h2>서버의 물리적 경로 얻어오기</h2>
  <h3>application 내장 객체 : <%=application.getRealPath("/chap02")%></h3>
  <br>
  <h2>선언부에서 application 내장 객체 사용하기</h2>

  <%!
    public String useImplicitObject() {
//    return this.getServletContext().getReadPath("/chap02");
      return null;
    }

    public String useImplicitObject(ServletContext app) {
      return app.getRealPath("/chap02");
    }
  %>
  <ul>
    <li>this 사용 : <%=useImplicitObject()%></li>
<%--    내장객체 application를 매개변수로 전달하여 물리적 실제 경로를 가져옴 --%>
    <li>내장 객체를 인수로 전달 : <%=useImplicitObject(application)%></li>
  </ul>

<%--  일부러 오류 발생 시킴, 500 에러 발생 --%>
  <p><%= 10 / 0 %></p>
</div>
</body>
</html>









