
<!doctype html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>添加</title>
</head>
<body>
	  
   <form action="saveCompanyjob" method="post">
    <table>
    	<tr>
    		<td>职位名称</td>
    		<td><input name="cjob" type="text"></td>
    	</tr>
    	<tr><td>职位薪酬</td><td><input name="csalary" type="text"></td></tr>
    	<tr><td>职位要求</td><td><input name="crequest" type="text"></td></tr>
    	<tr><td>职位地点</td><td><input name="cjaddress" type="text"></td></tr>
    	<tr><td>发布公司编号</td><td><input name="cid" type="text"></td></tr>
    	
    	<tr><td><a href="c_main.jsp" >提交</a></td></tr>
    	
    </table>
   </form>
</body>
</html>