<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
<%
		if (session.getAttribute("uname") == null || session.getAttribute("uname").equals("")) {
	%>
	<a href="login">去登陆</a>
	<%
		} else {
	%>
	欢迎<%=session.getAttribute("uname")%>登录BBS论坛&nbsp;&nbsp;&nbsp;
	<a href="logout">下线</a>
	<%
		}
	%>
</body>
</html>