<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
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
          注册
   <form action="regist" method="post">
    <table>
    	<tr>
    		<td>Name</td>
    		<td><input name="name" type="text"></td>
    	</tr>
    	<tr><td>Password</td><td><input name="password" type="password"></td></tr>
    	<tr><td>Age</td><td><input name="age" type="text"></td></tr>
    	<tr><td>Sex</td><td><input name="sex" type="text"></td></tr>
    	<tr><td>Birth</td><td><input name="birth" type="text"></td></tr>
    	
    	<tr><td><input type="submit" value="Sbumit"></td></tr>
    	
    </table>
   </form>
  </body>
</html>
