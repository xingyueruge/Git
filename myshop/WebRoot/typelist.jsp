<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%><%@page import="com.qrsx.pojo.Commodity"%><%@page import="com.qrsx.shop.ShopManager"%>





<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="cc"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
width: 700px; 
padding: 0; 
margin: 0; 
border-collapse: collapse;
border:1px solid #90BCFF;
} 


 
 </style> 
  <body style="font-size: 10px">
   
    <cc:import url="head.jsp"></cc:import> 
    
    <div style="margin-left: 277px">
    <table id="mytable" style="font-size: 12px;width: 800px; text-align: center;" border="0">
    
    <%
    	List<Commodity> al=ShopManager.listCommodityByTypeid(request.getParameter("tid"));
     %>
      <tr>
        <td>序号</td>
    	<td>名称</td> 
    	<td>单价</td>	
    	<td>图片</td>
    	<td>操作</td>
    </tr>
     
    <%
    	for(int i=0;i<al.size();i++ ){
    	
     %>
     
      	<tr>
    		<td colspan="5" style="line-height: 1px">
    		
    		<hr style="color:#90BCFF ">
    		</td>
    	
    	</tr>
     
    <tr>
   		<td><%=i+1%></td>
    	<td><a href="bookdetail.jsp?bid=<%=al.get(i).getCid() %>"><%=al.get(i).getCname() %></a></td>
    	<td><%=al.get(i).getCprice() %></td>
    	<td><img src="<%=al.get(i).getCpicture() %>" style="width: 50;height: 40"></td>
    	
    	<td>
    		<a href="app/car_addCar?&c.cid=<%=al.get(i).getCid() %>">加入购买</a>
    		<a href="car.jsp">查看购物车</a>
    	</td>
    </tr>
    
    <tr>
    
    
    <%} %>
    </table>
    
    </div>
  
  
  
  
   <cc:import url="tail.jsp"></cc:import> 
  </body>
</html>
