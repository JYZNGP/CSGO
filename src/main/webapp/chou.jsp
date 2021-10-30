
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>choujiang</title>
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
        *{
            padding: 0;
            margin: 0;
        }
        #uls{
            width: 500px;
            height: 500px;
            margin: 50px auto;
        }
        li{
            width: 150px;
            height: 150px;
            background: skyblue;
            float: left;
            list-style: none;
            margin:5px;
            color: #fff;
            text-align: center;
            line-height: 150px;
            font-size: 20px;
            font-weight: bold;
        }
        #uls li button{
            width: 50px;
            height: 30px;
        }
        .light{
            width: 150px;
            height: 150px;
            background: #666;
            color: #fff;
        }
    </style>
</head>
<body>
<hi align = "center">100$可抽取一次！</hi>
<ul id='uls'>
    <li>ak-47血腥运动</li>
    <li>ak-47表面淬火</li>
    <li>ak-47二西莫夫</li>
    <li>ak-47火神</li>
    <li><button id='btn1'>开始</button> <button id='btn2'>停止</button></li>
    <li>ak-47水裁竹</li>
    <li>ak-47霓虹骑士</li>
    <li>ak-47x射线</li>
    <li>ak-47红线</li>
</ul>
<script>
    var btn1=document.getElementById("btn1");
    var btn2=document.getElementById("btn2");
    var arr=[0,1,2,5,8,7,6,3];//按这个下标依次旋转
    var lis=document.getElementsByTagName("li");
    var num=0;
    var pick = ["ak-47血腥运动","ak-47表面淬火","ak-47二西莫夫","ak-47火神","ak-47水裁竹","ak-47霓虹骑士","ak-47x射线","ak-47红线"];
    var str;//定义初识下标
    btn1.onclick =function(){
        btn1.disabled=true;
        time=setInterval(function(){
            lis[arr[num]].className="";
            num++;
            if(num>7){
                num=0;
            }
            str = pick[num];
            lis[arr[num]].className="light";
        },10)
    }
    btn2.onclick=function dispatchServlet(){
        btn1.disabled=false;
        clearInterval(time);
        alert(str);
        var tmp = document.createElement("form");
        var action = "ChouServlet?param1="+str;
        tmp.action = action;
        tmp.method = "post";
        document.body.appendChild(tmp);
        tmp.submit();
        return tmp;
    }
</script>
</body>
</html>