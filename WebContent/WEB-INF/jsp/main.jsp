<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>��ҳ</title>
<!-- ����jquery -->
<script type="text/javascript" src="static/js/jquery-3.3.1.min.js"></script>
<!-- ������ʽ -->
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
		<h1>��ҳ</h1>
		��ǰ�û���${user.username}
	</div>
	<hr>
	<ul style="text-align:center" class="list-unstyled">
		<li><a href="listTask">�鿴����</a><li>
		<li><a href="listDesire">�����̵�</a><li>
	</ul>
</body>
</html>