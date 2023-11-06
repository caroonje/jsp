<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-01-001
  Time: 오후 3:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%--미리 생성해놓은 DTO,DAO 클래스를 import--%>
<%@ page import="com.bitc.jsp1101.database.MemberDAO" %>
<%@ page import="com.bitc.jsp1101.database.MemberDTO" %>

<%
    //클라이언트에서 전달받은 사용자 id/pw 를 가져옴
    request.setCharacterEncoding("UTF-8");
    String userId = request.getParameter("userId");
    String userPw = request.getParameter("userPw");

//    DAO 객체 생성
    MemberDAO dao = new MemberDAO();
//    DAO 객체의 멤버인 dbOpen() 메소드를 사용하여 DB 연결
    dao.dbOpen();
//    DAO 객체의 멤버인 isMember() 메소드를 사용하여 사용자가 전달한 id/pw를 사용하는 데이터가 있는지 확인
    boolean result = dao.isMember(userId,userPw);

    if (result == true){
        out.print("사용자가 있습니다.");
//        DAO 객체의 멤버인 getMember() 메소드를 사용하여 사용자가 전달한 id와 일치하는 데이터를 모두 가져옴
        MemberDTO member = dao.getMemberInfo(userId);

//        세션에 사용자 정보 저장
        session.setAttribute("userId",member.getId());
        session.setAttribute("userName",member.getName());
        session.setAttribute("userRegidate",member.getRegidate());
        session.setMaxInactiveInterval(60*10);


        response.sendRedirect("LoginOk2.jsp");
    }else {
        response.sendRedirect("LoginFail2.jsp");

    }
//    데이터 베이스 연결 종료
    dao.dbClose();


%>