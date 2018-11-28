<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%><%@page import="com.qrsx.pojo.User"%><%@page import="com.qrsx.pojo.Orderlist"%>





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
  </head>
    <%
  	
  User user=(User)session.getAttribute("user");
	List<Orderlist> car=(List<Orderlist>)session.getAttribute("car");
  		
  		if(car==null|| car.size()<1){
  			response.sendRedirect("index.jsp");
  			return;
  		}
  	double sum=0;
   %>
  <body>
       <cc:import url="head.jsp"></cc:import> 
    <div style="margin-left: 276px">
    <form action="app/order_saveOrderAndList" method="post">
    <table id="mytable">
    	<tr>
    		<td>收件人：</td>
    		<td><input value="<%=user.getLogname() %>"></td>
    		<td>电话：</td>
    		<td><input  value="<%=user.getUsertelephone()%>"></td>
    		
    	</tr>
         <tr>
    		<td>邮编：</td>
    		<td><input  value="<%=user.getUserzipcode()%>"></td>
    		<td>地址：</td>
    		<td><input value="<%=user.getUseraddress() %>"></td>
    	</tr>
    	<tr>
    		<td>邮寄方式：</td>
    		<td>
    		<select name="oinfo.orderstyle">
    				<option>送货上门</option>
    				<option>邮寄</option>
    		</select>
    		</td>
    	</tr>
    	
    </table>
    
    
    <table id="mytable" width="63%"  cellspacing="0" style="text-align: center;font-size:14">
    			<tr style="background-color: 006699;color:ffffff">
    				<td>编号</td>
    				<td>名称</td>
    				<td>单位</td>
    				<td>数量</td>
    				<td>单项合计</td>
    				
    	
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
						
					
					</tr>
					
					<tr>
						<td colspan="7">
							<hr width="100%" size="1"/>
						</td>
					</tr>
				
				<%} %>
    	
    	</table>
    		
    		
    		
    			订单总计：<%=(float)sum %>元
    
    &nbsp; <input type="submit" value=" 结 账 ">	
    </form>
    </div>
    <cc:import url="tail.jsp"></cc:import> 
  </body>
  </body>
</html>
