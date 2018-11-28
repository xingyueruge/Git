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
    
    <title>主页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/sys.js"></script>
  </head>
 <style type="text/css">
#mytable { 
width: 700px; 
padding: 0; 
margin: 0; 
border-collapse: collapse;
border:1px solid #90BCFF;
} 
#content{
margin-left: 232px;
border:1px solid blue;
width: 800px;
}
#divlogin{
margin:0;
float:left;
border:1px solid blue;
width: 250px;
height: 300px;

}
 #divtupian{
margin:0;
float:left;
border:1px solid blue;
width: 10px;
height: 300px;

}
 </style> 
 <%
 	String log=request.getParameter("log");
 	User u=(User)session.getAttribute("user");
 %>
  <body style="font-size: 10px">
   
    <cc:import url="head.jsp"></cc:import> 
    
   <div id="content">
 
   		<div id="divlogin">
   		<%if(u==null){ %>
   				<form action="app/outuser_login" method="post" >

				
				<div style="float:left">&nbsp;&nbsp;用户名：</div>
				<input type="text" id="ln" title="用户名" name="u.logname" style="float: left;" >
				<div divid="ln" ></div>
				
				<br>
				<br>
				
				<div style="float:left">&nbsp;&nbsp;密&nbsp;&nbsp;码：</div>
				
				<input type="text" id="pwd" title="密码" name="u.keyword" style="float:left">
				<div divid="pwd" ></div>
				
				<br>
				<br>


				<input type="submit" value="登录"> &nbsp;  &nbsp;  &nbsp;  &nbsp; 
				<input type="reset">

			</form>
   		<%} %>
   		
   		
   		
   		
   		<%if(u!=null){ %>
   				<form action="LoginServlet" method="post" onsubmit="return sub(this)" >

				
				<div style="float:left">&nbsp;&nbsp;欢迎用户：</div>
				<%=u.getLogname() %>登录
				<div divid="ln" ></div>
				
				<br>
				<br>
				
				<div style="float:left">欢迎使用本网站</div>
				
			
				</div>
				
			

			</form>
   		<%} %>
   		
   		
   		
   		
   		</div>


	
   
   
   
   </div>
  
  
  
  
   <cc:import url="tail.jsp"></cc:import> 
  </body>
</html>
