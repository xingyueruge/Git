<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%><%@page import="com.qrsx.pojo.User"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Welcome.jsp' starting page</title>
      <link rel="stylesheet" href="InManager/css/css.css" type="text/css"></link>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#FFFFFF">
                                                  <tr>
                                                    <td>
                                                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr valign="top">
                                                            <td background="InManager/images/right_bj01_09.gif" width="3500" height="165" style="background-repeat:no-repeat">
                                                              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                  <tr>
                                                                    <td width="4%" height="42">&nbsp;</td>
                                                                    <td width="33%" style="font-size:14px; color:#FFF; font-weight:bold" align="left">&nbsp;&nbsp;&nbsp;事务提醒</td>
                                                                    <td width="63%">&nbsp;</td>
                                                                  </tr>
                                                                  <tr>
                                                                    <td>&nbsp;</td>
                                                                    <td>&nbsp;</td>
                                                                    <td>
                                                                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                          <tr>
                                                                            <td>
                                                                              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                                  <tr>
                                                                                    <td width="8%" style=" font-size:14px; font-weight:bold; color:#F00;"></td>
                   <td width="10%">&nbsp;</td>                                                                                    <td width="65%" style="font-size:12px;">

<SCRIPT language="javascript">
<!--
function initArray()
 {
  for(i=0;i<initArray.arguments.length;i++)
  this[i]=initArray.arguments[i];
 }
 var isnMonths=new initArray("1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月");
 var isnDays=new initArray("星期日","星期一","星期二","星期三","星期四","星期五","星期六","星期日");
 today=new Date();
 hrs=today.getHours();
 min=today.getMinutes();
 sec=today.getSeconds();
 clckh=""+((hrs>12)?hrs-12:hrs);
 clckm=((min<10)?"0":"")+min;clcks=((sec<10)?"0":"")+sec;
 clck=(hrs>=12)?"下午":"上午";
 var stnr="";
 var ns="0123456789";
 var a="";

function getFullYear(d)
{
  yr=d.getYear();if(yr<1000)
  yr+=1900;return yr;}
  document.write("<table>");
  document.write("<TR><TD>今天是</TD><TD>"+isnDays[today.getDay()]+","+getFullYear(today)+"年"+isnMonths[today.getMonth()]+""+today.getDate()+"日");
  document.write("</table>");
//-->
</SCRIPT>
                                                                                    </td>
                                                                                  </tr>
                                                                                </table>

                                                                            </td>
                                                                          </tr>
                                                                          <tr>
                                                                            <td>
                                                                             
                                                                    </td>
                                                                  </tr>
                                                                </table>

                                                            </td>
                                                            <td width="246" align="right"></td>
                                                          </tr>
                                                        </table>

                                                    </td>
                                                  </tr>
                                                  <tr>
                                                    <td>
                                                       
                                                    </td>
                                                  </tr>
                                                  <tr>
                                                    <td>
                                                      <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td>
                                                             <div class="clear"></div>
                                                               <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
                                                                  <tr>
                                                                    <td width="8">&nbsp;</td>
                                                                    <td width="400" height="287" background="InManager/images/news_bj.gif" valign="top" style="background-repeat:no-repeat"> 
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                               

                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    </td>
                                                               <td width="400" height="287" background="InManager/images/news_bj01.gif" valign="top" style="background-repeat:no-repeat">
                                                                      <table width="100%" border="0" cellspacing="0" cellpadding="0" style="color:#0a4480">
                                                                          <tr>
                                                                            <td width="79%" height="30" align="left" style="font-size:14px; color:#FFF; font-weight:bold; padding-bottom:5px; padding-left:35px;">日&nbsp;历</td>
                                                                          </tr>
                                                                          <tr>
                                                                            <td width="79%" height="257" align="center">
                <iframe src="InManager/data.html" frameborder="0" scrolling="no" width="390" height="246" allowTransparency="true"></iframe>                                                            </td>
                                                                          </tr>
                                                                        </table>
                                                                      
                                                                    </td>
                                                                    <td width="5">&nbsp;</td>
                                                                  </tr>
                                                                </table>

                                                            </td>
                                                          </tr>
                                                      <tr valign="top">
                                                            <td width="828" height="140" background="images/bottom_bj02.gif" style="background-repeat:no-repeat">
                                                              <table width="96%" border="0" cellspacing="0" cellpadding="0" align="center">
                                                                  <tr>
                                                                    <td height="39" align="left" style="font-size:14px; color:#FFF; font-weight:bold; padding-top:2px; padding-left:35px;"></td>
                                                                  </tr>
                                                                  <tr>
                                                                    <td height="103">
                                                                 

                                                                     
                                                                    </td>
                                                                  </tr>
                                                                </table>
                                                                <div class="clear1"></div>

                                                              
                                                            </td>
                                                          </tr>
                                                        </table>

                                                    </td>
                                                  </tr>
                                                </table>
  </body>
</html>
