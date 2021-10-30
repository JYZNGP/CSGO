<%@ page language="java" import="java.util.*,com.bbs.entity.Article"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>主页面</title>
<style type="text/css">
table.dataintable {
	margin-top: 15px;
	border-collapse: collapse;
	border: 1px solid #aaa;
	width: 100%;
}

table.dataintable th {
	vertical-align: baseline;
	padding: 5px 15px 5px 6px;
	background-color: #3F3F3F;
	border: 1px solid #3F3F3F;
	text-align: left;
	color: #fff;
}

table.dataintable td {
	vertical-align: text-top;
	padding: 6px 15px 6px 6px;
	border: 1px solid #aaa;
}

table.dataintable tr:nth-child(odd) {
	background-color: #F5F5F5;
}

table.dataintable tr:nth-child(even) {
	background-color: #fff;
}

#newFile {
	margin-top: 20px;
	height: 30px;
}

#newFile a {
	text-decoration: none;
	background: #2f435e;
	color: #f2f2f2;
	padding: 10px 30px 10px 30px;
	font-size: 16px;
	font-family: 微软雅黑, 宋体, Arial, Helvetica, Verdana, sans-serif;
	font-weight: bold;
	border-radius: 3px;
	-webkit-transition: all linear 0.30s;
	-moz-transition: all linear 0.30s;
	transition: all linear 0.30s;
}

#newFile a:hover {
	background: #385f9e;
}
</style>
</head>
<body>
	<!--  利用jstl把页头包含进来 -->
	<c:import url="head.jsp"></c:import>
	<h2 align="center">BBS论坛</h2>
	<div id="newFile" align="right">
		<a id="btnewFile" href="UEditor.jsp">发布新帖</a>
	</div>
	<table class="dataintable" align="center">
		<tr>
			<th width="15%">贴主</th>
			<th width="15%">时间</th>
			<th width="40%">标题</th>
		</tr>

		<tr>

			<c:forEach var="a" items="${sessionScope.articleList}">
				<tr>
				
					<td><c:out value="${a.uName}" /></td>
					<td><c:out value="${a.time}" /></td>
					<td><a href="articleContent?id=${a.id }"><c:out value="${a.title}" />	</a></td>
			
				</tr>
			</c:forEach>
	</table>


	<%-- 构建分页导航 --%>
	共有${requestScope.pageBean.totalRecord}个帖子，共${requestScope.pageBean.totalPage }页，当前为${requestScope.pageBean.pageNum}页
	<br />
	<a href="main.jsp?pageNum=1">首页</a>
	<%--如果当前页为第一页时，就没有上一页这个超链接显示 --%>
	<c:if test="${requestScope.pageBean.pageNum ==1}">
		<c:forEach begin="${requestScope.pageBean.start}"
			end="${requestScope.pageBean.end}" step="1" var="i">
			<c:if test="${requestScope.pageBean.pageNum == i}">
                        ${i}
                    </c:if>
			<c:if test="${requestScope.pageBean.pageNum != i}">
				<a href="main.jsp?pageNum=${i}">${i}</a>
			</c:if>
		</c:forEach>
		<a href="main.jsp?pageNum=${requestScope.pageBean.pageNum+1}">下一页</a>
	</c:if>

	<%--如果当前页不是第一页也不是最后一页，则有上一页和下一页这个超链接显示 --%>
	<c:if
		test="${requestScope.pageBean.pageNum > 1 && requestScope.pageBean.pageNum < requestScope.pageBean.totalPage}">
		<a href="main.jsp?pageNum=${requestScope.pageBean.pageNum-1}">上一页</a>
		<c:forEach begin="${requestScope.pageBean.start}"
			end="${requestScope.pageBean.end}" step="1" var="i">
			<c:if test="${requestScope.pageBean.pageNum == i}">
                        ${i}
                    </c:if>
			<c:if test="${requestScope.pageBean.pageNum != i}">
				<a href="main.jsp?pageNum=${i}">${i}</a>
			</c:if>
		</c:forEach>
		<a href="main.jsp?pageNum=${requestScope.pageBean.pageNum+1}">下一页</a>
	</c:if>

	<%-- 如果当前页是最后一页，则只有上一页这个超链接显示，下一页没有 --%>
	<c:if
		test="${requestScope.pageBean.pageNum == requestScope.pageBean.totalPage}">
		<a href="main.jsp?pageNum=${requestScope.pageBean.pageNum-1}">上一页</a>
		<c:forEach begin="${requestScope.pageBean.start}"
			end="${requestScope.pageBean.end}" step="1" var="i">
			<c:if test="${requestScope.pageBean.pageNum == i}">
                        ${i}
                    </c:if>
			<c:if test="${requestScope.pageBean.pageNum != i}">
				<a href="main.jsp?pageNum=${i}">${i}</a>
			</c:if>
		</c:forEach>
	</c:if>
	<%--尾页 --%>
	<a href="main.jsp?pageNum=${requestScope.pageBean.totalPage}">尾页</a>

</body>
</html>