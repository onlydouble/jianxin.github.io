<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<style type="text/css">
<!--
.STYLE10 {
	font-size: 14px;
	color: #FF0000;
}
-->
</style>
<%
	session.removeAttribute("loginadminname");
	session.invalidate();
	out.println( "<HTML><HEAD><META http-equiv='refresh' content='2; URL=login.jsp' target=Main></HEAD><BODY bgcolor='#FFFFFF'></body></html>");
%>
<br /><br /><br /><br /><br /><br /><br /><br />
<center>
	  <table width="300" border="1" bordercolor="#34383C" style="border-collapse:collapse" cellpadding="0" cellspacing="0">
	  <!--DWLayoutTable-->
	  <tr bgcolor="#34383C">
		<td height="13">&nbsp;</td>
	    </tr>
	  <tr>
		<td height="60" align="center"><span class="STYLE10">正在登出，请稍候...</span></td>
	    </tr>
   </table>
</center>

