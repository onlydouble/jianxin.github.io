<!doctype html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>首页</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" href="css/total.css" media="screen"
	title="no title" charset="utf-8">
<script type='text/javascript' src="js/jquery-1.6.js"></script>
<link rel="stylesheet" href="css/navlayout.css" media="screen"
	title="no title" charset="utf-8">

<script type='text/javascript' src='js/menu.js'></script>
</head>
<body>
	<div class="top">
		<div class="W1003">
			<div class="FL saoma">
				<a href="" class="">扫描二维码</a> <a href="" target="_">进入用户版</a>
			</div>
			<div class=" fr Reglogin">
				<ul>
					<li><a href="company/c_main.jsp">深圳科技有限公司的主页！</a></li>
					<!--注册-->
					<li>/</li>
					<li><a href="company/c_index.jsp">退出</a></li>
					<li><a href="list"></a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 搜索框-->
	<div class="search-section">
		<div class="logo">
			<img src="images/logo1.gif" style="height:70px" />
		</div>
		<div class="headsearch" id="headsearch" action="###">
			<a href="cjobQuery"><input name="t" type="hidden" value="course"> <input
				class="search-text" type="text" name="q" autocomplete="off"
				id="web_search_header" placeholder="搜索职位，一秒筛选" value=""
				style="padding-right: 55px;"> <input type="submit"
				class="search-btn" value="搜索" ></a>
			<div class="hot-words" style="display: block;">
				<a href="cjobQuery">职位</a> <a href="">公司名</a>
				<div id="J_keywordList" class="keyword-list" style="display: none;">
					<ul class="result-list"></ul>
				</div>
			</div>
			<div class="headsearch--hot-text">
				热门搜索: <a href="#" class="headsearch--hot-text-a">WEB前端</a> <a
					href="#" class="headsearch--hot-text-a">Java</a> <a href="#"
					class="headsearch--hot-text-a">Android</a> <a href="#"
					class="headsearch--hot-text-a">C##</a> <a href="#"
					class="headsearch--hot-text-a">UI设计</a> <a href="#"
					class="headsearch--hot-text-a">产品经理</a>
			</div>
		</div>
	</div>

	<!--导航栏-->
	<div class="middle">
		<header>
			<nav>
				<ul>
					<li><a href="c_total">首页</a></li>
					<li><a href="list">管理中心</a></li>
					<li><a href="cjobQuery">职位搜索</a></li>
					<li><a href="companyQuery">公司搜索</a></li>
					<li><a href="message_m">查看动态</a></li>
				</ul>
			</nav>
		</header>
	</div>
	<img src="images/logoer.jpg" style="width:65px;height:65px;position:absolute;margin: -50px 0px 18px 90%;z-index:10">
	<img src="images/logoit.png" style=" height: 93px;width: 214px; z-index: 100;position: absolute;margin: -82px -1%" />	
	<!-- <img src="images/logo1.gif" style="height:70px;width:500px;margin-left: 128px;margin-top: -86px;" /> -->
	<div class="center">
		<div class="center-left">
			<div class="center-left-1">
				<ul id="nav">

					<!--第一列-->
					<li class="nav-nav"><a href="#">软件/互联网开发/系统集成</a> <!--1.1-->
						<ul>
							<!--1.1.1-->
							<li><a href="#">软件开发</a>
								<ul>
									<li><a href="#">高级软件开发工程师</a></li>
									<li><a href="#">软件工程师</a></li>
									<li><a href="#">软件研发工程师</a></li>
									<li><a href="#">手机软件开发师</a></li>
									<li><a href="#">互联网软件开发工程师</a></li>
									<li><a href="#">嵌入软件开发师</a></li>
								</ul></li>
							<!--1.1.2-->
							<li><a href="#">系统开发</a>
								<ul>
									<li><a href="#">需求工程师</a></li>
									<li><a href="#">系统架构设计师</a></li>
									<li><a href="#">系统分析员</a></li>
									<li><a href="#">系统集成工程师</a></li>
								</ul></li>
							<!--1.1.3-->
							<li><a href="#">WEB前端开发</a>
								<ul>
									<li><a href="#">web前端开发工程师</a></li>

									<li><a href="#">UI设计</a></li>
									<li><a href="#">UE/UX设计</a></li>
									<li><a href="#">网页设计/制作/美工</a></li>
								</ul></li>
							<!--1.1.3-->
							<li><a href="#">后端开发</a>
								<ul>
									<li><a href="#">算法工程师</a></li>
									<li><a href="#">仿真应用工程师</a></li>
									<li><a href="#">IOS开发工程师</a></li>
									<li><a href="#">Android开发工程师</a></li>
									<li><a href="#">Java开发工程师</a></li>
									<li><a href="#">php开发工程师</a></li>
									<li><a href="#">C语言开发工程师</a></li>
									<li><a href="#">脚本开发工程师</a></li>
								</ul></li>



						</ul></li>
					<!--第二列-->
					<li class="nav-nav"><a href="#">硬件开发</a> <!--2.1--> <!--2.1.1-->
						<ul>
							<li><a href="#">高级硬件工程师</a></li>
							<li><a href="#">硬件工程师</a></li>
							<li><a href="#">嵌入式硬件开发</a></li>
							<li><a href="#">其他</a></li>

						</ul></li>
					<!--第三列-->
					<li class="nav-nav"><a href="#">互联网产品/运营管理</a> <!--3.1-->
						<ul>
							<!--3.1-->
							<li><a href="#">互联网产品</a> <!--3.1.1-->
								<ul>
									<li><a href="#">互联网产品经理</a></li>
									<li><a href="#">互联网产品专员</a></li>
									<li><a href="#">电子商务经理</a></li>
									<li><a href="#">电子商务专员</a></li>
									<li><a href="#">产品总监</a></li>
								</ul></li>
							<!--3.2-->
							<li><a href="#">运营管理</a> <!--3.2.1-->
								<ul>
									<li><a href="#">网络运营管理</a></li>
									<li><a href="#">网站编辑</a></li>
									<li><a href="#">运营总监</a></li>
									<li><a href="#">新媒体运营</a></li>
									<li><a href="#">产品运营</a></li>
									<li><a href="#">市场运营</a></li>
									<li><a href="#">数据运营</a></li>
								</ul></li>
							<!--3.3-->
							<li><a href="#">SEO/SEM</a></li>
						</ul></li>
					<!--第四列-->
					<li class="nav-nav"><a href="#">IT质量管理/测试/配置管理</a>
						<ul>
							<!--4.1-->

							<!--4.1.1-->

							<li><a href="#">系统测试</a></li>
							<li><a href="#">软件测试</a></li>
							<li><a href="#">硬件测试</a></li>
							<li><a href="#">配置管理工程师</a></li>
							<li><a href="#">游戏测试</a></li>


						</ul></li>
					<!--第五列-->
					<li class="nav-nav"><a href="#">IT运维/技术支持</a> <!--5.1-->
						<ul>
							<!--5.1-->
							<li><a href="#">信息技术</a> <!--5.1.1-->
								<ul>
									<li><a href="#">信息技术专员</a></li>
									<li><a href="#">IT技术支持</a></li>
									<li><a href="#">系统工程师</a></li>
									<li><a href="#">系统管理员</a></li>
									<li><a href="#">网络工程师</a></li>
									<li><a href="#">数据库管理员</a></li>
									<li><a href="#">计算机硬件维护工程师</a></li>
								</ul></li>
							<!--5.2-->
							<li><a href="#">IT顾问</a> <!--5.2.1-->
								<ul>
									<li><a href="#">ERP实施顾问</a></li>
									<li><a href="#">IT技术文员</a></li>

								</ul></li>

						</ul></li>
					<!--第六列-->
					<li class="nav-nav"><a href="#">电信/通信技术开发及应用</a>
						<ul>
							<!--6.1-->

							<li><a href="#">通信技术工程师</a></li>
							<li><a href="#">通信研发工程师</a></li>
							<li><a href="#">数据通信工程师</a></li>
							<li><a href="#">移动通信工程师</a></li>
							<li><a href="#">电信网络工程师</a></li>
							<li><a href="#">有线传输工程师</a></li>



						</ul></li>
					<!--结束-->
				</ul>
				<!--导航-->
			</div>
			<!--留言板-->
			<!--左侧部分-->
			<div class="center-left-2">
				<p>
					<label for="message"><p class="message-p">在线留言
						<p>
							<label> <textarea cols="35" rows="7" id="message"
									name="message" required="required"
									placeholder="Write your message here."></textarea>
						</p>
						<div class="message-input">
							<input type="submit" value="Send" />
						</div>
			</div>

		</div>
		<!--中间部分-->
		<div class="center-middle">
			<!--上面部分-->
			<div class="center-middle-top">

				<div id="info" class="clearfix">

					<div class="wrap">

						<a href="#"> <img src="images/common/one-4.png"> <i></i>
							<p>
								<b>在招职位</b> <span>windows客户端开发<br>Python研发工程师 <br>java开发工程师
									<br>web前端 <br>
							</p>
						</a>
					</div>
					<div class="wrap">
						<a href="#x"> <img src="images/common/one-7.png"> <i></i>
							<p>
								<b>在招职位</b> <span>ios开发工程师 <br>产品经理 <br>UI设计师<br>
									产品运营<br>数据分析师<br>
								</span>
							</p>
						</a>

					</div>
					<div class="wrap">
						<a href="#x"> <img src="images/common/three-1.png"> <i></i>
							<p>
								<b>在招职位</b> <span>web前端 <br>高级iOS工程师 <br>资深测试工程师<br>
									高级java工程师
								</span>
							</p>
						</a>

					</div>
					<div class="wrap">
						<a href="#x"> <img src="images/common/three-2.png"> <i></i>
							<p>
								<b>在招职位</b> <span>Android开发<br> 数据产品经理 <br>视觉设计师
								</span>
							</p>
						</a>

					</div>
					<br><br><br>
					<div class="wrap" style="margin-top:80px">

						<a href="#"> <img src="images/common/one-4.png"> <i></i>
							<p>
								<b>在招职位</b> <span>windows客户端开发<br>Python研发工程师 <br>java开发工程师
									<br>web前端 <br>
							</p>
						</a>
					</div>
					<div class="wrap" style="margin-top:80px">
						<a href="#x"> <img src="images/common/one-7.png"> <i></i>
							<p>
								<b>在招职位</b> <span>ios开发工程师 <br>产品经理 <br>UI设计师<br>
									产品运营<br>数据分析师<br>
								</span>
							</p>
						</a>

					</div>
					<div class="wrap" style="margin-top:80px">
						<a href="#x"> <img src="images/common/three-1.png"> <i></i>
							<p>
								<b>在招职位</b> <span>web前端 <br>高级iOS工程师 <br>资深测试工程师<br>
									高级java工程师
								</span>
							</p>
						</a>

					</div>
					<div class="wrap" style="margin-top:80px">
						<a href="#x"> <img src="images/common/three-2.png"> <i></i>
							<p>
								<b>在招职位</b> <span>Android开发<br> 数据产品经理 <br>视觉设计师
								</span>
							</p>
						</a>

					</div>
					<div class="center-middle-img-bo">
						<p class="center-middle-img-bottom">热门公司、热门职业、点进去看看</p>
					</div>
				
				</div>
			</div>
		</div>

		<!--下面部分 -->

		<!--右侧部分-->

		<div class="center-right">
			<!--begin-->

			<div class="userinfo cf">
				<div class="head-box">

					<img width="50" src="images/touxiang.jpg">

				</div>
				<div class="name-wrap">
					<div class="hello-word">

						<span class="word">Hi! ${cname} 你好！
							<p class="sentence">欢迎来到IT兼职网</p>

						</span>
					</div>

					<div class="operate cf">

						<a href="list" class="center-right-btn">管理中心</a> <a href="list"
							class="center-right-btn">设置</a> <a href=""
							class="center-right-btn">我的收藏</a> <a href="message_m"
							class="center-right-btn">我的动态</a>

					</div>
				</div>
			</div>


			<!--职场资讯公告-->
			<div class="center-right-center">
				<div class="center-right-titleGrey">
					<h3>职场资讯</h3>
				</div>
				<div class="center-righte-center-box">
					<ul class="scrollline">
						<br>
						<br>
						<li><a id="newart"
							href="http://arts.51job.com/arts/05/415322.html" target="_blank"
							title="工作难找，招聘市场真的不景气？真相在这里！">工作难找，招聘市场真的不景气？...</a></li>
						<li><a id="newart"
							href="http://arts.51job.com/arts/05/415321.html" target="_blank"
							title="[简历]HR是这样筛选简历的，不看可别后悔！">[简历]HR是这样筛选简历的，不看...</a></li>
						<li><a id="newart"
							href="http://arts.51job.com/arts/05/415317.html" target="_blank"
							title="[薪酬]这份资料，让你面试更有底气！">[薪酬]这份资料，让你面试更有底...</a></li>
						<li><a id="newart"
							href="http://arts.51job.com/arts/05/415316.html" target="_blank"
							title="面试不愉快，这家公司就是垃圾？">面试不愉快，这家公司就是垃圾？</a></li>
						<li><a id="newart"
							href="http://arts.51job.com/arts/05/415315.html" target="_blank"
							title="这种情况，你的面试肯定没戏！">这种情况，你的面试肯定没戏！</a></li>
						<li><a id="newart"
							href="http://arts.51job.com/arts/05/415311.html" target="_blank"
							title="久无面试邀约，该不该主动出击？">久无面试邀约，该不该主动出击？</a></li>
					</ul>
				</div>
			</div>
			<!--职场人士看过来-->



			<div class="center-right-bottom">
				<div class="center-right-titleGrey">
					<h3>职场人士看过来</h3>
				</div>
				<div class="center-righte-bottom-img">

					<div class="interactPic">
						<a href="http://ac.51job.com/phpAD/adtrace.php?ID=19004679"
							target="_blank"> <img src="images/ad.gif" width="240"
							height="104">
						</a>
					</div>

					<div class="center-righte-center-box">
						<ul>
							<li><a
								href="http://ac.51job.com/phpAD/adtrace.php?ID=19614286"
								target="_blank">你是《欢乐颂》中的谁？</a></li>
							<li><a href="http://bbs.51job.com/topic.php?tid=376146"
								target="_blank">抢楼拿礼品，你们的“粽仙”回来啦！</a></li>
							<li><a href="http://bbs.51job.com/topic.php?tid=376041"
								target="_blank">8090，毕业第几年月薪过万了？</a></li>
						</ul>
					</div>

				</div>
			</div>
			<!--end-->

		</div>

	</div>
	<!-- 页面底部的信息 -->
	<div class="footer">Copyright © 2013-2015 All Rights Reversed.
		京ICP备11018032号-8 京公网安备11010802013056</div>




	<script type="text/javascript">
		function mainmenu() {
			$(" #nav ul ").css({
				display : "none"
			}); // Opera Fix
			$(" #nav li").hover(function() {
				$(this).find('ul:first').css({
					visibility : "visible"
				}).show(400);
			}, function() {
				$(this).find('ul:first').css({
					visibility : "hidden"
				});
			});
		}

		$(document).ready(function() {
			mainmenu();
		});
	</script>
</body>
</html>
