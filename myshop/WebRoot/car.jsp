<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%><%@page import="com.qrsx.pojo.Orderlist"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="cc"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'car.jsp' starting page</title>
    
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
width: 800px; 
padding: 0; 
margin: 0; 
border-collapse: collapse;
border:0px solid #90BCFF;
} 


 
 </style> 
  </head>
  <%
  		List<Orderlist> car=(List<Orderlist>)session.getAttribute("car");
  		
  		if(car==null|| car.size()<1){
  			response.sendRedirect("index.jsp");
  			return;
  		}
  	double sum=0;
   %>
  <body>
  <cc:import url="head.jsp"></cc:import> 
   <div style="margin-left: 283px">
  	您购物的商品如下：
  	
  		
  	<a href="index.jsp">继续购买</a>
  	  
   <table id="mytable" width="100%"  cellspacing="0" style="text-align: center;font-size:14">
    			<tr style="background-color: 006699;color:ffffff">
    				<td>编号</td>
    				<td>名称</td>
    				<td>单位</td>
    				<td>数量</td>
    				<td>单项合计</td>
    				
    				<td>操作</td>
    			</tr>

				<%for(int i=0;i<car.size();i++){
					Orderlist ol=car.get(i);
				 %>


	             

					<tr>
						<td><%=i+1 %></td>
						<td>
							<%=ol.getCommodity().getCname() %>
						</td>
						<td>
							<%=ol.getCommodity().getCprice() %>
						</td>
						<td>
							<%=ol.getCsize() %>
						</td>
						<td>
							<%
								double sp=ol.getCsize().intValue()* ol.getCommodity().getCprice().floatValue();
								sum+=sp;
							 %>
						
							<%=(float)sp %>
							
							
						</td>
						
						<td>
							
							<!--<a href="ShopCarServlet?wtd=updateSize&cid=<%=ol.getCommodity().getCid() %>&size=<%=ol.getCsize().intValue()+1 %>" 
							
							
							style="color:0099ff">加一个</a>&nbsp; &nbsp;
							
							<a href="ShopCarServlet?wtd=updateSize&cid=<%=ol.getCommodity().getCid() %>&size=<%=ol.getCsize().intValue()-1 %>" style="color:0099ff">减一个</a>&nbsp; &nbsp;
							
							<a href="ShopCarServlet?wtd=updateSize&cid=<%=ol.getCommodity().getCid() %>&size=<%=0 %>" style="color:red">清除该商品</a>
							
							
							
						--></td>
					</tr>
					
				  	<tr>
						<td colspan="7">
							<hr style="color:#90BCFF "/>
						</td>
					</tr>
				
				<%} %>
    	
    	</table>
    		
    		
    		
    			订单总计：<%=(float)sum %>元
    			&nbsp; <input type="button" value=" 结 账 " onclick="window.open('confirm.jsp','_self')">	
    				
    		
    		
    	</div>
   	 <cc:import url="tail.jsp"></cc:import> 	
  </body>
</html>
