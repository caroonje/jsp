<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-09-009
  Time: 오전 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.bitc.jsp1109.MyElClass" %>
<%@ taglib prefix="mytag" uri="/WEB-INF/MyTagLib.tld" %>
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

    </script>

</head>
<body>
<%
    //EL언어 사용시 반드시 내장 객체 영역에 저장
  MyElClass myElClass = new MyElClass();
  pageContext.setAttribute("myElClass",myElClass);
%>
<div class="container mt-5">

  <h2>EL언어 - 메소드 호출</h2>
  <h3>내장 영역에 저장후 메소드 호출하기</h3>
  <div>
<%--      El 언어로 내장 객체 영역에 저장된 객체를 불러와서 멤버 메소드 호출--%>
    <p>001225-3000000 => ${pageScope.myElClass.getGender("001225-3000000")}</p>
    <p>001225-2000000 => ${myElClass.getGender("001225-2000000")}</p>
  </div>
  <hr>

  <h3>클래스명을 통해서 정적 메소드 호출</h3>
<%--    자바에서 정적메소드 사용하는 방법과 동일--%>
    <div>
  ${MyElClass.showGugudan(7)}
    </div>
    <hr>
    <h3>TLD 파일 등록 후 정적 메소드 호출하기</h3>
    <div>
        <ul>
            <li>mytag:isNumber("100") => ${mytag:isNumber("100")}</li>
            <li>mytag:isNumber("이백") => ${mytag:isNumber("이백")}</li>
        </ul>
    </div>
</div>

</body>
</html>
