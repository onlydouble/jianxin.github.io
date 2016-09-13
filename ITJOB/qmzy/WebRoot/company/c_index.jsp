<!doctype html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>IT兼职网</title>


               <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
                 <link rel="stylesheet" type="text/css" href="css/style.css">
<style type="text/css">
	ol.carousel-indicators{
		position: absolute;
		z-index: 10;
		left:25%;
		top: 120%;
	}

</style>
		<script type="text/javascript">
		

		</script>
</head>
<body>
           <!--顶部-->
         <div class="top">
	         <div class="W1003">
	         	            <div class="FL saoma">
	         	            	<a href="" class="">扫描二维码</a>
	         	            	<a href="" target="_">进入企业版</a>
	         	            </div>
	         	            <div class=" fr Reglogin">
	         	                 <ul>
	         	            	<li><a href="c_login">注册</a></li><!--注册-->
	         	            	<li>/</li>
	         	            	<li><a href="c_index.jsp">登录</a></li>
	         	                 </ul>
	         	            </div>
	         </div>
	 </div>
	<!-- 搜索框-->

<div class="search-section">
<div class="logo">
	<img src="images/logoit.png" style="height: 103px;width: 231px;margin-top:-10px"/>
</div>
<form id="form" action="cjobQuery">
			<div class="headsearch" id="headsearch" action="###">
				<input name="t" type="hidden" value="course">
				<input class="search-text" type="text" name="q" autocomplete="off" id="web_search_header" placeholder="搜索职位，一秒筛选" value="" style="padding-right: 55px;">
				<input type="submit" class="search-btn" value="搜索">
				<div class="hot-words" style="display: block;">
					<a href="cjobQuery" >职位</a>
					<a href="companyQuery" >公司名</a>
				<div id="J_keywordList" class="keyword-list" style="display: none;">
					<ul class="result-list"></ul>
				</div>
			</div>
		</div></form>
	<!--导航栏-->
<div class="middle">
	<header>
		  <nav>
			      <ul>
			        <li><a href="c_total.jsp">首页</a></li>
			        <li><a href="c_main.jsp">管理中心</a></li>
			        <li><a href="cjobQuery">职位搜索</a></li>
			        <li><a href="MYIT.html">公司搜索</a></li>
			        <li><a href="message">留言</a></li>
			      </ul>
		    </nav>
		    </header>
	<!--主体内容-->
	<article>
	<div class="middle_1">
	  <div class="fourpage" id="fourpage">
        	   <div class="container">
<div class="col-lg-6">


       <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="2000" style="height: 300px;">
        	  <div class="carousel-indicators">

         	<ol class="carousel-indicators">
        	   		<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li><!--连接-->
        	   		<li data-target="#carousel-example-generic" data-slide-to="1" ></li>
        	   		<li data-target="#carousel-example-generic" data-slide-to="2" ></li>
        	   		<li data-target="#carousel-example-generic" data-slide-to="3" ></li>
        	   		<li data-target="#carousel-example-generic" data-slide-to="4" ></li>
        	   	</ol>
								  </div>
        	   	<div class="carousel-inner">
								<div class="item active" style="width: 500px">
									<img src="images/IBM1.gif" alt="1 slide"/><!--可以放文字-->
								</div>
        	   		<div class="item" style="width: 500px">
        	   			<img src="images/China.png" alt="2 slide"/><!--可以放文字-->
        	   		</div>
        	   		<div class="item" style="width: 500px" alt="3 slide">
        	   			<img src="images/4.jpg"/><!--可以放文字-->
        	   		</div>
        	   		<div class="item" style="width: 500px" alt="4 slide">
        	   			<img src="images/5.jpg"/><!--可以放文字-->
        	   		</div>
        	   		<div class="item" style="width: 500px" alt="5 slide">
        	   			<img src="images/6.jpg"/><!--可以放文字-->
        	   		</div>
        	   	</div>
        	   	<a href="#carousel-example-generic" class="left carousel-control" data-slide="prev">
        	   	<span class="glyphicon glyphicon-chevron-left"></span>
        	   	</a>
        	   	<a href="#carousel-example-generic" class="right carousel-control" data-slide="next">
        	   	<span class="glyphicon glyphicon-chevron-right"></span>
        	   	</a>

        	   </div>
						 </div>
        </div>
        </div>
	</div>
	</div>
<!--登录注册-->
<div class="col-lg-12">


            <div class="fr middle_2">
							<div class="col-sm-offset-2 col-sm-12">
							<a href="c_login">
							<h3 class="text">	没有账号？立即注册</h3>
		</a></div>
<!--账号 -->
     <form class="form-horizontal" method="post" action="clogin" >

<div class="form-group">
<label for="inputEmail3" class="col-sm-3 control-label"><span>用户名：</span></label>
<div class="col-sm-7">
<input type="text" class="form-control" id="inputEmail3" placeholder="username" name="cname">
</div>
</div>
<div class="form-group">
<label for="inputPassword3" class="col-sm-3 control-label"><span>密码：</span></label>
<div class="col-sm-7">
<input type="password" name="cpassword" class="form-control" id="inputPassword3 password" placeholder="Password">
</div>
</div>

<div class="form-group">
<div class="col-sm-offset-2 col-sm-10">
<div class="checkbox">
<label>
<input type="checkbox"> Remember me
</label>
</div>
</div>
</div>
<div class="form-group">
<div class="col-sm-offset-3 col-sm-12">
<button type="submit" class="btn btn-default">登录</button>
<button  type="reset" class="btn btn-default">重置</button>
</div>
</div>
<div class="col-sm-offset-4 col-sm-12">
<a href="#">
	忘记密码？立即找回
</a></div>
</form>
</div>
            <!--下标-->

</article>
		<script src="js/jquery-2.1.1.min.js"></script>
		<script src="js/global.js"></script>
		<script src="js/bootstrap.min.js"></script>


</body>
</html>
