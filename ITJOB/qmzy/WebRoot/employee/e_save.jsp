
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
	  
   <form action="applyCompanyjob" method="post">
    <table>
    	<tr>
    	<tr><td>编号</td><td><input name="sid" type="text"></td></tr>
    		<td>申请人姓名</td>
    		<td><input name="name" type="text"></td>
    	</tr>
    	<tr><td>申请职位</td><td><input name="job" type="text"></td></tr>
    	<tr><td>学历</td><td><input name="education" type="text"></td></tr>
    	<tr><td>个人经历</td><td><input name="exp" type="text"></td></tr>
    	<tr><td>个人简介</td><td><input name="information" type="text"></td></tr>
    	<tr><td><button>提交</button></td></tr>
    	
    </table>
   </form>
</body>
</html>