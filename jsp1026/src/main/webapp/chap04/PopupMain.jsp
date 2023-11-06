<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-26-026
  Time: 오후 12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    //팝업창을 화면에 표시할지 여부를 설정
  String popupMode = "on";
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>쿠키를 이용한 팝업 관리 ver 0.1 </title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>

    <style>
      div #popup{
        position: absolute; top: 100px; left: 50px; color: yellow;
        width: 270px; height: 100px;
        background: rgb(128, 128, 128);
      }

      div #popup > div {
        position: relative;
        background-color: #fff;
        top: 0;
        border: 1px solid rgb(128, 128, 128);
        padding: 10px;
        color: black;
      }
    </style>
    <script>
            //자바스크립트가 html 태그의 로드가 끝난 이후에 동작하기
            //window  : 웹 브라우저
            //DOMContentLoaded : html컨텐츠 로딩되고 난뒤
        window.addEventListener("DOMContentLoaded",function () {
            //querySelector() : 자바스크립트를 사용하여 html 태그 1개 검색하여 찾아옴
            //querySelectorAll() : 자바스크립트를 사용하여 html 태그 중 지정한 선택자를 모두 가지고옴
            //getElementById() : 지정한 id 값을 가지고 있는 html태그를 가져옴
            let closeBtn = document.querySelector("#closeBtn");
            // 순수 자바스크립트를 사용하여 버튼의 클릭 이벤트 구현
            closeBtn.addEventListener("click",function () {
                let popupWindow = document.querySelector("#popup");
                // 자바스크립트를 이용하여 css속성 중 display 속성을 수정함
                popupWindow.style.display = "none";
            });
        });
    </script>

</head>
<body>
<div class="container mt-5">
  <h2>팝업 메인 페이지 (ver 0.1)</h2>
  <%
    for (int i =0; i<=10; i++){
      out.print("현재 팝업창은 " + popupMode + "상태 입니다. <br>");
    }
    if (popupMode.equals("on")){
  %>
  <div id="popup">
    <h2>공지사항 팝업입니다.</h2>
    <div>
      <form action="" name="popFrm">
        <input type="checkbox" id="inactiveToday" value="1">
        하루동안 열지 않음
        <input type="button" value="닫기" id="closeBtn">
      </form>
    </div>
  </div>
  <%
    }
  %>
</div>
</body>
</html>
