<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-09-009
  Time: 오전 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%--tomcat10, tomcat9의 JakartaEE 사용시--%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%--옛날버전 --%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
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
    <h2>JSP로 만든 구구단</h2>
    <table class="table table-bordered">
        <%
            for (int dan = 2; dan <= 9; dan++) {%>
        <tr>
            <%
                for (int su = 1; su <= 9; su++) {%>
            <td>
                <%=dan%> * <%=su%> =<%=dan * su%>
            </td>
            <%}%>
        </tr>
        <%}%>
    </table>
    <hr>

    <h2>JSTL로 만든 구구단</h2>
    <table class="table table-bordered">
        <c:forEach begin="2" end="9" var="dan">
            <tr>
                <c:forEach begin="1" end="9" var="su">
                    <td>
                            ${dan} * ${su} = ${dan * su}
                    </td>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>
</div>


</body>
</html>
