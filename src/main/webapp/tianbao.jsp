<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>register</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        html {
            height: 100%;
            width: 100%;
            overflow: hidden;
            margin: 0;
            padding: 0;
            background: url(img/Desert.jpg) no-repeat 0px 0px;
            background-repeat: no-repeat;
            background-size: 100% 100%;
            -moz-background-size: 100% 100%;
        }

        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100%;
        }

        #loginDiv {
            width: 45%;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 850px;
            background-color: rgba(75, 81, 95, 0.3);
            box-shadow: 7px 7px 17px rgba(52, 56, 66, 0.5);
            border-radius: 5px;
        }

        #name_trip {
            margin-left: 50px;
            color: red;
        }

        p,
        .sexDiv {
            margin-top: 10px;
            margin-left: 20px;
            color: azure;
        }

        .sexDiv>input,
        .hobby>input {
            width: 30px;
            height: 17px;
        }

        input,
        select {
            margin-left: 15px;
            border-radius: 5px;
            border-style: hidden;
            height: 30px;
            width: 300px;
            background-color: rgba(216, 191, 216, 0.5);
            outline: none;
            color: #f0edf3;
            padding-left: 10px;
        }

        .button {
            border-color: cornsilk;
            background-color: rgba(100, 149, 237, .7);
            color: aliceblue;
            border-style: hidden;
            border-radius: 5px;
            width: 100px;
            height: 31px;
            font-size: 16px;
        }

        .introduce {
            margin-left: 110px;
        }

        .introduce>textarea {
            background-color: rgba(216, 191, 216, 0.5);
            border-style: hidden;
            outline: none;
            border-radius: 5px;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            margin-top: 20px;
            color: #f0edf3;
        }

        b {
            margin-left: 50px;
            color: #FFEB3B;
            font-size: 10px;
            font-weight: initial;
        }
    </style>
</head>

<body>
<div id="loginDiv">
    <form action="BiServlet" method="post">
        <h1>个人履历</h1>
        <p>个人签名:<input name = "Bishe" id="Bishe" type="text" autofocus required></p>
        <p>游戏内ID:<input name = "teacher" id="teacher" type="text"></p>
        <p>
            游戏担当位置:
            <select name="type1" id="userType1">
                <option value="0">请选择</option>
                <option value="突破手">突破手</option>
                <option value="狙击手">狙击手</option>
                <option value="自由人">自由人</option>
                <option value="补位">补位</option>
            </select>
            <label id="type_trip1"></label>
        </p>
        <p>
            最常用平台:
            <select name="type2" id="userType2">
                <option value="0">请选择</option>
                <option value="官匹国服">官匹国服</option>
                <option value="官匹国际服">官匹国际服</option>
                <option value="5E对战平台">5E对战平台</option>
                <option value="完美对战平台">完美对战平台</option>
                <option value="FaceIt">FaceIt</option>
            </select>
            <label id="type_trip2"></label>
        </p>
        <p>
            是否喜欢饰品:
            <select name="type3" id="userType3">
                <option value="0">请选择</option>
                <option value="是">是</option>
                <option value="否">否</option>
            </select>
            <label id="type_trip3"></label>
        </p>
        <p>
            是否单排上分:
            <select name="type4" id="userType4">
                <option value="0">请选择</option>
                <option value="是">是</option>
                <option value="否">否</option>
            </select>
            <label id="type_trip4"></label>
        </p>

        <div class="sexDiv">
            官匹段位:
            <p><input class="userSex" name="reason" value="白银" type="radio"style="zoom:50%;">白银段</p>
            <p><input class="userSex" name="reason" value="黄金" type="radio" style="zoom:50%;">黄金段</p>
            <p><input class="userSex" name="reason" value="AK" type="radio"style="zoom:50%;">AK段</p>
            <p><input class="userSex" name="reason" value="菊花" type="radio" style="zoom:50%;">菊花段</p>
            <p><input class="userSex" name="reason" value="老鹰" type="radio" style="zoom:50%;">老鹰段</p>
            <p><input class="userSex" name="reason" value="地球" type="radio" style="zoom:50%;">地球段</p>
            <label id="sex_trip"></label>
        </div>
        <div class="sexDiv">
            最常打的地图:
            <p><input class="UserSex" name="source" value="DustⅡ" type="radio"style="zoom:50%;">DustⅡ</p>
            <p><input class="UserSex" name="source" value="Inferno" type="radio"style="zoom:50%;">Inferno</p>
            <p><input class="userSex" name="source" value="Mirage" type="radio"style="zoom:50%;">Mirage</p>
            <p><input class="userSex" name="source" value="Overpass" type="radio"style="zoom:50%;">Overpass</p>
            <p><input class="userSex" name="source" value="Nuke" type="radio"style="zoom:50%;">Nuke</p>
            <label id="sex_trip2"></label>
        </div>

        <%--<p>
            出生日期:
            <input id="birthday" type="date">
            <label id="birthday_trip"></label>
        </p>
--%>
        <%--<p class="hobby">
            兴趣爱好:
            <input type="checkbox" name="hobby" value="read">阅读
            <input type="checkbox" name="hobby" value="music">音乐
            <input type="checkbox" name="hobby" value="sport">运动
            <label id="hobby_trip"></label>
        </p>

        <p>
            电子邮件:
            <input id="email" type="email" required>
            <label id="emil_trip"></label>
        </p>


        <p> 自我介绍:</p>
        <div class="introduce">
            <textarea name="introduce" cols="30" id="introduceText" required rows="10"></textarea>
            <label id="introduce_trip"></label>
        </div>
--%>
        <p style="text-align: center;">
            <input type="submit" class="button" <%--onblur="checkForm()" onclick="return submitT()" --%>value="提交">
            <input type="reset" class="button" value="重置">
        </p>
    </form>
    <form action="BackServlet" method="post">
        <div style="text-align: center;margin-top: 30px;">
            <input type="submit" value="返回主页">
        </div>
    </form>
</div>

</body>
<%--<script type="text/javascript">
    function trip(obj, trip) {
        document.getElementById(obj).innerHTML = "<b>" + trip + "</b>";
    }

    function checkSex() {
        var sexNum = document.getElementsByName("sex");
        var sex = "";
        for (let i = 0; i < sexNum.length; ++i) {
            if (sexNum[i].checked) {
                sex = sexNum[i];
            }

        }
        if (sex == "") {
            trip("sex_trip", "ERROR!!");
            return false;
        } else {
            trip("sex_trip", "OK!!");
        }
    }

    function checkHobby() {
        var hobbyNum = document.getElementsByName("hobby");
        var hobby = "";
        for (let i = 0; i < hobbyNum.length; ++i) {
            if (hobbyNum[i].checked) {
                hobby = hobbyNum[i];
            }
        }
        if (hobby == "") {
            trip("hobby_trip", "ERROR!!");
            return false;
        } else {
            trip("hobby_trip", "OK!!");

        }
    }

    function checkSelect() {
        var myselect = document.getElementById("userType");
        var index = myselect.selectedIndex;
        var checkValue = myselect.options[index].value;
        if (checkValue == 0) {
            trip("type_trip", "请选择!!");
            return false;
        } else {
            trip("type_trip", "OK!!");
        }
    }

    function checkForm() {
        checkSelect();
        checkHobby();
        checkSex();

        var trip = document.getElementsByName("em");
        var tripV = trip.innerHTML();
        //获取用户名输入项
        var userNname = document.getElementById("userNname");
        var uName = userNname.value;
        if (uName.length < 1 || uName.length > 10) {
            trip("name_trip", "账号长度为1-10位!!");
            return false;
        } else {
            trip("name_trip", "OK!!");

        }

        //密码长度大于6 和确认必须一致
        var password = document.getElementById("password");
        var userPass = password.value;
        if (userPass.length < 6) {
            trip("password_trip", "密码要>6位!!");
            return false;
        } else {
            trip("password_trip", "OK!!");
        }

        //获取确认密码框的值 var
        var surePassword = document.getElementById("surePassword");
        var surePass = surePassword.value;
        if (userPass != surePass) {
            trip("surePassword_trip", "两次密码不一致!!");
            return false;
        }

        //校验邮箱:/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/
        var inputEmail = document.getElementById("email");
        var uEmail = inputEmail.value;
        if (!/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/.test(uEmail)) {
            trip("emil_trip", "邮箱不合法!!");
            return false;
        } else {
            trip("emil_trip", "OK!!");
        }

        // 校验自我介绍
        var introduceText = document.getElementById("introduceText");
        var introduce = introduceText.value;
        if (introduce.length < 3 || uName.length > 60) {
            trip("introduce_trip", "长度为3-50字!!");
            return false;
        } else {
            trip("introduce_trip", "OK!!");
        }

        return true;
    }

    function submitT() {
        if (checkForm()) {
            return true;
        } else {
            return false;
        }
    }
</script>--%>
</html>
