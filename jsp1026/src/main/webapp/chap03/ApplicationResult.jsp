<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-26-026
  Time: 오전 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Set" %>
<%@ page import="com.bitc.jsp1026.Person" %>
<%@ page import="java.util.Iterator" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>application 영역</title>

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
  <h2>application 영역의 속성 읽기</h2>
  <%
//      Object obj = application.getAttribute("maps");
//      if (obj instanceof Map<String,Person>){
//
//      }
      //application 영역에 저장되어 있는 데이터를 getAttribute()로 가져옴
    Map<String, Person> maps = (Map<String, Person>) application.getAttribute("maps");

//      가져온 데이터가 null인지 확인
    if (maps != null){
//      Map 타입의 데이터에서 key만 모두 가져옴
    Set<String> keys = maps.keySet();
//    발전된 for문을 사용하여 key 이름을 하나씩 모두 가져옴
    for (String key : keys){
//        가져온 key이름을 바탕으로 저장된 Person 객체를 가져옴
      Person person = maps.get(key);
      out.print(String.format("이름 : %s, 나이 : %d<br>", person.getName(),person.getAge()));
    }
    }else {
        out.print("<h3 class=text-center>application 영역에 저장된 데이터가 없습니다. </h3>");
    }

//    Iterator<String> iter = keys.iterator();
//    while (iter.hasNext()){
//        String key = iter.next();
//        Person p = maps.get(key);
//        out.print("이름 : " + p.getName() + ", 나이 : " + p.getAge());
//    }
  %>
</div>

</body>
</html>
