<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-09-009
  Time: 오후 3:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
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
    <h3>일반 for문 형태의 forEach사용</h3>
    <div>
        <p>
        <c:forEach var="i" begin="0" end="10">
            <span class="me-4">i의 값 : ${i} </span>
        </c:forEach>
        </p>
    </div>

    <br>
    <p>
    <%
        for (int i = 0; i <= 10; i++) {
            out.print("<span class = 'me-4'>i의 값 : " + i + "</span>");
        }
    %>
    </p>
    <br>
    <p>
    <%
        for (int i = 0; i <= 10; i++) {
    %>
    <span class="me-4">i의 값 : <%=i%></span>
    <%
        }
    %>
    </p>

    <table class="table table-bordered">
        <c:forEach begin="5" end="10" var="i" varStatus="loop">
            <tr>
                <td>count : ${ loop.count }</td>
                <td>index : ${ loop.index }</td>
                <td>current : ${ loop.current }</td>
                <td>i : ${i} </td>
                <td>first : ${ loop.first }</td>
                <td>last : ${ loop.last }</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
