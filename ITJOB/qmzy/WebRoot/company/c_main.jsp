
<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>管理中心</title>
<link href="css/font-awesome.min.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" href="css/company.css" media="screen"
	title="no title" charset="utf-8">

<style type="text/css">.pass{
	margin-left: 50px;
}
.pass_1{
	border-left: 3px solid #a2c2f2;
	
	width: 100px;
	height: 60px;
	}
	.pass_1_1{
		padding:15px 10px;
		font-size: 20px;
		font-weight: bold;
		letter-spacing: 5px;
		
	}
	p{}
.pass_2{

	width: 250px;
	height: 100px;
	margin-top: 20px;
	border-top: 3px solid #A4c4f2;
	}
	.pass_3{
		
		width: 300px;
		height:100px;
		margin-top: 20px;
		border-top: 3px solid #A4c4f2;
	}
	.pass_4{
		
		width: 400px;
		height: 50px;
		margin-top: 10px;
		border-top: 3px solid #A4c4f2;
	}
	
</style>
</head>
<body>
	<!--TOP-->
	<div class="top">
		<div class="W1003">
			<div class="FL saoma">
				<a href="" class="">扫描二维码</a> <a href="" target="_">进入用户版</a>
			</div>
			<div class=" fr Reglogin">
				<ul>
					<li><a href="">深圳科技有限公司的主页</a></li>
					<!--注册-->
					<li>/</li>
					<li><a href="company/c_index.jsp">退出</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="logo">
<!-- 	<img src="images/logoer.jpg" style="width:112px;height:112px;position:absolute;margin: 24px 0px 18px -157px;z-index:10"> -->
	<img src="images/logoit.png" style="height: 88px;width: 215px;z-index: 100;position: absolute;margin: -17px -13%;" />	
	 <img src="images/head.jpg" style="height:80px;width:1500px;z-index:-999;margin-top:-20px;margin-left:-188px" />
	</div>
	<!--导航栏-->
	<div class="middle">
		<header>
			<nav>
				<ul>
					<li><a href="c_total">首页</a></li>
					<li><a href="c_main.jsp">管理中心</a></li>
					<li><a href="cjobQuery">职位搜索</a></li>
					<li><a href="companyQuery">公司搜索</a></li>
					<li><a href="message_m">查看动态</a></li>
				</ul>
			</nav>
		</header>

	</div>
	<div class="center">
	<!-- 	<div class="center-left"> -->
<!-- 			<div class="center-left-1"></div>
			留言板
			左侧部分
			<div class="center-left-2">
				<p>
					<label for="message"></label>
				</p>
				<p class="message-p">在线留言</p>
				<p>
					<label> <textarea cols="29" rows="7" id="message"
							name="message" required="required"
							placeholder="Write your message here."></textarea>
					</label>
				</p>
				<div class="message-input">
					<input value="Send" type="submit">
				</div>
			</div>

		</div> -->
		<!-- 中间部分 -->
		<div class="center-right">
		
  <iframe width=500px height=500 frameborder=0 scrolling=auto src="showCompany" name="applyCompanyjob"></iframe>
	
		</div>
			
		</div>
		<!-- 右侧部分 -->
		<div class="center-middle">
			<!--begin-->
			<div class="box-content">

				<div class="table-responsive">
					<table
						class="table table-condensed table-bordered table-hover table-striped ">
						<thead class="table_table">
							<tr>
							<th><span>ID</span></th>
								<th><span>职位</span></th>
								<th><span>薪酬</span></th>
								<th><span>要求</span></th>
								<th><li><a href="#">发布职位</a></li></th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${request.users}" var="companyjob">
								<tr>
									<td>${companyjob.cjid}</td>
									<td>${companyjob.cjob}</td>
									<td>${companyjob.csalary}</td>
									<td>${companyjob.crequest}</td>
									<td><a href="">修改</a></td>
									<td><a
										href="deleteCompanyjob.action?cjid=${companyjob.cjid}"
										name="deleteCompanyjob"
										onclick="javascript: return confirm('真的要删除吗？');" href="list">删除</a></td>
								</tr>
							</c:forEach>

						</tbody>
					</table>


				</div>

			</div>

		</div>



		<!-- 结束 -->
	</div>
	<!-- footer -->
	<div class="footer" style="background:url(images/foot.png)">Copyright © 2013-2015 All Rights Reversed.
		京ICP备11018032号-8 京公网安备11010802013056</div>
	<div class="land">
		<div class="click">
			<a href=""><img src="images/msg/back.gif" width="20px"
				height="20px;" style="float: right;
margin: 10px 20px;"></a>
			<form action="addCompanyjob" method="post">
				<span class="form">添加职位</span>
				<div class="form-group">
					<label class="control-label"> 职位名称</label>
					<div class="">

						<input type="text" name="cjob" class="form-control"
							placeholder="职位名称">

					</div>
				</div>
				<div class="form-group">
					<label class="control-label" name="csalary">职位薪酬</label>
					<div class="">
						<input type="text" name="csalary" class="form-control"
							placeholder="职位薪酬">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label" name="crequest">职位要求</label>
					<div class="">
						<input type="text" name="crequest" class="form-control"
							placeholder="职位要求">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label" name="cid">发布公司编号</label>
					<div class="">
						<input type="text" class="form-control" name="cid"
							placeholder="发布公司编号">

					</div>
				</div>





				<div class="form-group">
					<div class="">
						<a href="addCompanyjob" name="addCompanyjob">
							<button type="submit" class="btn btn-default">添加</button>
						</a>
						<button type="reset" class="btn btn-default">撤销</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<script type="text/javascript">
		$(function() {
			$("li:eq(8)").click(function() {
				$(".land").css({
					"display" : "block"
				});
			});
		});
		window.onload = function() {
		    var oDiv = document.getElementById("tab");
		    var oLi = oDiv.getElementsByTagName("div")[0].getElementsByTagName("li");
		    var aCon = oDiv.getElementsByTagName("div")[1].getElementsByTagName("div");
		    var timer = null;
		    for (var i = 0; i < oLi.length; i++) {
		        oLi[i].index = i;
		        oLi[i].onmouseover = function() {
		            show(this.index);
		        }
		    }
		    function show(a) {
		        index = a;
		        var alpha = 0;
		        for (var j = 0; j < oLi.length; j++) {
		            oLi[j].className = "";
		            aCon[j].className ="" ;
		            aCon[j].style.opacity = 0;
		            aCon[j].style.filter = "alpha(opacity=0)";
		        }
		        oLi[index].className = "cur";
		        clearInterval(timer);
		        timer = setInterval(function() {
		            alpha += 2;
		            alpha > 100 && (alpha = 100);
		            aCon[index].style.opacity = alpha / 100;
		            aCon[index].style.filter = "alpha(opacity=" + alpha + ")";
		            alpha == 100 && clearInterval(timer);
		        },
		        5)
		    }
		}
	</script>
</body>
</html>
