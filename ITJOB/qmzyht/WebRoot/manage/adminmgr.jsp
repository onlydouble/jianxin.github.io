<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="loginverify.jsp" %>
<%@ taglib uri="/struts-tags" prefix="s" %>

<html lang="zh">
	<head>
		<meta charset="utf-8">
		<title>系统管理员数据管理-系统管理员</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<link href="../css/bootstrap.min.css" rel="stylesheet">
		<link href="../css/style.css" rel="stylesheet">
		<link href="../css/font-awesome.min.css" rel="stylesheet">
		<script type="text/javascript" src="../js/jquery.min.js"></script>
		<script type="text/javascript" src="../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../js/script.js"></script>
		<script type="text/javascript">		
			function updateadmin(id,username,password,regdate,state){
				document.getElementById('id').value=id;
				document.getElementById('username').value=username;
				document.getElementById('password').value=password;
				document.getElementById('regdate').value=regdate.split(" ")[0];
				document.getElementById('stateOption').innerText=(state==1?'正常':'禁用');
				document.getElementById('state').value=state;
			}
			
			function deleteadmin(id){
				window.location.href = "m_deleteAdmin.action?id="+id;
			}
		</script>
	</head>
	<body>
		<div class="row">
			<div class="col-lg-12">
				<ol class="breadcrumb">
					<li><a href="home.jsp">主页</a></li>
					<li class="active">用户管理</li>
					<li class="active">系统管理员</li>
				</ol>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="box">
					<div class="box-header"><h2><i class="fa fa-user"></i>系统管理员</h2></div>
					<div class="box-content">
						<div class="row toolbar">
							<div class="col-xs-4">
								<form action="m_queryAdmin.action" method="post">
									<div class="input-group">
										<div class="input-group-btn">
											<button type="button" class="btn btn-default dropdown-toggle" id="searchTypeOption" data-toggle="dropdown">搜索类型  <span class="caret"></span></button>
											<ul class="dropdown-menu" aria-labelledby="searchTypeOption">
												<li data-option="query_username" ><a href="#">按 账户名</a></li>
											</ul>
										</div><!-- /btn-group -->
										<input type="hidden" value="" name="searchType" id="searchType">
										<input type="text" name="searchname" class="form-control">
										<span class="input-group-btn"><input class="btn btn-default" type="submit" value="搜索" /></span>
									</div>
								</form>
							</div>
							<div class="col-xs-8"><button type="button" data-toggle="modal" data-target="#addModal" class="btn btn-primary"><i class="fa fa-plus"></i></button></div>
						</div>
						<div class="table-responsive">
							<table class="table table-condensed table-bordered table-hover table-striped">
								<thead>
									<tr>
										<th>账户 ID</th>
										<th>账户名</th>
										<th>注册日期</th>
										<th>状态</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<s:iterator value ="lst" id = "admin">
										<tr>
											<td><s:property value = "#admin.id"/></td>
											<td><s:property value = "#admin.username"/></td>
											<td><s:date name="#admin.regdate" format="yyyy-MM-dd"/></td>
											<td><s:property value="#admin.state==1?'正常':'禁用'"/></td>
											<td>
												<s:if test="#admin.id != 1">
												<button class="btn btn-info btn-xs" data-toggle="modal" data-target="#editModal" onclick="updateadmin('<s:property value = "#admin.id"/>','<s:property value = "#admin.username"/>','<s:property value = "#admin.password"/>','<s:property value = "#admin.regdate.toLocaleString()"/>','<s:property value = "#admin.state"/>')"><i class="fa fa-edit"></i></button>
												<button class="btn btn-danger btn-xs" onclick = "deleteadmin('<s:property value = "#admin.id"/>')"><i class="fa fa-trash-o"></i></button>
												</s:if>
											</td>
										</tr>
									</s:iterator>
								</tbody>
							</table>
						</div>
						<s:url id="url_pre" value="m_queryAdmin"><s:param name="currentPage" value="currentPage-1"></s:param></s:url>
						<s:url id="url_first" value="m_queryAdmin"><s:param name="currentPage" value="1"></s:param></s:url>
						<s:url id="url_last" value="m_queryAdmin"><s:param name="currentPage" value="totalPage"></s:param></s:url>
						<s:url id="url_next" value="m_queryAdmin"><s:param name="currentPage" value="currentPage+1"></s:param></s:url>
						<div class="clearfix">
							<ul class="pagination" style="float: right">
								<s:if test="%{(totalPage>1)}">
								<li><s:a href="%{url_first}">首页</s:a></li>
								<s:if test="currentPage!=1"><li><s:a href="%{url_pre}">上一页</s:a></li></s:if>
								<s:else></s:else>
								<s:if test="currentPage!=totalPage"><li><s:a href="%{url_next}">下一页</s:a></li></s:if>
								<s:else></s:else>
								<li><s:a href="%{url_last}">尾页</s:a></li>
								</s:if>
							</ul>
						</div>
					</div>
					<p>当前是第${currentPage}页,共有${totalPage}页</p>
				</div>
			</div>
        </div>
        
        <div class="modal fade" id="addModal" role="dialog" aria-labelledby="myModalLabel" style="display: none;" aria-hidden="true">
        	<div class="modal-dialog">
        		<div class="modal-content">
        			<div class="modal-header">
        				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        				<h4 class="modal-title">添加 系统管理员</h4>
        			</div>
        			<div class="modal-body">
        				<form role="form" action="m_addAdmin.action" method="post">
        					<div class="row">
        						<div class="col-lg-6">
        							<div class="form-group">
        								<label for="username">用户名</label>
        								<input type="text" class="form-control" name="username">
        							</div>
        						</div>
        					</div>
        					<div class="row">
        						<div class="col-lg-12">
        							<div class="form-group">
        								<label for="password">输入密码</label>
        								<input type="password" class="form-control" name="password">
        							</div>
        						</div>
        					</div>
        					<div class="row">
        						<div class="col-lg-12">
        							<div class="form-group">
        								<label for="password2">确认密码</label>
        								<input type="password" class="form-control" name="password2">
        							</div>
        						</div>
        					</div>
        					<div class="modal-footer">
        						<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        						<input type="submit" class="btn btn-primary" value="确认添加"/>
        					</div>
        				</form>
        			</div>
        		</div>
        	</div>
        </div>
        
        <div class="modal fade" id="editModal" role="dialog" aria-labelledby="myModalLabel" style="display: none;" aria-hidden="true">
        	<div class="modal-dialog">
        		<div class="modal-content">
        			<div class="modal-header">
        				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        				<h4 class="modal-title">编辑 系统管理员</h4>
        			</div>
        			<div class="modal-body">
        				<form role="form" action="m_editAdmin.action" method="post">
        					<div class="row">
        						<div class="col-lg-6">
        							<div class="form-group">
        								<label for="username">用户名</label>
        								<input type="text" readonly="readonly" class="form-control" name="username" id="username">
        							</div>
        						</div>
        					</div>
        					<div class="row">
        						<div class="col-lg-12">
        							<div class="form-group">
        								<label for="password">新密码</label>
        								<input type="password" class="form-control" name="password" id="password">
        							</div>
        						</div>
        					</div>
        					<div class="row">
        						<div class="col-lg-12">
        							<div class="form-group">
        								<label for="password2">确认密码</label>
        								<input type="password" class="form-control" name="password2">
        							</div>
        						</div>
        					</div>
        					<div class="row">
        						<div class="col-lg-12">
        							<div class="form-group">
        								<label for="stateOption">状态</label>
        								<div class="form-group-btn">
											<button type="button" class="btn btn-default dropdown-toggle" id="stateOption" name="stateOption" data-toggle="dropdown"><span class="caret"></span></button>
											<ul class="dropdown-menu" aria-labelledby="stateOption">
												<li data-option="1" ><a href="#">正常</a></li>
												<li data-option="0" ><a href="#">禁用</a></li>
											</ul>
        								</div>
        								<input type="hidden" value="" name="state" id="state">
        							</div>
        						</div>
        					</div>
        					<div class="row">
        						<div class="col-lg-12">
        							<div class="form-group">
        								<label for="regdate">注册日期</label>
        								<input type="text" readonly="readonly" class="form-control" name="regdate" id="regdate">
        							</div>
        						</div>
        					</div>
        					<div class="modal-footer">
        						<input type="hidden" name="id" id="id">
        						<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        						<input type="submit" class="btn btn-primary" value="确认更新"/>
        					</div>
        				</form>
        			</div>
        		</div>
        	</div>
        </div>
	</body>
</html>