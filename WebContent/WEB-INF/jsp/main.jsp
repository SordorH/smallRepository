<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>主页</title>
<!-- 引入jquery -->
<script type="text/javascript" src="static/js/jquery-3.3.1.min.js"></script>
<!-- 引入样式 -->
<link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<style>
	ul{
		width:100px;
		margin: 0 auto;
	}
</style>
</head>
<body>
	<div align="center">
		<h1>主页</h1>
		当前用户：${user.username}
	</div>
	<hr>
	<ul style="text-align:center" class="list-unstyled">
		<li><a href="listTask">查看任务</a><li>
		<li><a href="listDesire">欲望商店</a><li>
	</ul>
</body>
</html>