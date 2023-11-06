<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-03-003
  Time: 오후 1:57
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
<%
  String outerPath1 = "./inc/OuterPage1.jsp";
  String outerPath2 = "./inc/OuterPage2.jsp";

  pageContext.setAttribute("pAttr","동명왕");
  request.setAttribute("rAttr","온조왕");
%>
 <div class="container mt-5">
   <h2 class="text-center">지시어와 액션태그 동작 방식 비교</h2>
   <h3 class="text-center mt-3">지시어로 페이지 포함하기</h3>
<%--     디렉티브 태그를 사용하여 다른 외부 파일을 현재 파일에 포함--%>
   <%@ include file="inc/OuterPage1.jsp"%>
<%--     디렉티브 태그에는 JSP의 표현식 사용이 불가능--%>
<%--   <%@ include file="<%=outerPath1%>"%>--%>
   <p>외부 파일에 선언한 변수 : <%=newVar1%></p>

   <br>   <hr>   <br>

   <h3 class="text-center">액션 태그로 페이지 포함하기</h3>
<%--     액션 태그의 include는 지정한 페이지로 이동 후 실행하고 결과만 현재 페이지에 포함--%>
<%--     페이지 이동이 발생했으므로 page 영역에 저장된 데이터가 삭제 되어버린다.--%>
   <jsp:include page="./inc/OuterPage2.jsp"></jsp:include>
<%--     액션 태그에는 JSP의 표현식을 사용할 수 있음--%>
   <jsp:include page="<%=outerPath2%>"></jsp:include>
<%--외부 파일로 이동 후 외부 파일에 선언된 변수를 사용하고 결과만 가져오기 떄문에 현재 파일에서 외부 파일에 선언한 변수를 가져올 수 없음--%>
<%--   <p>외부 파일에 선언한 변수 : <%=newVar2%></p>--%>
 </div>
</body>
</html>

