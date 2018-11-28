<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%><%@page import="com.qrsx.pojo.Commodity"%><%@page import="com.qrsx.shop.ShopManager"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="cc"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'bookdetail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <%
  String bid=request.getParameter("bid");
  
  Commodity c=ShopManager.getCommodityById(bid);
  
   %>
  <body>
  
  <cc:import url="head.jsp"></cc:import> 
  
  <div style="margin-left: 277px">
   
   <table border="0">
   <tr>
   		<td><img style="height: 400;width: 300" src="<%=c.getCpicture()%>"></img> </td>
   		<td>
   		
   		<table>
   		<tr>
   		<td><font style="font-size: 15;color: blue;"><%=c.getCname() %></font></td>
   	
   		</tr>
   		<tr>
 
   		<td><%=c.getCprice() %></td>
   		</tr>
   		</table>
   	
   		
   		</td>
   </tr>
   
   </table>
   
   </div>
   <cc:import url="tail.jsp"></cc:import> 
  </body>
</html>
