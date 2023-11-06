<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-25
  Time: 오후 3:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%--Person 자바 빈즈 import --%>
<%@ page import="com.bitc.fullstack501.jsp1025.Person" %>

<h4>Include 페이지</h4>
<%
  // getAttribute()를 통해서 paceContext에 저장된 데이터 가져오기
  int pInteger2 = (Integer)(pageContext.getAttribute("pageInteger"));
  String pString2 = pageContext.getAttribute("pageString").toString();
  Person pPerson2 = (Person)(pageContext.getAttribute("pagePerson"));
%>

<div class="container mt-5">
<%--  pageContext에서 가져온 내용 화면 출력 --%>
  <ul>
    <li>Integer 객체 : <%=pInteger2%></li>
    <li>String 객체 : <%=pString2%></li>
    <li>Person 객체 : <%=pPerson2.getName()%>, <%=pPerson2.getAge()%></li>
  </ul>
</div>






