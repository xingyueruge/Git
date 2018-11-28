<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <style>
<!--
.datalist{
    width:100%;
	border:1px solid #429fff;	/* 表格边框 */
	font-family:Arial;
	border-collapse:collapse;	/* 边框重叠 */
}
.datalist caption{
	padding-top:3px;
	padding-bottom:2px;
	font:bold 1.1em;
	background-color:#f0f7ff;
	border:1px solid #429fff;	/* 表格标题边框 */
}
.datalist th{
	border:1px solid #429fff;	/* 行、列名称边框 */
	background-color:#d2e8ff;
	font-weight:bold;
	padding-top:4px; padding-bottom:4px;
	padding-left:10px; padding-right:10px;
	text-align:center;
}
.datalist td{
	border:1px solid #429fff;	/* 单元格边框 */
	text-align:right;
	padding:4px;
}
-->
</style>
  <body>
  <form action="app/inuser_add" method="post">

	<table width="100%" border="0" bgcolor="#429fff">
		<tr>
			<td width="3%"></td>
			<td width="80%"></td>
			<td width="2%"><input type="submit" value="保存"  ></td>
			<td width="5%"><input type="button" value="返回" onclick="history.go(-1)" ></td>
		</tr>
	</table>
    <table class="datalist" width="70%">

	
	<tr>
		<th width="30%"  scope="row">用户名：</th>
		<td width="20%"><input type="text" name="u.logname"></td>
		<th width="30%" scope="row">密码：</th>
		<td width="20%" ><input type="text" name="u.keyword"></td>
		
	
	</tr>
	<tr>
		<th scope="row">性别：</th>
		<td>
			<select name="u.usersex">
				<option value="1">男</option>
				<option value="0">女</option>
			
			</select>
		
		
		</td>
		<th scope="row">年龄：</th>
		<td><input type="text" name="u.userage"></td>
	
	</tr>
	<tr>
		<th scope="row">邮编：</th>
		<td><input type="text" name="u.userzipcode"></td>
		<th scope="row">电话号码：</th>
		<td><input type="text" name="u.usertelephone"></td>
	
	</tr>	
    <tr>
		<th scope="row">家庭住址：</th>
		<td colspan="3"><input type="text" name="u.useraddress" style="width: 100%"></td>
	</tr>
	
</table>
</form>
  </body>
</html>
