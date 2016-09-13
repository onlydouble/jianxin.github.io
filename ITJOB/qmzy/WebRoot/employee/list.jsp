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
  <a href="m">显示</a>
    所有用户 <br>
    <div style="width:400px;">
    <table style="width:400px;">
   
     <tr>
     <th style="width:400px"></th>
     <th></th>
     <th></th>
     </tr>
      
    <c:forEach items="${users}" var="message">

													<tr style="width: 200px">
														<div
															style="width: 500px;height: 150px;border-bottom: 1px solid #a4c4f2;margin:10px 100px">
															<img class="head" src="images/7.jpg" alt=""
																style="height: 50px;width: 50px;margin: 5px 5px -10px 5px" />
															<em
																style="font-size: 18px; font-weight:bold;color: #a4c4f2;margin:-10px 10px">Name:</em>
															${message.meno} <em
																style="font-size: 18px; font-weight:bold;">Email:</em>
															${message.memail}
															<p
																style="width: 400px;line-height: 20px;margin: 20px 10px 10px 60px;font-style: ;16px;">
																${message.mecontent}
																</p>
														</div>
																	<td></td>
													<td></td>
													</tr>
										
                        </c:forEach>
    </table>
    </div>
    <%--     <c:forEach items="${users}" var="message">
    	<tr>
    		<td>${message.meno}</td>
    		<td>${message.memail}</td>
    		<td>${message.mecontent}</td>
    	</tr>
    </c:forEach> --%>
  </body>
</html>
