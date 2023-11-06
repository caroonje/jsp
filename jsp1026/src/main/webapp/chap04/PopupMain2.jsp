<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-26-026
  Time: 오후 12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    //      팝업창을 화면에 표시할지 여부를 설정
    String popupMode = "on";
    //클라이언트에서 전달된 모든 쿠키 정보를 가져옴
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
//        반복문을 사용하여 가져온 쿠키 정보 출력
        for (Cookie c : cookies) {
//            쿠키이름 가져오기
            String cookieName = c.getName();
//            쿠키 값 가져오기
            String cookieValue = c.getValue();
//            가져온 쿠키의 이름이 PopupClose와 같은지 비교
            if (cookieName.equals("PopupClose")) {
//                같을 경우 쿠키값을 쿠키모드 변수에 저장
                popupMode = cookieValue;
            }
        }
    }
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>쿠키를 이용한 팝업창이 있는 사이트</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <%--    jquery 라이브러리 로드--%>
    <%--    bootstrap이 4버전 까지는 내부적으로 jquery를 사용하고 있었음 ,
            bootstrap5 부터 jquery를 제거하고 동작하도록 만들어짐--%>
    <%--    bootstrap4 까지는 내부적으로 jquery를 사용하기 때문에 jquery가 bootstrap 보다 먼저 로딩되어야 bootstrap이 정상적으로 동작할 수 있었음--%>
    <%--    bootstrap5 에서는 jquery를 사용하지 않지만 jquery와 bootstrap5를 동시에 사용할 경우 이왕이면 jquery를 먼저 로딩하는 것이 좋음--%>
    <script src="/resources/js/jquery-3.7.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>

    <style>
        div #popup {
            position: absolute;
            top: 100px;
            left: 50px;
            color: yellow;
            width: 270px;
            height: 100px;
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
        <%--        jquery를 사용 html이 모두 로딩된 후 아래의 자바스크립트를 실행--%>
        $(document).ready(function () {

                 // id값이 'clostBtn'인 html 태그에 click 이벤트 등록
            $("#closeBtn").on("click", function () {
                    // id값이 "popup"인 html 태그를 숨김
                    $("#popup").hide();
                    // 태그 선택자를 통해서 input 태그를 선택
                    // 상태 선택자를 통해서 checkbox 인 것을 선택하여 val() 함수로 value 값을 가져옴
                    let chkVal = $("input:checkbox[id=inactiveToday]:checked").val();

                    // 변수 chkVal이 1과 같으면 ajax 통신
                    if (chkVal == 1) {
                        // ajax 통신 : 자바스크립트를 사용하여 서버와 직접 자바스크립트가 직접 통신을 하고 서버에서 데이터를 받아오는 통신 방식
                        // ajax 통신 방식은 비동기 통신 방식으로 자바스크립트가 서버와 통신 시 현재 화면은 그대로 두고, 데이터만 서버와 주고 받을 수 있음
                        // 자바스크립트가 서버에서 받아온 데이터로 화면을 변경할 수 있음 (화면 전체 변경이 아니고 일부만 변경함)
                        $.ajax({
                                // 접속할 서버 주소
                                url: "./PopupCookie.jsp",
                                // 서버와 통신할 방식
                                type: "GET",
                                // 서버에 전송할 데이터
                                data: {inactiveToday: chkVal},
                                // 서버에서 전달받을 데이터의 타입 설정(text,html,json)
                                dataType: "text",
                                // 서버와 통신이 성공했을 경우 실행할 내용
                                success: function (resData) {
                                    // 서버에서 전달한 내용이 있을경우 현재 페이지 새로 고침
                                    if (resData != "") location.reload();
                                }
                        });
                    }
                });
        });
    </script>
<%--    <script>--%>
<%--        //자바스크립트가 html 태그의 로드가 끝난 이후에 동작하기--%>
<%--        //window  : 웹 브라우저--%>
<%--        //DOMContentLoaded : html컨텐츠 로딩되고 난뒤--%>
<%--        window.addEventListener("DOMContentLoaded", function () {--%>
<%--            //querySelector() : 자바스크립트를 사용하여 html 태그 1개 검색하여 찾아옴--%>
<%--            //querySelectorAll() : 자바스크립트를 사용하여 html 태그 중 지정한 선택자를 모두 가지고옴--%>
<%--            //getElementById() : 지정한 id 값을 가지고 있는 html태그를 가져옴--%>
<%--            let closeBtn = document.querySelector("#closeBtn");--%>
<%--            // 순수 자바스크립트를 사용하여 버튼의 클릭 이벤트 구현--%>
<%--            closeBtn.addEventListener("click", function () {--%>
<%--                let popupWindow = document.querySelector("#popup");--%>
<%--                // 자바스크립트를 이용하여 css속성 중 display 속성을 수정함--%>
<%--                popupWindow.style.display = "none";--%>
<%--            });--%>
<%--        });--%>
<%--    </script>--%>

</head>
<body>
<div class="container mt-5">
    <h2>팝업 메인 페이지 (쿠키사용)</h2>
    <%
        for (int i = 0; i <= 10; i++) {
            out.print("현재 팝업창은 " + popupMode + "상태 입니다. <br>");
        }
        if (popupMode.equals("on")) {
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
