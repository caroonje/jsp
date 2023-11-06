<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-26-026
  Time: 오전 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cookie</title>

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
  <h2>1.쿠키(Cookie) 설정</h2>
  <%
      //Cookie 클래스를 사용하여 Cookie 객체 생성, 객체 생성 시에만 쿠키의 이름을 지정할 수 있음
    Cookie cookie = new Cookie("myCookie", "쿠키맛나요");
//    쿠키를 저장할 장소 지정
    cookie.setPath(request.getContextPath());
//    생성된 쿠키가 살아있을 수 있는 시간 설정,해당 시간이 초과하면 쿠키 자동 파기
//    클라이언트에 저장된 쿠키를 삭제시 setMaxage(0) 으로 설정
    cookie.setMaxAge(3600);
//    쿠키는 서버에서 생성하여 클라이언트에 저장하는 데이터 이므로 response 객체에 등록하여 전달
    response.addCookie(cookie);
  %>
<%--위에서 생성한 쿠키는 아직 클라이언트의 웹 브라우저에 저장되기 이전 상태의 request 내장 객체임--%>
  <h2>2.쿠키 설정 직후 쿠키값 확인하기</h2>
  <%
      //클라이언트의 웹 브라우저가 자동으로 request 객체에 쿠키를 담아서 서버로 전달
//      서버는 request 내장 객체에 담긴 쿠키 정보를 getCookies() 를 사용하여 가져옴
    Cookie[] cookies = request.getCookies();
    if (cookies != null){
//        쿠키 정보가 있을 경우 for문을 통해서 모든 쿠키 정보를 출력함
      for (Cookie c : cookies){
        String cookieName = c.getName();
        String cookieValue = c.getValue();
        out.println(cookieName +" : "+ cookieValue + "<br>");
      }
    }
  %>
    <br>    <hr>    <br>

  <h2>3.페이지 이동 후 쿠키값 확인하기</h2>
  <a href="CookieResult.jsp">다음 페이지에서 쿠키값 확인하기</a>
</div>

</body>
</html>
