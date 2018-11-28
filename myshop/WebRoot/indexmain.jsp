<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%><%@page
	import="com.qrsx.pojo.User"%><%@page import="com.qrsx.pojo.Type"%><%@page
	import="com.qrsx.shop.ShopManager"%>



<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="cc"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'index2.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="css/index.css" type="text/css"></link>

		<link rel="stylesheet" href="resource/css/style.css" type="text/css"></link>
	</head>
	<script type="text/javascript">

function mychecked() {

	var uname = document.getElementById("uname");
	var pwd = document.getElementById("pwd");

	if (uname.value.length == 0) {

		alert("用户名不能为空！");
		return false;
	}
	if (pwd.value.length == 0) {
		alert("密码不能为空！");
		return false;
	}
	return true;
}
</script>

	<body>
		<div id="login">
			<iframe width="800" scrolling="no" height="50" frameborder="0"
				allowtransparency="true"
				src="http://i.tianqi.com/index.php?c=code&id=12&icon=1&num=5"></iframe>
		</div>
		<div id="banner">
			<cc:import url="head.jsp"></cc:import>
		</div>
		<div id="content">
			<div id="news">
				<script language="javascript">
var focus_width = 500
var focus_height = 300
var text_height = 25
var swf_height = focus_height + text_height
var pics = 'resource/images/5.jpg|resource/images/4.jpg|resource/images/3.jpg|resource/images/2.jpg|resource/images/1.jpg|'
var links = 'http://www.163.com|http://www.sina.com|http://www.sohu.com|http://www.163.com|http://www.sohu.com|http://www.sohu.com'
var texts = '迎奥运树新风高中生赛礼仪|不远万里寻合作携手同心求发展|公园滑雪场明日盛装迎客|dd|雪堡门票销售工作全面启动'
document
		.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'
				+ focus_width + '" height="' + swf_height + '">');
document
		.write('<param name="allowScriptAccess" value="sameDomain"><param name="movie" value="pixviewer.swf"><param name="quality" value="high"><param name="bgcolor" value="#F2F2F2">');
document
		.write('<param name="menu" value="false"><param name=wmode value="opaque">');
document
		.write('<param name="FlashVars" value="pics=' + pics + '&links='
				+ links + '&texts=' + texts + '&borderwidth=' + focus_width
				+ '&borderheight=' + focus_height + '&textheight='
				+ text_height + '">');
document
		.write('<embed src="pixviewer.swf" wmode="opaque" FlashVars="pics='
				+ pics
				+ '&links='
				+ links
				+ '&texts='
				+ texts
				+ '&borderwidth='
				+ focus_width
				+ '&borderheight='
				+ focus_height
				+ '&textheight='
				+ text_height
				+ '" menu="false" bgcolor="#ffffff" quality="high" width="'
				+ focus_width
				+ '" height="'
				+ focus_height
				+ '" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');
document.write('</object>');
</script>




			</div>

			<div id="types">
				<div id="divlogin">

					<form action="app/outuser_login" method="post"
						onsubmit="return mychecked()">
						<div
							style="background-color: #90BCFF; height: 20px; line-height: 20px">
							<h5>
								用户登录
							</h5>

						</div>
						<br>
						<br>
						<br>

						<ul style="list-style: none">
							<li>
								用户名：
								<input type="text" id="uname" title="用户名" name="u.logname">
							</li>
							<li></li>
							<li>
								密&nbsp;&nbsp;码：
								<input type="text" id="pwd" title="密码" name="u.keyword">
							</li>
							<li></li>
							<li>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="submit" value="登录">
								&nbsp; &nbsp; &nbsp;
								<input type="reset">
							</li>

						</ul>


					</form>

				</div>


			</div>

			<div id="types">
				<div
					style="background-color: #90BCFF; height: 20px; line-height: 20px">
					<h5>
						图书分类
					</h5>

				</div>


				<div
					style="margin-left: 20px; text-align: center; width: 40px; height: 30px; line-height: 30px; float: left">
					<a href="typelist.jsp?tid=11">类型1</a>

				</div>
				<div
					style="margin-left: 20px; text-align: center; width: 40px; height: 30px; line-height: 30px; float: left">
					<a href="typelist.jsp?tid=11">类型1</a>

				</div>

				<div
					style="margin-left: 20px; text-align: center; width: 40px; height: 30px; line-height: 30px; float: left">
					<a href="typelist.jsp?tid=11">类型1</a>

				</div>


				<div
					style="margin-left: 20px; text-align: center; width: 40px; height: 30px; line-height: 30px; float: left">
					<a href="typelist.jsp?tid=11">类型1</a>

				</div>


				<div
					style="margin-left: 20px; text-align: center; width: 40px; height: 30px; line-height: 30px; float: left">
					<a href="typelist.jsp?tid=11">类型1</a>

				</div>


				<div
					style="margin-left: 20px; text-align: center; width: 40px; height: 30px; line-height: 30px; float: left">
					<a href="typelist.jsp?tid=11">类型1</a>

				</div>

				<div
					style="margin-left: 20px; text-align: center; width: 40px; height: 30px; line-height: 30px; float: left">
					<a href="typelist.jsp?tid=11">类型1</a>

				</div>

				<div
					style="margin-left: 20px; text-align: center; width: 40px; height: 30px; line-height: 30px; float: left">
					<a href="typelist.jsp?tid=11">类型1</a>

				</div>

				<div
					style="margin-left: 20px; text-align: center; width: 40px; height: 30px; line-height: 30px; float: left">
					<a href="typelist.jsp?tid=11">类型1</a>

				</div>


				<div
					style="margin-left: 20px; text-align: center; width: 40px; height: 30px; line-height: 30px; float: left">
					<a href="typelist.jsp?tid=11">类型1</a>

				</div>


				<div
					style="margin-left: 20px; text-align: center; width: 40px; height: 30px; line-height: 30px; float: left">
					<a href="typelist.jsp?tid=11">类型1</a>

				</div>


				<div
					style="margin-left: 20px; text-align: center; width: 40px; height: 30px; line-height: 30px; float: left">
					<a href="typelist.jsp?tid=11">类型1</a>

				</div>

				<div
					style="margin-left: 20px; text-align: center; width: 40px; height: 30px; line-height: 30px; float: left">
					<a href="typelist.jsp?tid=11">类型1</a>

				</div>


				<div
					style="margin-left: 20px; text-align: center; width: 40px; height: 30px; line-height: 30px; float: left">
					<a href="typelist.jsp?tid=11">类型1</a>

				</div>

				<div
					style="margin-left: 20px; text-align: center; width: 40px; height: 30px; line-height: 30px; float: left">
					<a href="typelist.jsp?tid=11">类型1</a>

				</div>

				<div
					style="margin-left: 20px; text-align: center; width: 40px; height: 30px; line-height: 30px; float: left">
					<a href="typelist.jsp?tid=11">类型1</a>

				</div>

			</div>


			<div id="zuixingonggao">
		
			<div
					style="background-color: #90BCFF; height: 20px; line-height: 20px">
					<h5>
						最新展示
					</h5>

				</div>
			</table>
			
			<table style="width:100%;height:300" border="0">
	
			
			<tr >
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>		
			
			
			</table>
			</div>

			<div id="tejiatushu">

<div
					style="background-color: #90BCFF; height: 20px; line-height: 20px">
					<h5>
						最新公告
					</h5>

				</div>
			</table>
			
			<table style="width:100%;height:300" border="0">
	
			
			<tr >
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>
			
			
			<tr style="border-color:#90BCFF">
				<td style="width: 60%">你看到过最便宜的书</td>
				<td style="width: 5%"></td>
				<td style="width: 5%"></td>
				<td style="width: 30%">2013-11-11</td>
			</tr>		
			
			
			</table>



			</div>








			<div id="footer">
				<cc:import url="tail.jsp"></cc:import>

			</div>
	</body>
</html>
