<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-08-008
  Time: 오후 12:04
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
<div class="container mt-5">
    <div class="row">
        <div class="col-sm-4 mx-auto">
            <form action="FormResult.jsp" method="post">
                <div class="my-3">
                    <label for="user-name" class="form-label">이름 : </label>
                    <input type="text" class="form-control" id="user-name" name="userName">
                </div>
                <div class="my-3">
                    <label for="user-gender" class="form-label">성별 : </label>
                    <div>
                        <div class="form-check form-check-inline" id="user-gender">
                            <input type="radio" class="form-check-input" id="user-gender1" name="userGender"
                                   value="Man">
                            <label for="user-gender1" class="form-check-label">남자</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input type="radio" class="form-check-input" id="user-gender2" name="userGender"
                                   value="Woman">
                            <label for="user-gender2" class="form-check-label">여자</label>
                        </div>
                    </div>
                </div>
                <div class="my-3">
                    <label for="user-grade" class="form-label">학력 : </label>
                    <select class="form-control" name="userGrade" id="user-grade">
                        <option value="ele">초딩</option>
                        <option value="mid">중딩</option>
                        <option value="high">고딩</option>
                        <option value="uni">대딩</option>
                    </select>
                </div>
                <div class="my-3">
                    <label for="user-inter" class="form-label">관심사항 : </label>
                    <div id="user-inter">
                        <div class="form-check form-check-inline">
                            <input type="checkbox" class="form-check-input" id="user-inter1" name="userInter"
                                   value="opl">
                            <label for="user-inter1" class="form-check-label">정치</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input type="checkbox" class="form-check-input" id="user-inter2" name="userInter"
                                   value="eco">
                            <label for="user-inter2" class="form-check-label">경제</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input type="checkbox" class="form-check-input" id="user-inter3" name="userInter"
                                   value="ent">
                            <label for="user-inter3" class="form-check-label">연애</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input type="checkbox" class="form-check-input" id="user-inter4" name="userInter"
                                   value="spo">
                            <label for="user-inter4" class="form-check-label">운동</label>
                        </div>
                    </div>
                </div>
                <div class="my-3 d-grid">
                    <button type="submit" class="btn btn-primary">확인</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
