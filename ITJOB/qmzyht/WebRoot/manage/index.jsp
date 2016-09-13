<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="loginverify.jsp" %>
<%@ taglib uri="/struts-tags" prefix="s" %>

<html lang="zh">
	<head>
  		<meta charset="utf-8">
  		<title>IT兼职网-主页面</title>
  		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<link rel="icon" href="../image/icon.ico" type="image/x-icon" />
		<link rel="shortcut icon" href="../image/icon.ico" type="image/x-icon" />
		<link rel="bookmark" href="../image/icon.ico" type="image/x-icon" />
		<link href="../css/bootstrap.min.css" rel="stylesheet">
		<link href="../css/style.css" rel="stylesheet">
		<link href="../css/font-awesome.min.css" rel="stylesheet">
		<script type="text/javascript" src="../js/jquery.min.js"></script>
		<script type="text/javascript" src="../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../js/script.js"></script>
		<style type="text/css">
		.container{
		
		}
		.header-nav{
		background:#a4c4f2;
		}
		</style>
	</head>
	<body leftmargin="0" topmargin="0" marginheight="0" marginwidth="0">
		<header class="navbar">
			<div class="container">
				<a id="main-menu-toggle" class="hidden-xs open"><i class="fa fa-bars"></i></a>
				<a class="navbar-brand" href="home.jsp" target="content"><span>IT兼职网管理平台</span></a>
				<div class="header-nav">
					<ul class="nav navbar-nav pull-right">
						<li class="dropdown">
							<a class="btn account dropdown-toggle" data-toggle="dropdown" href="index.html#">
								<div class="avatar"><i class="fa fa-user fa-2x"></i></div>
								<div class="user">
									<span class="hello">欢迎访问!</span>
									<span class="username"><%=session.getAttribute("loginadminname")%></span>
								</div>
							</a>
							<ul class="dropdown-menu">
								<li><a href='m_queryAdminSelf.action?username=<%=session.getAttribute("loginadminname")%>' target="content"><i class="fa fa-user"></i> 个人设置</a></li>
								<li><a href="logout.jsp"><i class="fa fa-sign-out"></i> 登出系统</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</header>
		<div class="container">
			<div class="row">
				<div id="sidebar-left" class="col-lg-2 col-sm-1">
					<div class="sidebar-nav nav-collapse collapse navbar-collapse">
						<ul class="nav main-menu">
							<li>
								<a class="dropmenu" href="#">
									<i class="fa fa-users"></i>
									<span class="hidden-sm text hidden-sml"> 用户管理</span>
									<span class="chevron closed"></span>
								</a>
								<ul>
									<li>
										<a class="submenu" href="m_queryAdmin.action" target="content">
											<i class="fa fa-user"></i>
											<span class="hidden-sm text"> 系统管理员</span>
										</a>
									</li>
									<li>
										<a class="submenu" href="m_queryCompany.action" target="content">
											<i class="fa fa-github-alt"></i>
											<span class="hidden-sm text"> 企业用户</span>
										</a>
									</li>
									<li>
										<a class="submenu" href="m_queryEmployee.action" target="content">
											<i class="fa fa-github-alt"></i>
											<span class="hidden-sm text"> 用户管理</span>
										</a>
									</li>
									<li>
										<a class="submenu" href="m_queryCompanyjob.action" target="content">
											<i class="fa fa-github-alt"></i>
											<span class="hidden-sm text"> 职位管理</span>
										</a>
									</li>
									<li>
										<a class="submenu" href="m_queryMessage.action" target="content">
											<i class="fa fa-github-alt"></i>
											<span class="hidden-sm text"> 留言板管理</span>
										</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
				<div id="content" class="col-lg-10 col-sm-11">
					<iframe scrolling="no" name="content" frameborder="0" src="home.jsp" style="width: 100%;" onload="this.height=0;var fdh=(this.Document?this.Document.body.scrollHeight:this.contentDocument.body.offsetHeight);this.height=(fdh>800?fdh:800)"></iframe>
				</div>
			</div>
		</div>
	</body>
</html>