<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%><%@page import="com.qrsx.pojo.User"%><%@page import="com.qrsx.pojo.Type"%><%@page import="com.qrsx.shop.ShopManager"%><%@page import="com.qrsx.pojo.Commodity"%>




<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="cc"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <%
 	String log=request.getParameter("log");
 	User u=(User)session.getAttribute("user");
 	
 	List<Type> al=ShopManager.listType();
    List<Commodity> al2=ShopManager.listCommodity();
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">  
	<meta name="renderer" content="ie-stand">  
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="css/index.css" type="text/css"></link>
  
  <link rel="stylesheet" href="resource/css/style.css" type="text/css"></link>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="js/fsrPMD.js"></script>
<script type="text/javascript">
       $(document).ready(function () {
       

       

           $("#imgtest").fsrPMD({
               Event: 'mouseover',        //事件
               Id: 'imgtest',              //容器ID
               Bq: 'td',               //复制html标签
               Fx: "left",             //方向
               Time: 10             //时间
           })
        
       })
   </script>
     <script type="text/javascript">
     
     function mychecked(){
     
     var uname=document.getElementById("uname");
     var pwd =document.getElementById("pwd");

     if(uname.value.length==0){
 
     alert("用户名不能为空！");
     return false;
     }
     if(pwd.value.length==0){
     alert("密码不能为空！");
     return false;
     }
     return true;
     }
     
     </script>
     
  <body style="background-color: #A1CAF9">

  
    <%
    List<Commodity> cal=ShopManager.listCommodity();
   
   String name="";
   String pname="";
   for(int i=0;i<6;i++){
   Commodity c=cal.get(i);
   
   name=name+c.getCpicture()+"|";
   pname=pname+c.getCname()+"|";
   
   }
   
    %>
  	<div style="filter:alpha(opacity=100);
		background-color:yellow;text-align:right;
		position: absolute; z-index: 6;
		left: 100; top: 100; width: 160" id="img1" 
		onmouseover="stopImg()"
		onmouseout="startMove()"
		onclick="dissove()">

			
			<a href="javascript:closeImg()" ></a>
			
			
				<img title="this is 广告" src="images/gg.png" width="180" height="250">
			
		</div>
  
   <div id="login">
   <iframe width="800" scrolling="no" height="50" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&icon=1&num=5"></iframe>
  </div>
  <div id="banner">
  <cc:import url="head.jsp"></cc:import>
  </div>  
   <div id="content">
   <div id="news">
 
   <script language="javascript">
	var focus_width=500
	var focus_height=300
	var text_height=25
	var swf_height = focus_height+text_height
	var pics='<%=name%>'
	var links='http://www.163.com|http://www.sina.com|http://www.sohu.com|http://www.163.com|http://www.sohu.com|http://www.sohu.com'
	var texts='<%=pname%>'
	document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ focus_width +'" height="'+ swf_height +'">');
	document.write('<param name="allowScriptAccess" value="sameDomain"><param name="movie" value="pixviewer.swf"><param name="quality" value="high"><param name="bgcolor" value="#F2F2F2">');
	document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
	document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'">');
	document.write('<embed src="pixviewer.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#ffffff" quality="high" width="'+ focus_width +'" height="'+ focus_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');document.write('</object>');
</script>




   </div>
   
   <div id="types">
   		<div id="divlogin">
   		<%if(u==null){ %>
   				<form action="app/outuser_login" method="post" onsubmit="return mychecked()" >
	     <div style="background-color: #90BCFF;height: 20px;line-height: 20px">
        <h5>用户登录</h5>
  	
  	    </div>
				<br><br><br>
				
				<ul style="list-style:none">
					<li>用户名：<input type="text" id="uname"  title="用户名" name="u.logname"></li>
					<li>
					<br></li>
					<li>密&nbsp;&nbsp;码：<input type="text" id="pwd" title="密码" name="u.keyword"></li>
					<li><br></li>
					<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="登录"> 
				    	&nbsp;  &nbsp;  &nbsp;
				     <input type="reset" value="注册" ></li>
				
				</ul>
				
			


				

			</form>
   		<%} %>
   		
   		<%if(u!=null){ %>
   				
         <div style="background-color: #90BCFF;height: 20px;line-height: 20px">
        <h5>用户信息</h5>
  	
  	    </div>
					<br><br><br>
				
				<ul style="list-style:none">
					<li>欢迎用户：<%=u.getLogname() %>登录</li>
					<li></li>
					<li></li>
					
					
				
				</ul><br>

		
   		<%} %>
   		
   		
   		
   		
   		</div>


	
   
   
   
   </div>
   
   <div id="types">
  	<div style="background-color: #90BCFF;height: 20px;line-height: 20px">
  	<h5>图书分类</h5>
  	
  	</div>
  
  	<%for(int i=0;i<al.size();i++){
  	Type tp=al.get(i);
  	
  	 %>
   
  	<div style="margin-left:15px;text-align:center; width:50px;height:30px;line-height:30px;float: left">
  	<a href="typelist.jsp?tid=<%=tp.getTid() %>"><%=tp.getTname()%></a>
  	
  	</div>
  
  
  <%} %>
  
  

  
  
  </div>
   <div id="zuixingonggao" style="height: 300">
   
    <div id="imgtest" style="overflow:hidden; width:800px; height:70px;" >
  <table>
    <tr>
     <%
    	for(int i=0;i<al2.size();i++ ){    	
     %>
      <td><img src="<%=al2.get(i).getCpicture()%>" style="width:200px; height:100px;" /></td>
       <%} %>
      <td><img src="images/湖北特产.jpg" style="width:400px; height:72px;" /></td>
      <td><img src="images/名胜特产.jpg" style="width:400px; height:72px;" /></td>
      <td><img src="images/湖北名胜.jpg" style="width:400px; height:72px" /></td>
      <td><img src="images/湖北特产.jpg" style="width:400px; height:72px" /> </td>
    </tr>
  </table>
</div>
  
</div>
   
   
   
   
   
   
   
   
   
  <div id="zuixingonggao">
    <%
    	for(int i=0;i<al2.size();i++ ){
    	
     %>
  <div style="float: left;text-align: center;">
  <table border="0" style="width: 170px;height: 200px">
    <tr style="height:100px">
      <td colspan="2"><img height="136" width="163" src="<%=al2.get(i).getCpicture()%>"></img></td>
    </tr>
    <tr>
      <td colspan="2"><%=al2.get(i).getCname() %></td>
    </tr>
    <tr>
      <td><%=al2.get(i).getCprice() %></td>
      <td>2</td>
    </tr>
  </table>
  </div>
  <%} %>
</div>
  
  </div>
  
  
  
  
  
  
  
  
  
  
  
   <div id="footer">
   <cc:import url="tail.jsp"></cc:import> 
   
   </div>
   
 
   
   
   
   
   
   
 </body>
 <script type="text/javascript">
	var m=0
	var x =0;
	var x_increment =1;
	var y = 0;
	var y_increment =1;

	function closeImg(){
		
		document.getElementById('img1').style.display='none';
	}
	
	
//===================================================================
	function dissove() {
		var img = document.getElementById("img1");
		window.alert();	
	}

//===================================================================
	function moveImg() {
		var img = document.getElementById("img1");

		var imgChild = img.childNodes;

		var ig;
		for ( var i = 0; i < imgChild.length; i++) {
			if (imgChild[i].tagName == "IMG") {
				ig=imgChild[i];
			}
		}
		
		if ((x >= document.body.clientWidth - ig.width) || (x < 0)) {
			x_increment *= -1;
		}
		if ((y >= document.body.clientHeight - ig.height) || (y < 0)) {
			y_increment *= -1;
		}

		img.style.left = x += x_increment;
		img.style.top = y += y_increment;

	}

	 var timer;
	 
	 startMove();
	 
	 function startMove(){

	 	timer = window.setInterval("moveImg()", 10);
	 }
	 
		

	function stopImg(){
		
		window.clearInterval(timer);
		
		
	}
	</script>
</html>
