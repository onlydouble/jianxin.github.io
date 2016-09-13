<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.qmzyht.util.Util" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<style type="text/css">
<!--
.STYLE10 {
	font-size: 14px;
	color: #FF0000;
}
-->
</style>
<link rel="icon" href="../image/icon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="../image/icon.ico" type="image/x-icon" />
<link rel="bookmark" href="../image/icon.ico" type="image/x-icon" />
<%
	int type = (Integer)session.getAttribute(Util.OPTTYPE);
	switch (type) {
	case Util.OPTTYPE_EDITSELFADMIN:	/* 个人设置（系统管理员） */
		out.println( "<html><head><meta http-equiv='refresh' content='2; URL=home.jsp' target=content></head><body bgcolor='#FFFFFF'></body></html>");
		break;
	case Util.OPTTYPE_ADDADMIN:	/* 添加系统管理员 */
		out.println( "<html><head><meta http-equiv='refresh' content='2; URL=m_queryAdmin.action' target=content></head><body bgcolor='#FFFFFF'></body></html>");
		break;
	case Util.OPTTYPE_EDITADMIN:	/* 更新系统管理员 */
		out.println( "<html><head><meta http-equiv='refresh' content='2; URL=m_queryAdmin.action' target=content></head><body bgcolor='#FFFFFF'></body></html>");
		break;
	case Util.OPTTYPE_DELETEADMIN:	/* 删除系统管理员 */
		out.println( "<html><head><meta http-equiv='refresh' content='2; URL=m_queryAdmin.action' target=content></head><body bgcolor='#FFFFFF'></body></html>");
		break;
	case Util.OPTTYPE_ADDCOMPANY:	/* 添加企业用户 */
		out.println( "<html><head><meta http-equiv='refresh' content='2; URL=m_queryCompany.action' target=content></head><body bgcolor='#FFFFFF'></body></html>");
		break;
	case Util.OPTTYPE_EDITCOMPANY:	/* 更新企业用户 */
		out.println( "<html><head><meta http-equiv='refresh' content='2; URL=m_queryCompany.action' target=content></head><body bgcolor='#FFFFFF'></body></html>");
		break;
	case Util.OPTTYPE_DELETECOMPANY:	/* 删除企业用户 */
		out.println( "<html><head><meta http-equiv='refresh' content='2; URL=m_queryCompany.action' target=content></head><body bgcolor='#FFFFFF'></body></html>");
		break;
	case Util.OPTTYPE_EDITEMPLOYEE:	/* 更新用户 */
		out.println( "<html><head><meta http-equiv='refresh' content='2; URL=m_queryEmployee.action' target=content></head><body bgcolor='#FFFFFF'></body></html>");
		break;
	case Util.OPTTYPE_DELETEEMPLOYEE:	/* 删除用户 */
		out.println( "<html><head><meta http-equiv='refresh' content='2; URL=m_queryEmployee.action' target=content></head><body bgcolor='#FFFFFF'></body></html>");
		break;
	case Util.OPTTYPE_EDITCOMPANYJOB:	/* 更新职位 */
		out.println( "<html><head><meta http-equiv='refresh' content='2; URL=m_queryCompanyjob.action' target=content></head><body bgcolor='#FFFFFF'></body></html>");
		break;
	case Util.OPTTYPE_DELETECOMPANYJOB:	/* 删除职位 */
		out.println( "<html><head><meta http-equiv='refresh' content='2; URL=m_queryCompanyjob.action' target=content></head><body bgcolor='#FFFFFF'></body></html>");
		break;
			case Util.OPTTYPE_DELETEMESSAGE:	/* 删除留言 */
		out.println( "<html><head><meta http-equiv='refresh' content='2; URL=m_queryMessage.action' target=content></head><body bgcolor='#FFFFFF'></body></html>");
		break;
	}
%>
<br /><br /><br /><br /><br /><br /><br /><br />
<center>
	<table width="300" border="1" bordercolor="#34383C" style="border-collapse:collapse" cellpadding="0" cellspacing="0">
		<!--DWLayoutTable-->
		<tr bgcolor="#34383C">
			<td height="13">&nbsp;</td>
		</tr>
		<tr>
			<td height="60" align="center"><span class="STYLE10">操作失败</span></td>
		</tr>
		<tr>
			<td><font size="2" face="宋体" style="font-size: 9pt" color="red"><s:fielderror key="msg"></s:fielderror></font></td>
		</tr>
	</table>
</center>

