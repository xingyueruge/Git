<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.qrsx.shop.ShopManager"%>
<%@page import="com.qrsx.pojo.User"%>
<%@page import="com.qrsx.pojo.Commodity"%>
<%@page import="com.qrsx.pojo.Type"%>
<%@page import="com.qrsx.pojo.Orderinfo"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
 <style>
.datalist{
	border:1px solid #0058a3;	/* 表格边框 */
	font-family:Arial;
	border-collapse:collapse;	/* 边框重叠 */
	background-color:#eaf5ff;	/* 表格背景色 */
	font-size:14px;
}
.datalist caption{
	padding-bottom:5px;
	font:bold 1.4em;
	text-align:left;
}
.datalist th{
	border:1px solid #0058a3;	/* 行名称边框 */
	background-color:#4bacff;	/* 行名称背景色 */
	color:#FFFFFF;				/* 行名称颜色 */
	font-weight:bold;
	padding-top:4px; padding-bottom:4px;
	padding-left:12px; padding-right:12px;
	text-align:center;
}
.datalist td{
	border:1px solid #0058a3;	/* 单元格边框 */
	text-align:left;
	padding-top:4px; padding-bottom:4px;
	padding-left:10px; padding-right:10px;
}
.datalist tr:hover, .datalist tr.altrow{
	background-color:#c4e4ff;	/* 动态变色 */
}
</style>
<script type="text/javascript">

function  deleted(){
	
	
	var rows = document.getElementsByTagName('INPUT');
    for (var i=0;i<rows.length;i++){
	if(rows[i].checked==true){
	document.getElementById("del").innerHTML="<input type='hidden' name='o.orderid' id='inp' value='"+rows[i].value+"'>";
	var input=document.getElementById("inp");
	document.myform.submit();
	}
	} 
}
function showAddWin(){

window.showModalDialog("commodity_add.jsp","","dialogHeigth:20px;dialogWidth:550px;status:no");

}
</script>
<%
	List<Orderinfo> alOrderinfo=ShopManager.listOrderInfo();
 %> 
  <body style="background-color:#429fff ">
   <form name="myform" id="del" action="app/inorderinfo_delete" method="post">  
  </form>  
  <table width="100%">
  	<tr>
  	<td width="30%"></td>
  	<td width="30%"></td>
  	<td width="30%"></td>
  	<td width="5%"></td>
  	<td width="5%">	
  	<input type="button" value="删除" onclick="deleted()"/></td>
  	</tr>
  </table> 
   <table class="datalist" style="width: 100%" >
	<tr>
	    <th style="width: 5%" scope="col"></th>
		<th style="width: 15%" scope="col">商品编号</th>
		<th style="width: 15%" scope="col">商品名称</th>
		<th style="width: 20%" scope="col">商品价钱</th>
		<th style="width: 15%" scope="col">图片</th>
		<th style="width: 30%" scope="col">类型</th>

	</tr>
	<%
		for(int i=0;i<alOrderinfo.size();i++){
		Orderinfo o=alOrderinfo.get(i);
		
		User u=ShopManager.getUserById(o.getUserid());
	 %>
	
	<tr ondblclick="javascript:window.showModalDialog('<%=basePath%>/InManager/order/orderlist_list.jsp?oid=<%=o.getOrderid() %>','newwindow','height=100,width=400,top=0,left=0,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no')">
		<td><input id="aa" type="checkbox" value="<%=o.getOrderid()%>"> </td>
		<td><%=o.getOrderid()%></td>
		<td ><%=u.getLogname()%></td>
		<td><%=o.getOrderstate()%></td>
		<td><%=o.getOrderstyle()%></td>
		<td><%=o.getOdate()%></td>
		

	</tr>
	<%} %>
</table>
<script language="javascript">



var rows = document.getElementsByTagName('tr');
for (var i=0;i<rows.length;i++){
	rows[i].onmouseover = function(){		//鼠标在行上面的时候
		this.className += 'altrow';
	}
	rows[i].onmouseout = function(){		//鼠标离开时
		this.className = this.className.replace('altrow','');
	}
}

</script>
  </body>
</html>
