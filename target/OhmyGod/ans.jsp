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
            width: 60%;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 900px;
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
    <c:forEach items="${bisheinfo}" var="bishe">
    <h1><tr>
        用户编号:<td align = "center">${bishe.id}</td><br/>
        个性签名:<td align = "center">${bishe.subject}</td><br/>
        游戏内ID:<td align = "center">${bishe.teacher}</td><br/>
        游戏担当位置:<td align = "center">${bishe.nature}</td><br/>
        最常用平台:<td align = "center">${bishe.shape}</td><br/>
        是否喜欢饰品:<td align = "center">${bishe.whethernew}</td><br/>
        是否单排:<td align = "center">${bishe.whetheroffc}</td><br/>
        官匹段位:<td align = "center">${bishe.reason}</td><br/>
        最常打地图:<td align = "center">${bishe.source}</td><br/>
    </tr>
        </c:forEach>
    </h1><br/>
        <form action="BackServlet" method="post">
            <div style="text-align: center;margin-top: 30px;">
                <input type="submit" value="返回主页">
            </div>
        </form>
</div>
</body>
</html>