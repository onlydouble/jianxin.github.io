<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="loginverify.jsp" %>
<%@ taglib uri="/struts-tags" prefix="s" %>

<html lang="zh">
	<head>
		<meta charset="utf-8">
		<title>个人设置-系统管理员</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<link href="../css/bootstrap.min.css" rel="stylesheet">
		<link href="../css/style.css" rel="stylesheet">
		<link href="../css/font-awesome.min.css" rel="stylesheet">
		<script type="text/javascript" src="../js/jquery.min.js"></script>
		<script type="text/javascript" src="../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../js/script.js"></script>
		<script type="text/javascript">
			window.onload=function(){
				document.getElementById('regdate').value='${regdate}'.split(" ")[0];
			};
		</script>
	</head>
	<body>
		<div id="content" class="col-lg-10 col-sm-11">
			<div class="row">
				<div class="col-lg-12">
					<ol class="breadcrumb">
						<li><a href="home.jsp">主页</a></li>
						<li class="active">个人设置</li>
					</ol>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 col-sm-12">
					<div class="box">
						<div class="box-header">
							<h2><i class="fa fa-building-o"></i>个人设置</h2>
							<div class="box-icon">
								<a href="#" class="btn-minimize"><i class="fa fa-chevron-down"></i></a>
							</div>
						</div>
						<div class="box-content" style="display: block;">
			        		<form role="form" action="m_editAdminSelf.action" method="post">
			        			<div class="row">
			        				<div class="col-lg-12 col-sm-12">
			        					<div class="input-group">
			       							<span class="input-group-addon">用户名</span>
			     							<input type="text" readonly="readonly" class="form-control" name="username" id="username" value='${username}'>
			        					</div>
			        					<div class="input-group">
			       							<span class="input-group-addon">新密码</span>
			      							<input type="password" class="form-control" name="password" id="password" value='${password}'>
			    						</div>
			        					<div class="input-group">
			        						<span class="input-group-addon">确认密码</span>
			        						<input type="password" class="form-control" name="password2">
			        					</div>
			        					<div class="input-group">
			        						<span class="input-group-addon">注册日期</span>
			        						<input type="text" class="form-control" name="regdate" id="regdate" readonly="readonly" >
			        					</div>
			        				</div>
			        			</div>
			         			<div class="row">
			         				<div class="col-lg-12">
			        					<input type="hidden" name="id" id="id" value='${id}'>
			        					<input type="submit" class="btn btn-primary" value="确认更新"/>
			        				</div>
			        			</div>
			        		</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>