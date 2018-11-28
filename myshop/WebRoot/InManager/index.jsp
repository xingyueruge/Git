<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%><%@page import="com.qrsx.pojo.User"%>

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
<script type="text/javascript" language="javascript" src="InManager/js/left.js"></script>
  <link rel="stylesheet" href="InManager/css/css.css" type="text/css"></link>
  </head>
  <%
  	User inuser=(User)session.getAttribute("inuser");
  
   %>
  <body>
  <center>
        <div id="center" style="margin: 0px auto;">
            <table width="1024" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="1000">
               <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr valign="bottom">
                    <td background="InManager/images/top_01.jpg" width="1024" height="91">
                       <table width="100%" border="0" cellspacing="0" cellpadding="0" height="">
                          <tr>
                            <td width="18%">&nbsp;</td>
                            <td width="82%">
                               <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td>
                                      <table width="100%" border="0" cellspacing="0" cellpadding="0" style="color:#FFF; font-size:12px;">
                                          <tr>
                                            <td width="56%" height="48" align="right">用户:<%=inuser.getLogname() %></td>
                                            <td width="6%"></td>
                                            <td width="3%"><img src="InManager/images/top_pic01-02.gif" width="16" height="16" /></td>
                                            <td width="7%" align="left"><a href="InManager/exit.jsp">注销</a></td>
                                        </tr>
                                      </table>

                                    </td>
                                  </tr>
                                  <tr>
                                    <td>&nbsp;</td>
                                  </tr>
                                </table>

                            </td>
                          </tr>
                        </table>

                    </td>
                  </tr>
                  <tr>
                    <td>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="179">
                            <div class="clear"></div>
                                <table width="179" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td background="InManager/images/left_top01_03.gif" width="180" height="27" style="font-weight:bold; color:#FFF; padding-left:10px;">常用功能操作</td>
                                  </tr>
                                  <tr valign="top">
                                    <td background="InManager/images/left_bj_05.gif" width="179" height="618" align="center">
                                     <iframe src="InManager/left.html" width="96%"  height="620" scrolling="no" frameborder="0" marginwidth="0" marginheight="0" allowtransparency="none" > 
                                     </iframe>
                                     
                                    </td>
                                  </tr>
                                </table>

                            </td>
                            <td width="83%" valign="top">
                            <div class="clear"></div>
                               <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td> 
                                      <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td width="5">&nbsp;</td>
                                        <td background="InManager/images/right_top01.gif" width="840" height="27">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="74%" style="padding-left:15px">&nbsp;&nbsp;&nbsp;&nbsp;位置：首页</td>
                                                <td width="21%">&nbsp;</td>
                                                <td width="5%">&nbsp;</td>
                                              </tr>
                                        </table>
                                          
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>&nbsp;</td>
                                        <td >
                                       


                                     <iframe id="ifmMainDesk" src="InManager/Welcome.jsp" width="96%" name=""  height="620" scrolling=="auto" frameborder="0" marginwidth="0" marginheight="0" allowtransparency="none"> 
                                  
                                  
                                     </iframe>






                                    </td>
                                     </tr>
                                    </table>

                                    </td>
                                  </tr>
                                </table>

                            </td>
                          </tr>
                      </table>

                    </td>
                  </tr>
              </table>

            </td>
          </tr>
          <tr>
            <td height="28" valign="bottom"><img src="InManager/images/bottom_bj.jpg" /></td></tr>
        </table>

        </div>
        </center>
    </body>

</html>