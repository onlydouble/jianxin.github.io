<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="loginverify.jsp" %>
<%@ taglib uri="/struts-tags" prefix="s" %>

<html lang="zh">
	<head>
		<meta charset="utf-8">
		<title>企业用户数据管理-系统管理员</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<link href="../css/bootstrap.min.css" rel="stylesheet">
		<link href="../css/style.css" rel="stylesheet">
		<link href="../css/font-awesome.min.css" rel="stylesheet">
		<script type="text/javascript" src="../js/jquery.min.js"></script>
		<script type="text/javascript" src="../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../js/script.js"></script>
		<script type="text/javascript">
			
			function deleteMessage(id){
				window.location.href = "m_deleteMessage.action?id="+id;
			}
			
			function setImagePreview() {
				var docObj = document.getElementById("upload");
				var imgObjPreview = document.getElementById("preview");
                if (docObj.files && docObj.files[0]) {
                	//火狐下，直接设img属性
                	imgObjPreview.style.display = 'block';
                	imgObjPreview.style.width = '64px';
                	imgObjPreview.style.height = '64px';
                	//imgObjPreview.src = docObj.files[0].getAsDataURL();
                	//火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式  
                	imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
                } else {
                	//IE下，使用滤镜
                	docObj.select();
                	var imgSrc = document.selection.createRange().text;
                	var localImagId = document.getElementById("sig_preview");
                	//必须设置初始大小
                	localImagId.style.width = "64px";
                	localImagId.style.height = "64px";
                	//图片异常的捕捉，防止用户修改后缀来伪造图片
                	try {
                		localImagId.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                		localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
                	} catch(e) {
                		alert("您上传的图片格式不正确，请重新选择!");
                		return false;
                	}
                	imgObjPreview.style.display = 'none';
                	document.selection.empty();
                }
                return true;
			}
		</script>
	</head>
	<body>
		<div class="row">
			<div class="col-lg-12">
				<ol class="breadcrumb">
					<li><a href="home.jsp">主页</a></li>
					<li class="active">管理</li>
					<li class="active">留言管理</li>
				</ol>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="box">
					<div class="box-header"><h2><i class="fa fa-github-alt"></i>留言信息</h2></div>
					<div class="box-content">
						<div class="row toolbar">
							<div class="col-xs-4">
								<form action="m_queryMessage.action" method="post">
									<div class="input-group">
										<div class="input-group-btn">
											<button type="button" class="btn btn-default dropdown-toggle" id="searchTypeOption" data-toggle="dropdown">搜索类型 <span class="caret"></span></button>
											<ul class="dropdown-menu" aria-labelledby="searchTypeOption">
												<li data-option="query_meno" ><a href="#">按用户名</a></li>
											</ul>
										</div><!-- /btn-group -->
										<input type="hidden" value="" name="searchType" id="searchType">
										<input type="text" name="searchname" class="form-control">
										<span class="input-group-btn"><input class="btn btn-default" type="submit" value="搜索" /></span>
									</div>
								</form>
							</div>
						<div class="table-responsive">
							<table class="table table-condensed table-bordered table-hover table-striped">
								<thead>
									<tr>
										<th>ID</th>
										<th>账号</th>
										<th>电子邮箱</th>
										<th>内容</th>
										<th>留言日期</th>
										<th>手机号</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<s:iterator value ="lst" id = "message">
										<tr>
											<td><s:property value = "#message.id"/></td>
											<td><s:property value = "#message.meno"/></td>
											<td><s:property value = "#message.memail"/></td>
											<td><s:property value = "#message.mecontent"/></td>
											<td><s:property value = "#message.medate"/></td>
											<td><s:property value = "#message.mephone"/></td>
											
											<td>

												<button class="btn btn-danger btn-xs" onclick = "deleteMessage('<s:property value = "#message.id"/>')">
												<i class="fa fa-trash-o"></i></button>
											</td>
										</tr>
									</s:iterator>
								</tbody>
							</table>
						</div>
						<s:url id="url_pre" value="m_queryMessage"><s:param name="currentPage" value="currentPage-1"></s:param></s:url>
						<s:url id="url_first" value="m_queryMessage"><s:param name="currentPage" value="1"></s:param></s:url>
						<s:url id="url_last" value="m_queryMessage"><s:param name="currentPage" value="totalPage"></s:param></s:url>
						<s:url id="url_next" value="m_queryMessage"><s:param name="currentPage" value="currentPage+1"></s:param></s:url>
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
     
        
        
	</body>
</html>