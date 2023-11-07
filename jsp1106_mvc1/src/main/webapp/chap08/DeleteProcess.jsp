<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-06-006
  Time: 오전 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.bitc.jsp1106_mvc1.database.BoardDao" %>
<%@ page import="com.bitc.jsp1106_mvc1.utils.JSFunction" %>

<%
    request.setCharacterEncoding("UTF-8");

    int num = Integer.parseInt(request.getParameter("num"));
    String id = request.getParameter("id");
//    글 삭제 시 글 작성자가 현재 로그인한 사용자 인지 확인
//    if (id.equals(session.getAttribute("userId").toString())){
        if (id.equals("test1")){
//        작성자와 로그인한 사용자가 같으면 데이터 베이스에 연결 후 글 삭제
        BoardDao dao = new BoardDao(application);
        dao.dbOpen();
        int result = dao.deletePost(num);
        dao.dbClose();

        if (result == 1){
            JSFunction.alertLocation("삭제되었습니다.","./List.jsp",out);
//            out.print("<script>");
//            out.print("alert('삭제되었습니다..');");
//            out.print("location.href = './List.jsp';");
//            out.print("</script>");
        }else {
            JSFunction.alertBack("삭제 중 오류가 발생했습니다.",out);
//            out.print("<script>");
//            out.print("alert('삭제 중 오류가 발생했습니다.');");
//            out.print("history.back();");
//            out.print("</script>");
        }
    }else {
            JSFunction.alertBack("작성자 본인만 삭제할 수 있습니다.", out);
        //작성자와 로그인한 사용자가 같지 않으면 뒤로 가기
//        out.print("<script>");
//        out.print("alert('작성자 본인만 삭제할 수 있습니다.');");
//        out.print("history.back();");
//        out.print("</script>");
    }



%>
