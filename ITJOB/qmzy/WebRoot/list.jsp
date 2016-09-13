<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'list.jsp' starting page</title>
    
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
    所有用户 <br>
    
    <table>
    	<tr>
    		<td>ID</td>
    		<td>姓名</td>
    		<td>年龄</td>
    		<td>性别</td>
    		<td>生日</td>
    	</tr>
    <c:forEach items="${request.users}" var="apply">
    	<tr>
    		<td>${apply.name}</td>
    		<td>${apply.job}</td>
    		<td>${apply.education}</td>
    		<td>${apply.exp}</td>
    		<td>${apply.information}</td>
    		<td>${apply.date}</td>
    	</tr>
    </c:forEach>
    </table>
    
  </body>
</html>
