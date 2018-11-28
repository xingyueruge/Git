<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  
 <style type="text/css">
#center{ width:1024px; height:606px;margin:0px auto; background-color:#004fae}
body{ background-color:#004fae; margin-top:0px; margin-bottom:0px; font-size:12px
}
</style>

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
</head>
    <body>
    <form action="app/inuser_login" method="post" onsubmit="return mychecked()">
        <div id="center">
            <table width="1024" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="12">&nbsp;</td>
            <td width="1000">
               <table width="100%" border="0" cellspacing="0" cellpadding="0" height="610">
                      <tr>
                        <td background="InManager/images/bj_02.gif" height="4">&nbsp;
                        </td>
                      </tr>
                      <tr>
                        <td background="InManager/images/bj_04.jpg" style="background-repeat:no-repeat" width="1000" height="191">
                        </td>
                      </tr>
                      <tr>
                        <td>
                           <table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="269"  background="InManager/images/bj_05.gif" height="263" style="background-repeat:no-repeat"></td>
                                <td width="460" background="InManager/images/bj_06.gif" style=" width:460px; height:263px; background-repeat:no-repeat">
                                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td width="31%" height="75">&nbsp;</td>
                                        <td width="69%">&nbsp;</td>
                                    </tr>
                                      <tr>
                                        <td height="30" align="right" style="color:#FFF">用户名：</td>
                                        <td>
                                          <input id="uname" name="u.logname" type="text" / style="background:url(InManager/images/input.gif); background-repeat:no-repeat; width:228px; height:29px; border:0px; line-height:29px; padding-left:5px; color:#0465a6">
                                        </td>
                                      </tr>
                                      <tr>
                                        <td height="21">&nbsp;</td>
                                        <td>&nbsp;</td>
                                      </tr>
                                      <tr>
                                        <td height="33" align="right" style="color:#FFF;">密&nbsp;&nbsp;码：</td>
                                        <td>
                                          <input id="pwd" name="u.keyword" type="password" / style="background:url(InManager/images/input.gif); background-repeat:no-repeat; width:228px; height:29px; border:0px;line-height:29px; padding-left:5px; color:#0465a6">
                                        </td>
                                      </tr>
                                      <tr>
                                        <td height="66">&nbsp;</td>
                                        <td>
                                          <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="27%" height="37" align="center">
                                                 <input value="" type="submit" style=" background:url(InManager/images/button01.gif);width:79px; height:27px; border:0px" onmouseover="this.style.backgroundImage='url(InManager/images/button03.gif)'" onmouseout="this.style.backgroundImage='url(InManager/images/button01.gif)'"/>


                                                </td>
                                                <td width="73%" align="left" style="padding-left:10px">
                                                  <input value="" type="reset" style=" background:url(InManager/images/button02.gif);width:79px; height:27px; border:0px" onmouseover="this.style.backgroundImage='url(InManager/images/button04.gif)'" onmouseout="this.style.backgroundImage='url(InManager/images/button02.gif)'"/>
                                                </td>
                                              </tr>
                                            </table>

                                        </td>
                                      </tr>
                                  </table>

                                </td>
                                <td width="272"  background="InManager/images/bj_07.gif" height="263" style="background-repeat:no-repeat"></td>
                              </tr>
                            </table>

                        </td>
                      </tr>
                      <tr>
                        <td valign="top">
                        <img src="InManager/images/bj_08.jpg" width="1000" height="152" /></td>
                      </tr>
                </table>

            </td>
            <td width="12">&nbsp;</td>
          </tr>
        </table>

        </div>
        </form>
    </body>

</html>