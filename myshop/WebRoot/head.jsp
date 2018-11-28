<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.qrsx.pojo.User"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'head.jsp' starting page</title>
    
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
body{
	background:url(bg9.gif);	/* 页面背景图片 */
	margin:0px; padding:0px;
	cursor:pointer;
}
.chara1{
	font-size:12px;
	background-color:#90bcff;	/* 导航条的背景颜色 */
}
.chara1 td{
	text-align:center;
}
a:link{							/* 超链接正常状态下的样式 */
	color:#005799;				/* 深蓝 */
	text-decoration:none;		/* 无下划线 */
}
a:visited{						/* 访问过的超链接 */
	color:#000000;				/* 黑色 */
	text-decoration:none;		/* 无下划线 */
}
a:hover{						/* 鼠标经过时的超链接 */
	color:pink;				/* 黄色 */
	text-decoration:underline;	/* 下划线 */
}
-->
</style>
  <body>
   <table  width="800px"  align="center" cellpadding="1" cellspacing="0">
	<tr><td><img src="images/head.gif" border="0" style="width:800px"></td></tr>
</table>

<% User u=(User)session.getAttribute("user"); %>
<table width="800px" cellpadding="2" cellspacing="2" class="chara1" align="center">
	<tr>
	    <td><a href="main.jsp">主页</a></td>
		
		<%if(u!=null){ %>
		<td><a href="index.jsp">商品列表</a></td>
		<td><a href="selfinfo.jsp">个人信息</a></td>
		<td><a href="car.jsp">购物车</a></td>
		<td><a href="orderlist.jsp">订单查看</a></td>
		<td><a href="exit.jsp">安全退出</a></td>
		<td>当前用户:<%=u.getLogname() %></a></td>
		<%} %>
		<%if(u==null){ %>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;   &nbsp;</td>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;   &nbsp;</td>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;   &nbsp;</td>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;   &nbsp;</td>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;   &nbsp;</td>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;   &nbsp;</td>
	   <%} %>
	</tr>
</table>
  </body>
</html>
