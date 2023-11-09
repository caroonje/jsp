<%@ page import="com.bitc.jsp1106_mvc1.database.MemberDao" %>
<%@ page import="com.bitc.jsp1106_mvc1.database.MemberDto" %>
<%@ page import="com.bitc.jsp1106_mvc1.utils.JSFunction" %><%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-08-008
  Time: 오전 9:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    String name = request.getParameter("name");

//    DTO 객체에 파라미터 값 지정
    MemberDto member = new MemberDto();
    member.setId(id);
    member.setPass(pwd);
    member.setName(name);
//데이터 베이스를제어하기 위한 DAO타입 객체 생성
    MemberDao dao = new MemberDao(application);
    dao.dbOpen();
//    DTO 객체를 매개 변수로 사용하는 insertMember를 실행하여 회원가입
    int result = dao.insertMember(member);
    dao.dbClose();

    if (result > 0 ){
//        회원가입 성공시 로그인 페이지로 이동
        JSFunction.alertLocation("회원가입 되었습니다","./LoginForm.jsp",out);
    }else{
//        실패시 회원가입 페이지로 돌아감
        JSFunction.alertBack("회원가입 중 오류가 발생했습니다",out);
    }

%>
