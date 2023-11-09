<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-08-008
  Time: 오후 12:43
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

    </script>

</head>
<body>
<div class="container mt-5">
    <h2>EL 언어로 객체 전달된 객체 읽기</h2>
    <ul>
        <%--        forward된 페이지이므로 영역을 지정하지 않으면 기본값으로 requestScope로 인식함--%>
        <%--        클래스의 객체 타입이 전달되었을 경우 해당 객체의 멤버를 호출시 '영역명, 객체명, 멤버명'으로 사용함--%>
        <li>Person객체 => 이름 : ${personObj.name}, 나이 : ${requestScope.personObj.age}</li>
        <li>String객체 => ${requestScope.stringObj}</li>
        <li>Integer객체 => ${IntegerObj}</li>
    </ul>

    <br>
    <hr>
    <br>
    <h3>매개 변수로 전달된 파라미터값 읽기</h3>
    <ul>
        <%--        EL언어는 ${}안에서 간단한 연산이 가능함--%>
        <li>${param.firstNum + param['secondNum']}</li>
        <li>${param.firstNum} + ${param["secondNum"]}</li>
    </ul>
</div>
</body>
</html>
