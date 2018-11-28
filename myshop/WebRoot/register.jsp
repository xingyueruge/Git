<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%><%@page import="com.qrsx.pojo.User"%><%@page import="com.qrsx.shop.ShopManager"%><%@page import="com.qrsx.pojo.Orderlist"%><%@page import="com.qrsx.pojo.Commodity"%>




<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="cc"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'orderlist.jsp' starting page</title>
    
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
    width:800;
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
       <cc:import url="head.jsp"></cc:import> 
    <div style="margin-left: 284px">
    
    <form action="app/outuser_add" method="post">

	
    <table class="datalist">

	
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
	
		<tr>
			<td></td>
			<td><input type="submit" value="确定"  ></td>
			<td><input type="button" value="返回" onclick="history.go(-1)" ></td>
			<td></td>
		</tr>
</table>
</form>
  
   
    
    </table>
    
    
  
    </div>
    <cc:import url="tail.jsp"></cc:import> 
  </body>
  </body>
</html>
