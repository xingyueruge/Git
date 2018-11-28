<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'tail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style="margin: 0">
    <table  width="800px" style="margin:0; height:100px;font-size:12px;line-height:30px;text-align:center;background-color:#90BCFF" align="center" cellpadding="1" cellspacing="0">
	<tr>
		<td><img src="images/tail1.png" border="0"  style="width:800px"></td>
        </tr>
	<tr>
		<td><font color="#555555">版权所有刘桂青</font></td>
        </tr>
	<tr>
		<td><font color="#555555">太原理工大学 软件学院</font></td>
    </tr>

	
</table>
  </body>
</html>
