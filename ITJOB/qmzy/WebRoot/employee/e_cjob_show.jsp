<!DOCTYPE html>
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
	<title>职位显示</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<style type="text/css">
li{
	list-style-type: none;
display: inline-block;
}
	</style>

</head>
<body>
		<form action="helloWorld" method="post">
									<div class="input-group">
										<div class="input-group-btn">	
										</div><!-- /btn-group -->
										<input type="hidden" value="" name="cjob" id="searchType">
										<input type="text" name="searchcjob" class="form-control">
										<span class="input-group-btn"><input class="btn btn-default" type="submit" value="搜索" /></span>
									</div>
								</form>

	

</body>
</html>