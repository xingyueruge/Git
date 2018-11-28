<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.qrsx.pojo.User"%>
<%@page import="com.qrsx.shop.ShopManager"%>
<%@page import="com.qrsx.pojo.Orderinfo"%>
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
 <style type="text/css">
#mytable { 
width: 800px; 
padding: 0; 
margin: 0; 
border-collapse: collapse;
border:1px solid #90BCFF;
text-align:center;
}  
 </style> 
  <%
  	User u=(User)session.getAttribute("user");
 	List<Orderinfo> al=ShopManager.selectOrderByIds(u.getUserid()) ;
  
   %>
  <body>
       <cc:import url="head.jsp"></cc:import> 
    <div style="margin-left: 285px">
    
    <table id="mytable" width="100%" style="font-size: 10pt" border="0">
    <tr>
    	<th>订单号</th>
    	<th>客户</th>
    	<th>交易时间</th>
    	<th>订单状态</th>
    	<th>邮寄方式</th>	
    	<th>明细</th>
    </tr>
    <%for(int i=0;i<al.size();i++){ 
	Orderinfo o=al.get(i);
    %>
     	<tr>
    		<td colspan="6" style="line-height: 1px">
    		
    		<hr style="color:#90BCFF ">
    		</td>
    	
    	</tr>
    
       <tr>
    	<td><%=o.getOrderid() %></td>
    	<td><%=u.getLogname()%></td>
    	<td><%=o.getOdate()%></td>
    	<td><%=o.getOrderstate() %></td>
    	<td><%=o.getOrderstyle() %></td>
    	<td><a href="list.jsp?orderid=<%=o.getOrderid()%>">详请</a></td>
    	
    	</tr>   	
    <%} %>    
    </table>
    </div>
    <cc:import url="tail.jsp"></cc:import> 
  </body>
  </body>
</html>
