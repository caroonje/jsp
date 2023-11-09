<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-08-008
  Time: 오후 3:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.bitc.jsp1108.Person" %>
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
    <h2>List 컬렉션</h2>
    <%
        //ArrayList 생성 후 page 영역에 데이터 저장
        List<Object> aList = new ArrayList<Object>();
        aList.add("청해진");
        aList.add(new Person("장보고", 28));
        pageContext.setAttribute("Ocean", aList);
    %>
    <div>
        <ul>
            <%--            EL언어로 ArrayList 타입의 데이터 가져올때--%>
            <li>0번째 요소 : ${Ocean[0]}</li>
            <li>1번째 요소 : ${Ocean[1].name},${Ocean[1].age}</li>
            <li>2번째 요소 : ${Ocean[2]}</li>
            <%--            표현식으로  ArrayList 타입의 데이터 가져올때--%>
            <li>0번째 요소 : <%=((List<Object>) pageContext.getAttribute("Ocean")).get(0)%>
            </li>
        </ul>
    </div>

    <br>
    <hr>
    <br>

    <h2>Map 컬렉션</h2>
    <%
        //
        Map<String, String> map = new HashMap<String, String>();
        map.put("한글", "훈민정음");
        map.put("Eng", "English");
        pageContext.setAttribute("King", map);
    %>
    <div>
        <ul>
            <li>영문 key : ${King["Eng"]},${King['Eng']},${King.Eng}</li>
            <li>한글 key : ${King["한글"]},${King['한글']},\${King.한글}</li>
        </ul>

        <%
            Map<String, String> map2 = (Map<String, String>) pageContext.getAttribute("Ki ng");
        %>
        <ul>
            <li><%=map2.get("eng")%>            </li>
            <li><%=map2.get("한글")%>            </li>
        </ul>
    </div>
</div>
</body>
</html>
