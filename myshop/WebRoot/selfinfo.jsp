<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%><%@page import="com.qrsx.pojo.User"%>



<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="cc"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'selfinfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <style type="text/css">
#mytable { 
width: 795px; 
padding: 0; 
margin: 0; 
border-collapse: collapse;
border:0px solid #90BCFF;
text-align: center;
} 


 
 </style>
  </head>
  <%
  	
  User user=(User)session.getAttribute("user");


   %>
  <body>
    <cc:import url="head.jsp"></cc:import> 
    <div style="margin-left: 283px;width:798px; border: 1px solid #90BCFF">
    
    <form action="app/outuser_update" method="post">
    <table id="mytable" style="font-size: 12px" border="0">
    	<tr>
    	    <td width="20%">
    		<input type="hidden"text" name="u.userid" value="<%= user.getUserid() %>">
    		<td width="9%">姓名：</td>
    		<td width="25%"><input name="u.logname" value="<%=user.getLogname() %>"></td>
    		<td width="46%">
    	</tr>
        <tr>
            <td></td>
    		<td>密码：</td>
    		<td><input name="u.keyword" value="<%=user.getKeyword() %>"></td>
    		<td></td>
    	</tr>
    	
    	
    	<tr>
    	    <td></td>
    		<td>年龄：</td>
    		<td><input name="u.userage" value="<%=user.getUserage() %>"></td>
    		<td></td>
    	</tr>
    	
    	<tr>
    		<%
    		String boy="";
    		String girl="";
    	/*	if(user.getUsersex().equals("男"))
    		{
    		 boy="checked='checked'";
    		}else
    		{
    		 girl="checked='checked'";
    		}*/
    		
    		 %>
    		 <td></td>
    		<td>性别：</td>
    		<td>女<input name="u.usersex" value="女" type="radio" <%=girl %> >
    	   	         男<input name="u.usersex" value="男" type="radio" <%=boy %>>
    		</td>
    		<td></td>
    	</tr>
    	
    	<tr>
    	    <td></td>
    		<td>住址：</td>
    		<td><input name="u.useraddress" value="<%=user.getUseraddress() %>"></td>
    		<td></td>
    	</tr>
    		<tr>
    		<td></td>
    		<td>邮编：</td>
    		<td><input name="u.userzipcode" value="<%=user.getUserzipcode() %>"></td>
    		<td></td>
    	</tr>
    	<tr>
        	<td></td>
    		<td>电话：</td>
    		<td><input name="u.usertelephone" value="<%=user.getUsertelephone()%>"></td>
    		<td></td>
    	</tr>
    	<tr>
    	    <td></td>
    	    <td></td>
    		<td><input type="submit" value="修改"></td>
    		<td></td>
    	</tr>
    </table>
    
    
    </form>
    
    </div>
    <cc:import url="tail.jsp"></cc:import> 
  </body>
</html>
