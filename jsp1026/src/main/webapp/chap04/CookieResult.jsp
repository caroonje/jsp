<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-26-026
  Time: 오전 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>내장 객체 </title>

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
<%--    이전 페이지 에서 생성한 쿠키 정보가 클라이언트의 웹 페이지에 저장된 후 임--%>
<%--    현재 페이지는 이전 페이지에서 생성한 쿠키 정보까지 모두 가지고 서버로 전달된 request 내장 객체를 사용함--%>
    <h2>쿠키값 확인하기 (쿠키가 생성된 이후의 페이지)</h2>
    <%
        //서버로 전달된 request 내장객체의 모든 쿠키 정보를 가져옴
        Cookie[] cookies = request.getCookies();
        if (cookies != null){
//            for문을 사용하여 모든 쿠키 정보의 내용을 출력
            for (int i =0; i<cookies.length; i++){
                String cookieName = cookies[i].getName();
                String cookieValue = cookies[i].getValue();
                out.println("쿠키명 : "+cookieName+"-쿠키값 : " + cookieValue + "<br>");
            }
        }
    %>
</div>

</body>
</html>
