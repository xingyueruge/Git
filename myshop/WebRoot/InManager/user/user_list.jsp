<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.qrsx.shop.ShopManager"%>
<%@page import="com.qrsx.pojo.User"%>


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
	document.getElementById("del").innerHTML="<input type='hidden' name='u.userid' id='inp' value='"+rows[i].value+"'>";
	var input=document.getElementById("inp");
	document.myform.submit();
	}
	} 
}

function showAddWin(){

//window.showModalDialog("user_add.jsp","","dialogHeigth:20px;dialogWidth:550px;status:no");
    parent.document.getElementById('ifmMainDesk').src="InManager/user/user_add.jsp";

}
</script>
<%
	List<User> aluser=ShopManager.listUser();
 %> 
  <body style="background-color:#429fff ">  
  <form name="myform" onsubmit="" id="del" action="app/inuser_delete" method="post"> 
  </form>
    <table width="100%" >
  	<tr>
  	<td width="30%"></td>
  	<td width="30%"></td>
  	<td width="30%"></td>
  	<td width="5%"><input type="button" value="增加" onclick="showAddWin()"/></td>
  	<td width="5%">
  	
  	<input type="button" value="删除" onclick="deleted()"/></td>
  	</tr>
  </table>
  
   <table class="datalist" style="width: 100%" >
	<tr>
	    <th width="5%" scope="col">&nbsp;</th>
		<th width="10%" scope="col">用户名</th>
		<th width="10%" scope="col">密码</th>
		<th width="10%" scope="col">性别</th>
		<th width="10%" scope="col">年龄</th>
		<th width="15%" scope="col">邮编</th>
		<th width="15%" scope="col">电话号码</th>
		<th width="25%" scope="col">家庭住址</th>
	</tr>
	<%
		for(int i=0;i<aluser.size();i++){
		User u=aluser.get(i);//window.showModalDialog
		String sex="";
		if("1".equals(u.getUsersex())){
		sex="男";
		}else
		sex="女";
	 %>
	<tr ondblclick="javascript:window.location.href='<%=basePath%>/InManager/user/user_update.jsp?uid=<%=u.getUserid() %>'">
		<td><input id="aa" type="checkbox" value="<%=u.getUserid() %>"> </td>
		<td ><%=u.getLogname() %></td>
		<td><%=u.getKeyword() %></td>
		<td><%=sex %></td>
		<td><%=u.getUserage() %></td>
		<td><%=u.getUserzipcode() %></td>
		<td><%=u.getUsertelephone() %></td>
		<td><%=u.getUseraddress()%></td>
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
