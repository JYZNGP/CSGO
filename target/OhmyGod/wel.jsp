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
        width: 37%;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 400px;
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
<c:forEach items="${userinfo}" var="user">
    <h1><tr>
        编号:<td align = "center">${user.id}</td><br/>
        用户名:<td align = "center">${user.username}</td><br/>
        口令:<td align = "center">${user.password}</td><br/>
        邮箱:<td align = "center">${user.email}</td><br/>
        您的余额:<td align = "center">${user.money}</td><br/>
    </tr>
</c:forEach>
    </h1><br/>
    <div style="text-align: center;margin-top: 30px;">
        <input type="button" value="填写个人履历" onclick="location.href = 'tianbao.jsp'" ><br/>
        <input type="button" value="查询用户" onclick="location.href = 'query.jsp'" ><br/>
        <input type="button" value="饰品抽奖" onclick="location.href = 'chou.jsp'" ><br/>
        <input type="button" value="购买饰品" onclick="location.href = 'shop.jsp'" ><br/>
        <form action="DataServlet" method="post">
                <input type="submit" value="查看个人仓库">
        </form>
        <input type="button" value="余额充值" onclick="location.href = 'pay.jsp'" ><br/>
        <input type="button" value="注销" onclick="location.href = 'index.jsp'" ><br/>

    </div>
</div>
</body>
</html>