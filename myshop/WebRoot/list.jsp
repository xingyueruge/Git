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
 <style type="text/css">
#mytable { 
width: 800px; 
padding: 0; 
margin: 0; 
border-collapse: collapse;
border:1px solid #90BCFF;
font-size: 10pt;
text-align: center;
} 


 
 </style>
  <%
 	String orderid=request.getParameter("orderid");
 	User u=(User)session.getAttribute("user");
 	List<Orderlist> al=ShopManager.selectListByIds(orderid);
  
   %>
  <body>
       <cc:import url="head.jsp"></cc:import> 
    <div style="margin-left: 276px">
    
    <table id="mytable" width="100%" border="0">
    <tr>
    	<td>编号</td>
    	<td>商品名称</td>
    	<td>商品价钱</td>
    	<td>商品数量</td>
    	
    </tr>
    <%
    for(int i=0;i<al.size();i++){ 
	Orderlist ol=al.get(i);
	
	Commodity c=ShopManager.getCommodityById(ol.getCid());

	
    %>
    
      	<tr>
    		<td colspan="4" style="line-height: 1px">
    		
    		<hr style="color:#90BCFF ">
    		</td>
    	
    	</tr>
    
       <tr>
    	<td><%=ol.getCid() %></td>
    	<td><%=c.getCname()%></td>
    	<td><%=c.getCprice()%></td>
    	<td><%=ol.getCsize() %></td>
    	</tr>
    <%} %>
    
    
    </table>
    
    
  
    </div>
    <cc:import url="tail.jsp"></cc:import> 
  </body>
  </body>
</html>
