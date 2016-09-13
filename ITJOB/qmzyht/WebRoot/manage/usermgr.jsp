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
			function updatecompany(cid,cname,cpassword,cemail,caddress,clink,cphone,cimg){
				document.getElementById('cid').value=cid;
				document.getElementById('cname').value=cname;
				document.getElementById('cpassword').value=cpassword;
				document.getElementById('cemail').value=cemail;
				
			document.getElementById('clink').value=clink;
				document.getElementById('caddress').value=caddress;
				document.getElementById('cphone').value=cphone;
				var vg = document.getElementById("preview");
				if ((cimg == null) || (cimg == "")) {
					vg.src = "../data/avatar/default.jpg";
				} else {
					vg.src = ".." + cimg;
				}
				document.getElementById('oldimg').value = cimg;
			}
			
			function deleteCompany(cid){
				window.location.href = "m_deleteCompany.action?cid="+cid;
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
					<li class="active">用户管理</li>
					<li class="active">企业用户</li>
				</ol>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="box">
					<div class="box-header"><h2><i class="fa fa-github-alt"></i>企业用户</h2></div>
					<div class="box-content">
						<div class="row toolbar">
							<div class="col-xs-4">
								<form action="m_queryCompany.action" method="post">
									<div class="input-group">
										<div class="input-group-btn">
											<button type="button" class="btn btn-default dropdown-toggle" id="searchTypeOption" data-toggle="dropdown">搜索类型 <span class="caret"></span></button>
											<ul class="dropdown-menu" aria-labelledby="searchTypeOption">
												<li data-option="query_cname" ><a href="#">按 公司名</a></li>
												<li data-option="query_caddress"><a href="#">按 地址</a></li>
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
										<th>公司名</th>
										<th>电子邮箱</th>
										<th>地址</th>
										<th>公司链接</th>
										<th>手机号</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<s:iterator value ="lst" id = "company">
										<tr>
											<td><s:property value = "#company.cid"/></td>
											<td><s:property value = "#company.cname"/></td>
											<td><s:property value = "#company.cemail"/></td>
											<td><s:property value = "#company.caddress"/></td>
											<td><s:property value = "#company.clink"/></td>
											<td><s:property value = "#company.cphone"/></td>
											
											<td>
											<button class="btn btn-info btn-xs" data-toggle="modal" name="cid" data-target="#editModal" onclick="updatecompany('<s:property value = "#company.cid"/>','<s:property value = "#company.cname"/>','<s:property value = "#company.cpassword"/>','<s:property value = "#company.cemail"/>','<s:property value = "#company.caddress"/>','<s:property value = "#company.clink"/>','<s:property value = "#company.cphone"/>','<s:property value = "#company.cimg"/>')">
										<%-- 		<s:property value = "#company.clink"/>')"> --%>
								
												<i class="fa fa-edit"></i></button>
												
												<button class="btn btn-danger btn-xs" onclick = "deleteCompany('<s:property value = "#company.cid"/>')">
												<i class="fa fa-trash-o"></i></button>
											</td>
										</tr>
									</s:iterator>
								</tbody>
							</table>
						</div>
						<s:url id="url_pre" value="m_queryCompany"><s:param name="currentPage" value="currentPage-1"></s:param></s:url>
						<s:url id="url_first" value="m_queryCompany"><s:param name="currentPage" value="1"></s:param></s:url>
						<s:url id="url_last" value="m_queryCompany"><s:param name="currentPage" value="totalPage"></s:param></s:url>
						<s:url id="url_next" value="m_queryCompany"><s:param name="currentPage" value="currentPage+1"></s:param></s:url>
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
     
        
        <div class="modal fade" id="editModal" role="dialog" aria-labelledby="myModalLabel" style="display: none;" aria-hidden="true">
        	<div class="modal-dialog">
        		<div class="modal-content">
        			<div class="modal-header">
        				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        				<h4 class="modal-title">编辑 企业用户</h4>
        			</div>
        			<div class="modal-body">
        				<form role="form" action="m_editCompany.action" enctype="multipart/form-data" method="post">
        					<div class="row">
        						<div class="col-lg-6">
        							<div class="form-group">
        								<label for="cname">用户名</label>
        								<input type="text" readonly="readonly" class="form-control" name="cname" id="cname">
        							</div>
        						</div>
        					</div>
        					<div class="row">
        						<div class="col-lg-12">
        							<div class="form-group">
        								<label for="password">新密码</label>
        								<input type="password" class="form-control" name="cpassword" id="password">
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
        								<label for="clink">公司链接</label>
        								<input type="text" class="form-control" name="clink" id="clink">
        							</div>
        						</div>
        					</div>
        					<div class="row">
        						<div class="col-lg-12">
        							<div class="form-group">
        								<label for="caddress">地区</label>
        								<input type="text" class="form-control" name="caddress" id="caddress">
        							</div>
        						</div>
        					</div>
        					<div class="row">
        						<div class="col-lg-12">
        							<div class="form-group">
        								<label for="cphone">手机号</label>
        								<textarea name="cphone" id="content" cols="100" rows="4" style="width:100%;height:50px;" class="form-control"></textarea>
        							</div>
        						</div>
        					</div>
        					<div class="row">
        						<div class="col-lg-6 col-md-12">
        							<div class="row">
        								
		        						<div class="col-lg-6 col-md-6">
		        							<div class="form-group">
		        								<label for="upload">头像</label>
		        								<div class="city-upload-img-preview">
		        									<div id="sig_preview"><img id="preview" width=-1 height=-1 style="diplay:none" /></div>
		        									<input type="file" name="upload" id="upload" accept="image/*" contenteditable="false" onchange="setImagePreview()">
		        									<input type="hidden" value="" name="oldimg" id="oldimg" src="data/avatar/10.gif">
		        								</div>
		        							</div>
		        						</div>
	        						</div>
        						</div>
        					</div>
        				<!-- 	<div class="row">
        						<div class="col-lg-12">
        							<div class="form-group">
        								<label for="regdate">注册日期</label>
        								<input type="text" readonly="readonly" class="form-control" name="regdate" id="regdate">
        							</div>
        						</div>
        					</div> -->
        					<div class="modal-footer">
        						<input type="hidden" name="cid" id="cid">
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