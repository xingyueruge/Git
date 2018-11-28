<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.qrsx.shop.ShopManager"%>
<%@page import="com.qrsx.pojo.User"%>
<%@page import="com.qrsx.pojo.Commodity"%>
<%@page import="com.qrsx.pojo.Type"%>
<%@page import="com.qrsx.pojo.Orderinfo"%>
<%@page import="com.qrsx.pojo.Orderlist"%>
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
	var url="app/commodity_delete?u.userid="+rows[i].value;
	alert(url);
	window.open(url,"","");
	}
	} 
}
function showAddWin(){
window.showModalDialog("commodity_add.jsp","","dialogHeigth:20px;dialogWidth:550px;status:no");
}
</script>
<%
	String orderid=request.getParameter("oid");
 	List<Orderlist> alolist=ShopManager.selectListByIds(orderid);
 %> 
  <body>
  <table width="100%">
  	<tr>
  	<td width="30%"></td>
  	<td width="30%"></td>
  	<td width="30%"></td>
  	<td width="5%"></td>
  	<td width="5%"> 	
  	<input type="button" value="关闭" onclick="window.close()"/></td>
  	</tr>
  </table> 
   <table class="datalist" style="width: 100%" >
	<tr>
	    <th style="width: 20%" scope="col">订单编号</th>
		<th style="width: 20%" scope="col">明细编号</th>
		<th style="width: 20%" scope="col">商品名称</th>
		<th style="width: 20%" scope="col">商品单价</th>
		<th style="width: 20%" scope="col">商品数量</th>
	</tr>
	<%
	    double all=0;
		for(int i=0;i<alolist.size();i++){
		Orderlist ol=alolist.get(i);
		Commodity c=ShopManager.getCommodityById(ol.getCid());
		all=all+ol.getCsize()*c.getCprice();	
	 %>
	<tr>
		<td><%=ol.getOrderid()%></td>
		<td><%=ol.getOlid()%></td>
		<td ><%=c.getCname()%></td>
		<td ><%=c.getCprice()%></td>
		<td><%=ol.getCsize()%></td>
	</tr>
	<%} %>	
	<tr>
	<td colspan="2">总价：</td>
	<td  colspan="3"><%=all %></td>
	</tr>
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
