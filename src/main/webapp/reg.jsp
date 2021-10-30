<%--<!DOCTYPE html>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>login</title>
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
            width: 37%;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 300px;
            background-color: rgba(75, 81, 95, 0.3);
            box-shadow: 7px 7px 17px rgba(52, 56, 66, 0.5);
            border-radius: 5px;
        }

        #name_trip {
            margin-left: 50px;
            color: red;
        }

        p {
            margin-top: 30px;
            margin-left: 20px;
            color: azure;
        }

        input {
            margin-left: 15px;
            border-radius: 5px;
            border-style: hidden;
            height: 30px;
            width: 140px;
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
    </style>
</head>

<body>
<div id="loginDiv">
    <form action="RegServlet" method="post">
        <h1 style="text-align: center;color: aliceblue;">REGISTER</h1>
        <p>User Name:<input name="username" id="userNname" type="text" autofocus required></p>

        <p>Password:<input name="password" id="passWord" type="text" required></p>
        <p>Email:<input name="email" id="email" type="text" required></p>

        <div>
            Status:
            <input name="sex" value="男" type="radio" style="zoom:50%;">男
            <input name="sex" value="女" type="radio" style="zoom:50%;">女
            <input name="sex" value="" type="radio" style="zoom:50%;">保密
            <label id="sex_trip"></label>
        </div>

        <div style="text-align: center;margin-top: 30px;">
            <input type="submit" value="注册">
            <input type="button" value="返回" onclick="location.href = 'index.jsp'" />
        </div>
    </form>
</div>

</body>
</html>