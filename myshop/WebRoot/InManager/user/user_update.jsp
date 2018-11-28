<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%><%@page import="com.qrsx.pojo.User"%><%@page import="com.qrsx.shop.ShopManager"%>


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
 <style>
<!--
.datalist{
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
  </head>
  <%
  	String uid=request.getParameter("uid");
  	
  	User u=ShopManager.getUserById(uid);
  	String boy="";
  	String gril="";
  	if("1".equals(u.getUsersex())){
  	 boy="checked='checked'";
     }else
 	{
 	gril="checked='checked'";
  	}
  	
  	
  
   %>
  <body>
    <form action="app/inuser_update" method="post">
    
    <table width="100%" border="0" bgcolor="#429fff">
		<tr>
			<td width="25%"><strong>用户修改</strong></td>
			<td width="70%"></td>
			<td width="2%"><input type="submit" value="保存"></td>
			<td width="5%"><input type="button" value="返回" onclick="history.go(-1)" ></td>
		</tr>
	</table>
    <table class="datalist">

	<input type="hidden" name="u.userid" value="<%=u.getUserid() %>">
	<tr>
		<th width="30%" scope="row">用户名：</th>
		<td width="20%"><input type="text" name="u.logname" value="<%=u.getLogname() %>"></td>
		<th width="30%" scope="row">密码：</th>
		<td width="20%"><input type="text" name="u.keyword" value="<%=u.getKeyword() %>"></td>
	
	</tr>
	<tr>
		<th scope="row">性别：</th>
		<td>男<input type="radio" name="u.usersex" <%=boy %> value="1" >
		          女<input type="radio" name="u.usersex" <%=gril %> value="0">
		</td>
		<th scope="row" >年龄：</th>
		<td><input type="text" name="u.userage" value="<%=u.getUserage() %>">
		
		
		</td>
	
	</tr>
	<tr>
		<th scope="row" >邮编：</th>
		<td><input type="text" name="u.userzipcode" value="<%=u.getUserzipcode() %>"></td>
		<th scope="row">电话号码：</th>
		<td><input type="text" name="u.usertelephone" value="<%=u.getUsertelephone() %>"></td>
	
	</tr>	
    <tr>
		<th colspan="1" scope="row">家庭住址：</th>
		<td colspan="3"><input type="text" name="u.useraddress" value="<%=u.getUseraddress() %>" style="width: 100%"></td>
	</tr>
	
</table>
</form>
  </body>
</html>
