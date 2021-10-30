<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <title>Success</title>
    <style>
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
        #loginDiv {
            width: 45%;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 500px;
            background-color: rgba(75, 81, 95, 0.3);
            box-shadow: 7px 7px 17px rgba(52, 56, 66, 0.5);
            border-radius: 5px;
        }
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100%;
        }
    </style>
</head>

<body>
<div id="loginDiv">
    <form action="QueryServlet" method="post">
    <h1>
        查询玩家履历
    </h1><br/>

        <p>用户编号:<input name = "query" id="Bishe" type="text" ></p>

    <div style="text-align: center;margin-top: 30px;">
        <input type="submit" value="查询">
        <input type="button" value="注销" onclick="location.href = 'index.jsp'" />
    </div>
    </form>
    <form action="BackServlet" method="post">
        <div style="text-align: center;margin-top: 30px;">
            <input type="submit" value="返回主页">
        </div>
    </form>
</div>
</body>
</html>