<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>ע��</title>
<!-- ����jquery -->
<script type="text/javascript" src="static/js/jquery-3.3.1.min.js"></script>
<!-- ������ʽ -->
<link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<div align="center">
		<h1>ע��</h1>
</div>
<hr/>
<h1>${msg }</h1>
<form action="registerUser" method="post">
		<table align="center">
			<tr>
				<td>�û���</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td><input type="submit" value="ע��"></td>
			</tr>
		</table> 
	</form>
</body>
</html>