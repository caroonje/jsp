<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-09-009
  Time: 오전 9:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Objects" %>
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
    //EL언어를 통해서 데이터를 사용하기 위해서 page 영역에 데이터 저장
    pageContext.setAttribute("num1",9);
    pageContext.setAttribute("num2","10");
    pageContext.setAttribute("nullStr",null);
    pageContext.setAttribute("emptyStr","");
    pageContext.setAttribute("lengthZero",new Integer[0]);
    pageContext.setAttribute("sizeZero",new ArrayList<Object>());
%>
<div class="container mt-5">
    <h2>EL 언어 - 연산자</h2>
    <h3>empty 연산자</h3>
<%--    empty :  EL 언어에서 데이터가 없을 경우 true를 출력하는 연산자--%>
    <div>
<%--        page 영역에 nullStr 이라는 이름으로 저장된 데이터를 가지고옴,empty연산자로 확인--%>
        <p>empty nullStr : ${empty pageScope.nullStr}</p>
    <%--        page 영역에 emptyStr 이라는 이름으로 저장된 문자열 데이터를 가지고옴,empty연산자로 확인--%>
        <p>empty emptyStr : ${empty emptyStr}</p>
    <%--        page 영역에 lengthZero 이라는 이름으로 저장된 Integer 클래스 타입의 배열을 가지고옴,empty연산자로 확인--%>
        <p>empty lengthZero : ${empty lengthZero}</p>
    <%--        page 영역에 sizeZero 이라는 이름으로 저장된 ArrayList를,empty연산자로 확인--%>
        <p>empty sizeZero : ${empty sizeZero}</p>
    </div>

    <hr>

    <h3>삼항 연산자</h3>
    <div>
        <p> num1 gt num2 ? "참" : "거짓" => ${num1 gt num2 ? "num1이 크다" : "num2가 크다"}</p>
    </div>

    <hr>

    <h3>null연산</h3>
<%--    자바에서는 null 과 함께 연산이 오류 발생--%>
<%--EL언어에서는 null을 연산시 정수 0으로 취급--%>
    <div>
<%--        null 과 정수 10 연산--%>
        <p>null + 10 : ${null + 10}</p>
<%--    page영역에 저장된 nullStr이라는 이름의 데이터와 정수 10 연산--%>
        <p>nullStr + 10 : ${nullStr + 10}</p>
<%--    클라이언트에서 파라미터로 전달된 데이터 noVar를 가져옴--%>
<%--    클라이언트에서 noVar이라는 이름으로ㅓ 전달한 데이터가 없기 때문에 값은 null이됨--%>
        <p>param.noVar > 10 : ${param.noVar > 10}</p>
    </div>
</div>

</body>
</html>
