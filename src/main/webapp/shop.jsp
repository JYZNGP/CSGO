<%--
  Created by IntelliJ IDEA.
  User: reach
  Date: 2021/7/1
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
    * {
    margin: 0;
    padding: 0;
    }
    body {
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100%;
    }
    html {
    height: 100%;
    width: 100%;
    overflow: hidden;
    margin: 0;
    padding: 0;
    background: url(/img/Desert.jpg) no-repeat 0px 0px;
    background-repeat: no-repeat;
    background-size: 100% 100%;
    -moz-background-size: 100% 100%;
    }


   /* #loginDiv {
    width: 37%;
    display: flex;
    justify-content: center;
    !*align-items: center;*!
    height: 300px;
    background-color: rgba(75, 81, 95, 0.3);
    box-shadow: 7px 7px 17px rgba(52, 56, 66, 0.5);
    border-radius: 5px;
    }
    #logDiv {
        width: 37%;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 300px;
        background-color: rgba(75, 81, 95, 0.3);
        box-shadow: 7px 7px 17px rgba(52, 56, 66, 0.5);
        border-radius: 5px;
    }*/

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

<div style="position:absolute;right:0px;bottom:0px;">

    <form action="BuyServlet" method="post">
    AK-47 血腥运动:<input type="hidden" name="value" value="320" /><input type="hidden" name="gun" value="ak-47血腥运动" />
        <input type="submit" value="购买">
    <img src="/img/xuexingyundong.jpg">
    </form>
</div>

<div style="position:absolute;left:0px;bottom:0px;">
    <form action="BuyServlet" method="post">

        AK-47 二西莫夫:<input type="hidden" name="value" value="820" /><input type="hidden" name="gun" value="ak-47血腥运动" />
        <input type="submit" value="购买">
        <img src="/img/erxi.jpg">
    </form>
</div>
<div style="position:absolute;left:0px;top:0px;">

    <form action="BuyServlet" method="post">
        AK-47 X光:<input type="hidden" name="value" value="3000" /><input type="hidden" name="gun" value="ak-47血腥运动" />
        <input type="submit" value="购买">
        <img src="/img/x.jpg">
    </form>
</div>
<div style="position:absolute;right:0px;top:0px;">
    <form action="BuyServlet" method="post">

        AK-47 火神:<input type="hidden" name="value" value="800" /><input type="hidden" name="gun" value="ak-47血腥运动" />
        <input type="submit" value="购买">
        <img src="/img/huoshen.jpg">
    </form>

    <%--<form action="BuyServlet" method="post">

        AK-47 霓虹骑士:<input type="hidden" name="value" value="400" /><input type="hidden" name="gun" value="ak-47血腥运动" />
        <input type="submit" value="购买">
        <img src="/img/1000.jpg">
    </form>--%>
</div>
</body>
</html>
