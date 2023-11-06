<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-01-001
  Time: 오후 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>title </title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>

    <style>

    </style>
    <script>
      window.addEventListener("DOMContentLoaded",function (){
        setTimeout(function (){
          location.href = "LoginForm.jsp";
        },3000);
      });
    </script>

</head>
<body>
<div class="container mt-5">
  <h2 class="my-3 text-center">로그 아웃 페이지</h2>
  <p>로그아웃 되었습니다.</p>
  <p>잠시 후 로그인 페이지로 이동합니다.</p>

  <%
    session.removeAttribute("userId");
    session.removeAttribute("userName");
    session.invalidate();

//    주요 session 메소드
//    setAttribute(이름,데이터) : 세션에 지정한 이름으로 데이터를 저장
//    setAttribute(이름) : 세션에 저장된 데이터를 지정한 이름으로 가져옴
//    removeAttribute(이름) : 세션에 지정한 이름으로 저장된 데이터를 삭제할때 사용
//    invalidate() : 세션에 저장된 모든 데이터를 삭제

//    getAttributeNames() : 세션에 저장된 데이터의 이름만 모두 가져옴, java.util.Enumeration 타입으로 반환

//    setMaxInactiveInterval(시간) : 서버에 저장된 데이터를 유지하는 세션 유지 시간을 설정,기본값 1,800초 (30분)
//    getMaxInactiveInterval() : 서버에 지정된 세션 유지 시간을 반환, int 타입으로 반환

//    getId() : 현재 세션에 할당된 고유 아이디를 반환, String 타입으로 반환
//    isNew() : 현재 세션의 생성 여부를 반환, 처음 생성시 true,이전에 생성된 이력이 있으면 false
//    getCreationTime() : 세션이 생성된 시간을 반환 , 1970년 1월 1일 0시 0분 부터 현재 세션이 생성된 시간까지 경과된 시간을 1/1000 초 값으로 반환, long타입으로 반환
//    getLastAccessedTime() : 현재 세션이 클라이언트가 서버로 마지막 request를 보낸 시간을 반환, long 타입으로 반환

  %>
</div>
</body>
</html>
