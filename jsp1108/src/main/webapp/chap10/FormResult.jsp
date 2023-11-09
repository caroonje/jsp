<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-08-008
  Time: 오후 12:04
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
    <h2>EL로 폼값 받기</h2>
    <ul>
<%--        클라이언트에서 전달한 데이터 가져오기--%>
<%--        클라이언트의 input 태그의 name 속성명을 param.name속성명으로 하여 데이터를 가져옴--%>
        <li>이름 : ${param.userName}</li>
        <li>성별 : ${param["userGender"]}</li>
        <li>학력 : ${param['userGrade']}</li>
<%--    클라이언트에서 전달한 데이터가 배열일 경우는 paramValues 객체를 사용한다--%>
        <li>관심사항 : ${paramValues.userInter[0]}
        ${paramValues.userInter[1]}
            ${paramValues.userInter[2]}
            ${paramValues.userInter[3]}
        </li>

    </ul>
</div>
</body>
</html>
