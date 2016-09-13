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
	<script>
		function updateadmin(id,username,password,regdate,state){
				document.getElementById('cjid').value=cjid;
				document.getElementById('cjob').value=cjob;
				document.getElementById('crequest').value=crequest;
				document.getElementById('csalary').value=csalary
				document.getElementById('cjaddress').value=cjaddress
				document.getElementById('cid').value=cid;
			}
			</script>
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
    <c:forEach items="${request.users}" var="companyjob">
    	<tr>
    		<td>${companyjob.cjid}</td>
    		<td>${companyjob.cjob}</td>
    		<td>${companyjob.csalary}</td>
    		<td>${companyjob.crequest}</td>
    		<td>${companyjob.cjaddress}</td>
    	</tr>
    </c:forEach>
   	<s:if test="#companyjob.cjid != 1">
												<button class="btn btn-info btn-xs" data-toggle="modal" data-target="#editModal" onclick="updateadmin('<s:property value = "#companyjob.cjid"/>','
												<s:property value = "#admin.username"/>','<s:property value = "#admin.password"/>','<s:property value = "#admin.regdate.toLocaleString()"/>','
												<s:property value = "#admin.state"/>')"><i class="fa fa-edit"></i></button>
												<button class="btn btn-danger btn-xs" onclick = "deleteadmin('<s:property value = "#admin.id"/>')"><i class="fa fa-trash-o"></i></button>
												</s:if>
    </table>
    
  </body>
</html>
