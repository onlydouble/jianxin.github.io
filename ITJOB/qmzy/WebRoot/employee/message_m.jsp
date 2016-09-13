<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html class="ua-win ua-ff4">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta http-equiv="x-ua-compatible" content="ie=7" />
<meta name="saoatech-site-verification"
	content="N2Y5MzU2M2YyNmVhOTllMGQwYmI4NzAwMTIxYmE2ZDU=" />
<title>IT兼职网</title>

<link
	href='http://fonts.useso.com/css?family=Lato:100,300,400,700,100italic,300italic,400italic|Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.useso.com/css?family=Raleway:400,200,300,500,600,800,700,900'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="css/messagestyle.css">

<meta content="" name="description" />
<meta content="" name="keywords" />
<script type="text/javascript">
	var _head_start = new Date();
	var _current_date = '2016-06-26 20:58:18';
	var CSRFToken = 'ZgYW0R6KfgBtmlASEbtgV2jUglXAT0HPfqU5hA**';
</script>

<link rel="stylesheet" type="text/css"
	href="http://assets.dajieimg.com/??/up/new-v2011/css/after-index.60674.css,/css/channels/share.54870.css,/lib/jquery/jquery.jcrop.v2.54873.css,/css/channels/network.54870.css,/css/modules/dialog-multistep.54870.css,/up/radar/css/mileage_index_new.55129.css,/up/circle/css/select.54873.css,/up/circle/css/base-form.54873.css,/up/Contacts-2012/css/change-card.57407.css,/up/hello2012/css/shouyeyoulan.55129.css,/up/icard/css/last-view-list.55129.css,/up/icard/css/change-card.55129.css,/up/icard/css/icard-main.55129.css,/up/user-guide/css/userguide.56099.css,/up/new-v2012/css/pf-visited.55129.css,/up/wiki-card/css/wikicard.55129.css,/up/feed/css/feed.57495.css,/up/group/css/dj-home-right.57723.css" />
<link rel="stylesheet" type="text/css" href="css/IT.css">
<link rel="stylesheet" type="text/css"
	href="http://assets.dajieimg.com/css/dajie.61128.css" />
<script type="text/javascript"
	src="http://assets.dajieimg.com/js/dajie.61191.js"></script>
<script type="text/javascript"
	src="http://assets.dajieimg.com/??/js/jquery.linkup.54873.js,/lib/jquery/jquery.jcrop.v2.54873.js,/lib/jquery/jquery.color.54873.js,/up/icard/js/change-card.55129.js,/js/jquery.beautySelect.54873.js,/js/jquery.formvalidate.60122.js,/up/atFriend/js/jquery.atFriend.56015.js,/up/hello2012/js/upload-avatar.55129.js,/up/multiselect/jquery.matchbox.60007.js,/up/djAds/js/ad-base.61133.js,/up/wiki-card/js/wikicard.55141.js,/up/feed/js/feed.57342.js,/up/new-v2012/js/feed-friends.59563.js,/up/home/js/index.55117.js,/up/Contacts-2012/js/mayknow.56189.js,/up/new-v2012/js/feed-filter.55624.js,/static/libs/seajs/sea.54668.js,/up/group/js/dj-home-right.55539.js,/up/home/js/posters.57723.js"></script>
<script type="text/javascript"
	src="http://assets.dajieimg.com/static/libs/seajs/sea.54668.js"></script>
<script id="djnew" type="text/javascript"
	src="http://assets.dajieimg.com/static/libs/street/street.59909.js"></script>
<script type="text/javascript">
	var seaConfig = {
		'base' : 'http://static.dajieimg.com',
		'alias' : {
			'user-guide/mod/position-import/js/import-init' : 'user-guide/mod/position-import/js/import-init.57505.js',
			'user-guide/mod/position-import/css/import-guide.css' : 'user-guide/mod/position-import/css/import-guide.57505.css',
			'user-guide/mod/commen/js/guide-init' : 'user-guide/mod/commen/js/guide-init.57505.js',
			'user-guide/mod/feed-guide/js/feed-guide' : 'user-guide/mod/feed-guide/js/feed-guide.60380.js',
			'feed-guide.css' : 'user-guide/mod/feed-guide/css/feed-guide.55878.css',
			'user-guide/mod/skill-guide/js/skill-guide' : 'user-guide/mod/skill-guide/js/skill-guide.57505.js',
			'user-guide/mod/skill-guide/css/skill-guide.css' : 'user-guide/mod/skill-guide/css/skill-guide.55956.css',
			'user-guide/mod/alumnus-guide-v2/js/alumnus-guide' : 'user-guide/mod/alumnus-guide-v2/js/alumnus-guide-v2.57505.js',
			'user-guide/mod/alumnus-guide/css/alumnus-guide-v2.css' : 'user-guide/mod/alumnus-guide-v2/css/alumnus-guide-v2.55589.css',
			'user-guide/mod/intention/js/intention-b' : 'user-guide/mod/intention/js/intention-b.57505.js',
			'user-guide/mod/intention/js/intention' : 'user-guide/mod/intention/js/intention.59275.js',
			'user-guide/mod/intention/css/intention.css' : 'user-guide/mod/intention/css/intention.55660.css',
			'user-guide/mod/friend-request/js/friend-request' : 'user-guide/mod/friend-request/js/friend-request.60380.js',
			'user-guide/mod/friend-request/css/friend-request.css' : 'user-guide/mod/friend-request/css/friend-request.56072.css',
			'user-guide/mod/complete-profile/js/complete-new' : 'user-guide/mod/complete-profile/js/complete-new.57505.js',
			'complete-new.css' : 'user-guide/mod/complete-profile/css/complete-new.55753.css',
			'raphael' : 'common/mod/raphael/raphael.56045.js',
			'sns-base/mod/popularity/js/popularity' : 'sns-base/mod/popularity/js/popularity.59979.js',
			'sns-base/mod/popularity/css/popularity.css' : 'sns-base/mod/popularity/css/popularity.56146.css',
			'sns-base/mod/visited/js/visited' : 'sns-base/mod/visited/js/visited.57414.js',
			'sns-base/mod/visited/css/visited.css' : 'sns-base/mod/visited/css/visited.56146.css',
			'sns-base/mod/faved/js/faved' : 'sns-base/mod/faved/js/faved.59802.js',
			'sns-base/mod/faved/css/faved.css' : 'sns-base/mod/faved/css/faved.59761.css',
			'user-guide/mod/group-guide/js/group-init' : 'user-guide/mod/group-guide/js/group-guide.57505.js',
			'user-guide/mod/group-guide/css/group-guide.css' : 'user-guide/mod/group-guide/css/group-guide.56159.css',
			'user-guide/mod/fresh-guide/js/fresh-guide' : 'user-guide/mod/fresh-guide/js/fresh-guide.57505.js',
			'user-guide/mod/fresh-guide/css/fresh-guide.css' : 'user-guide/mod/fresh-guide/css/fresh-guide.56203.css',
			'header-tip.css' : 'login/util/header-tip/css/header-tip.56521.css',
			'login/util/header-tip/js/header-tip' : 'login/util/header-tip/js/header-tip.56726.js'
		}
	};
	seajs.config(seaConfig);
	street.sea.insertStyle(seaConfig);
</script>
<script type="text/javascript">
	$.domains = {
		www : "www.dajie.com",
		assets : "assets.dajieimg.com"
	};
</script>


<style type="text/css">
.page1 {
	margin-left: 60%;
}

.li {
	display: inline-block;
	padding-left: 0;
	margin: 20px 36%;
	border-radius: 4px;
	border: 2px solid #a4c4f2;
	width: 300px;
}

a {
	text-decoration: none;
}

.txt-rt {
	text-align: right;
} /* text align right */
.txt-lt {
	text-align: left;
} /* text align left */
.txt-center {
	text-align: center;
} /* text align center */
.float-rt {
	float: right;
} /* float right */
.float-lt {
	float: left;
} /* float left */
.clear {
	clear: both;
} /* clear float */
.pos-relative {
	position: relative;
} /* Position Relative */
.pos-absolute {
	position: absolute;
} /* Position Absolute */
.vertical-base {
	vertical-align: baseline;
} /* vertical align baseline */
.vertical-top {
	vertical-align: top;
} /* vertical align top */
nav.vertical ul li {
	display: block;
} /* vertical menu */
nav.horizontal ul li {
	display: inline-block;
} /* horizontal menu */
img {
	max-width: 100%;
}
/*end reset*/
/****-----start-body----****/
body {
	font-family: 'Lora', serif;
}

body a,form li,.submit input[type="submit"] {
	transition: 0.1s all;
	-webkit-transition: 0.1s all;
	-moz-transition: 0.1s all;
	-o-transition: 0.1s all;
}

body h1 {
	color: #fff;
	text-align: center;
	padding-top: 2em;
	font-size: 2.9em;
	font-family: 'Raleway', sans-serif;
}

.login-01 {
	width: 45%;
	margin-left: 10%;
}

form {
	padding: 0% 1%;
}

form li.first,li.second {
	border: none;
	list-style: none;
	margin-bottom: 10px;
	width: 100%;
}

.icon,.icon2 {
	height: 55px;
	width: 55px;
	display: block;
	float: left;
	border-top-left-radius: 0.3em;
	-o-border-top-left-radius: 0.3em;
	-moz-border-top-left-radius: 0.3em;
	-webkit-border-top-left-radius: 0.3em;
	border-border-bottom-left-radius: 0.3em;
	-o-border-bottom-left-radius: 0.3em;
	-moz-border-bottom-left-radius: 0.3em;
	-webkit-border-bottom-left-radius: 0.3em;
}

.user {
	background: url(../images/icons.png) no-repeat 14px 15px #f79d29;
}

.email {
	background: url(../images/icons.png) no-repeat 15px -39px #f79d29;
}

.phone {
	background: url(../images/icons.png) no-repeat 15px -93px #f79d29;
}

.msg {
	background: url(../images/msg.png) no-repeat 16px 16px #f79d29;
}

li.first:hover .user {
	background: url(../images/icons.png) no-repeat 14px 15px #DB2048;
}

li.first:hover .email {
	background: url(../images/icons.png) no-repeat 15px -39px #DB2048;
}

li.first:hover .phone {
	background: url(../images/icons.png) no-repeat 15px -93px #DB2048;
}

li.second:hover .msg {
	background: url(../images/msg.png) no-repeat 16px 16px #a4c4f2;
}
/*-----*/
input[type="text"],form textarea {
	width: 77%;
	padding: 0.6em 1em 0.6em 1em;
	color: #858282;
	font-size: 16px;
	outline: none;
	background: #fff;
	font-weight: 500;
	border: none;
	font-family: 'Lora', serif;
	border-top-right-radius: 0.3em;
	-o-border-top-right-radius: 0.3em;
	-moz-border-top-right-radius: 0.3em;
	-webkit-border-top-right-radius: 0.3em;
	border-border-bottom-right-radius: 0.3em;
	-o-border-bottom-right-radius: 0.3em;
	-moz-border-bottom-right-radius: 0.3em;
	-webkit-border-bottom-right-radius: 0.3em;
}

.submit {
	
}

form textarea {
	resize: none;
	height: 140px;
}

.login-01 input[type="submit"] {
	font-size: 17px;
	font-weight: 300;
	color: #fff;
	cursor: pointer;
	outline: none;
	padding: 10px 10px;
	width: 25%;
	border: 2px solid #F79D29;
	float: right;
	background: #F79D29;
	border-radius: 0.3em;
	-o-border-radius: 0.3em;
	-webkit-border-radius: 0.3em;
	-moz-border-radius: 0.3em;
	margin-right: 2.85em;
}

input[type="submit"]:hover {
	-webkit-transform: rotate(4deg);
	transform: rotate(4deg);
	-o-transform: rotate(4deg);
	-moz-transform: rotate(4deg);
}

li.lost {
	margin-bottom: 21px;
}
/*---------------*/
.copy-right {
	text-align: center;
	margin: 2em 0;
}

.copy-right p {
	color: #fff;
	font-size: 1em;
	font-weight: 400;
}

.copy-right p a {
	color: #fff;
}

.copy-right p a:hover {
	text-decoration: underline;
}
/*-----start-responsive-design------*/
@media ( max-width :1440px) {
	.login-01 input[type="submit"] {
		margin-right: 1.85em;
	}
}

@media ( max-width :1366px) {
	.login-01 input[type="submit"] {
		margin-right: 1.6em;
	}
}

@media ( max-width :1280px) {
	.login-01 {
		width: 40%;
		margin: 5% auto 5%;
	}
	body h1 {
		font-size: 2.7em;
	}
}

@media ( max-width :1024px) {
	.login-01 {
		width: 45%;
	}
	body h1 {
		font-size: 2.5em;
	}
}

@media ( max-width :768px) {
	.login-01 {
		width: 63%;
	}
	body h1 {
		font-size: 2.3em;
	}
}

@media ( max-width :640px) {
	.login-01 {
		width: 73%;
	}
	body h1 {
		font-size: 2.1em;
	}
}

@media ( max-width :480px) {
	.login-01 {
		width: 85%;
	}
	.copy-right p {
		font-size: 0.9em;
	}
	input[type="text"],form textarea {
		width: 77%;
		padding: 1em 1em 1em 1em;
		font-size: 15px;
	}
	.icon,.icon2 {
		height: 48px;
		width: 48px;
	}
	.user {
		background: url(../images/icons.png) no-repeat 11px 12px #f79d29;
		background-size: 45%;
	}
	.email {
		background: url(../images/icons.png) no-repeat 12px -36px #f79d29;
		background-size: 45%;
	}
	.phone {
		background: url(../images/icons.png) no-repeat 12px -87px #f79d29;
		background-size: 45%;
	}
	.msg {
		background: url(../images/msg.png) no-repeat 14px 11px #f79d29;
		background-size: 45%;
	}
	li.first:hover .user {
		background: url(../images/icons.png) no-repeat 11px 9px #DB2048;
		background-size: 45%;
	}
	li.first:hover .email {
		background: url(../images/icons.png) no-repeat 12px -36px #DB2048;
		background-size: 45%;
	}
	li.first:hover .phone {
		background: url(../images/icons.png) no-repeat 12px -87px #DB2048;
		background-size: 45%;
	}
	li.second:hover .msg {
		background: url(../images/msg.png) no-repeat 14px 11px #a4c4f2;
		background-size: 45%;
	}
	body h1 {
		font-size: 2em;
		padding-top: 1em;
	}
	form li.first,li.second {
		margin-bottom: 5px;
	}
	li .second {
		position: absolute;
		top: 10%;
		margin-left: 50%;
	}
}

@media ( max-width :320px) {
	input[type="text"],form textarea {
		width: 71%;
		padding: 1em 1em 1em 0.8em;
		font-size: 14px;
	}
	.login-01 {
		width: 96%;
	}
	.icon,.icon2 {
		height: 45px;
		width: 45px;
	}
	.user {
		background: url(../images/icons.png) no-repeat 11px 13px #f79d29;
		background-size: 40%;
	}
	.email {
		background: url(../images/icons.png) no-repeat 12px -29px #f79d29;
		background-size: 40%;
	}
	.phone {
		background: url(../images/icons.png) no-repeat 12px -72px #f79d29;
		background-size: 40%;
	}
	.msg {
		background: url(../images/msg.png) no-repeat 14px 13px #f79d29;
		background-size: 40%;
	}
	li.first:hover .user {
		background: url(../images/icons.png) no-repeat 11px 13px #DB2048;
		background-size: 40%;
	}
	li.first:hover .email {
		background: url(../images/icons.png) no-repeat 12px -29px #DB2048;
		background-size: 40%;
	}
	li.first:hover .phone {
		background: url(../images/icons.png) no-repeat 12px -72px #DB2048;
		background-size: 40%;
	}
	li.second:hover .msg {
		background: url(../images/msg.png) no-repeat 14px 13px #DB2048;
		background-size: 40%;
	}
	.copy-right p {
		line-height: 1.6em;
	}
	.login-01 input[type="submit"] {
		font-size: 17px;
		padding: 8px 8px;
		width: 36%;
		margin-right: 0.7em;
	}
	body h1 {
		font-size: 1.6em;
	}
	#feed {
		background: #999;
	}
	em {
		
	}
	.dj-content-wrap {
		background: #d9d9d9 repeat-x
	}
	.dj-content-inner {
		margin: 0 auto;
		background: #d9d9d9 center 0 no-repeat
	}
	.dj-sub-title {
		background: #d9d9d9;
		center
		0
		no-repeat
	}
	.dj-header .dj-top-section .dj-nav-g .dj-nav-list li.dj-header-nav-item .item cite
		{
		display: inline-block;
		font-style: normal;
		cursor: pointer;
		color: #fff;
		padding: 0 4px;
	}
	li {
		display: inline-block;
		margin-left: 300px;
	}
}
</style>

</head>
<body>

	<script type="text/javascript">
		var _body_start = new Date();
	</script>
	<div id="J_djResourcesVersion" style="display: none;">
		<input type="hidden" name="env" value="online" /> <input
			type="hidden" name="bigVersion" value="61128" /> <input
			type="hidden" name="rollbackId" value="9309" />
	</div>
	<!-- <script type="text/javascript" src="http://assets.dajieimg.com/up/autoheader/loadheader-2013.61186.js"></script>  -->
	<!--  -->
	<!--   <div id="dj-header-wrap" class="dj-header-wrap" style="background:#a4c4f2">

  <div id="header-fix" class="dj-header-fix" style="background:#a4c4f2;z-index: -10"> 
  
      </div> -->

	<div id="dj-header-wrap" class="dj-header-wrap">
		<img src="images/logoit.png"
			style=" width: 240px;  height: 92px;margin-top: 12px;position: fixed; margin-left: 50px">
		<div id="header-fix" class="dj-header-fix"
			style="background:#a4c4f2; color: #fff;z-index: -1">
			<div id="header" class="dj-header">
				<div class="logo-wrap">
					<a href="total.jsp" class="logo"> <img src="" alt="IT兼职网">
					</a>
				</div>
				<div class="dj-top-section">
					<div class="dj-uinfo-action">
						<div id="dajie-notice-region1" class="dj-user-activity clearfix"
							style="  ">
							<div id="total-notice-tag" class="message-tips has-tips">
								<div class="inner icon-i" title="邀请">
									<span class="tips-g-wrap"><span num="5"
										id="total-invite-number" class="tips-g">5</span></span>
								</div>
							</div>
							<div id="total-notice-tag2" class="message-tips">
								<div class="inner icon-m" title="私信">
									<span class="tips-g-wrap"><span num="0"
										id="total-message-number" class="tips-g">0</span></span>
								</div>
							</div>
							<div id="total-notice-tag3" class="message-tips">
								<div class="inner icon-n" title="通知">
									<span class="tips-g-wrap"><span num="0"
										id="total-notice-number" class="tips-g">0</span></span>
								</div>
							</div>
						</div>
						<div id="login-header-region" class="dj-user-info" style="  ">
							<div class="uinfo-inner">
								<div class="user-avatar">
									<a href="information.jsp"> <img src="images/7.jpg"
										alt="" style="width: 30px;height: 30px">
									</a>
								</div>
								<div class="user-stuff"></div>
							</div>
							<span
								style="padding-top: 20px;display: inline-block; font-weight: bold;"> <s:property value="#user.name"/>
							</span>
						</div>
						<div id="unlogin-header-region" class="login-pls"
							style="display:none;">
							<a id="J-header-login" title="登录" href="index.jsp">登录</a><a
								id="J-header-signin" title="注册" href="login.jsp">注册</a>
						</div>
					</div>
					<div class="dj-nav-g">
						<ul id="dj-nav-list" class="dj-nav-list clearfix" style="margin-top:20px">
							<li class=" dj-header-nav-item   "><a class="item"
								href="total" title="首页"> <cite
									style="color: #fff;font-weight: bold;">首页</cite>
							</a></li>
							<li class=" dj-header-nav-item   has-more  "><a class="item"
								href="cjobQuery" title="IT兼职"
								style="background:#a4c4f2; color: #fff"> <cite
									style="color: #fff;font-weight: bold;">兼职搜索<b
										class="arrow-ud"> </b></cite>
							</a>
							<li class=" dj-header-nav-item   "><a class="item"
								href="companyQuery" title="公司"> <cite
									style="color: #fff;font-weight: bold;">公司搜索</cite>
							</a></li>
							<li class=" dj-header-nav-item   has-more  "><a class="item"
								href="javascript:void(0);" title="更多"> <cite
									style="color: #fff;font-weight: bold;">更多<b
										class="arrow-ud"> </b></cite>
							</a></li>
						</ul>
					</div>
					<div class="dj-nav-box" style="margin-top: 27px;">
						<form action="http://campus.dajie.com/progress/index" method="get">
							<div class="search-type">
								<span class="ico ico-school"> <span class="arrow"></span>
								</span>
								<div class="sub-list">
									<ul class="dj-header-nav-sub-item">
										<li class=" first  "><a href="" data-href="cjobQuery"
											data-type="ico ico-school" data-name="keyword"
											data-holder="搜索兼职" data-match=""><cite
												class="ico ico-school"></cite>校招</a></li>
										<li class="   "><a href="" data-href="cjobQuery"
											data-type="ico ico-job" data-name="keyword"
											data-holder="搜索职位" data-match="job"><cite
												class="ico ico-job"></cite>职位</a></li>
										<li class="   "><a href=""
											data-href="http://www.dajie.com/profile/search/index"
											data-type="ico ico-person" data-name="redirectKeyWord"
											data-holder="搜索人脉" data-match=""><cite
												class="ico ico-person"></cite>人脉</a></li>
										<li class="  last "><a href="" data-href="companyQuery"
											data-type="ico ico-corp" data-name="keyword"
											data-holder="搜索公司" data-match="corp"><cite
												class="ico ico-corp"></cite>公司</a></li>
									</ul>
								</div>
							</div>
							<input class="search-input" name="keyword" autocomplete="off"
								placeholder="搜索公司" data-match="" type="text">
							<button class="search-submit" type="submit">搜索</button>
							<input name="f" value="nav" type="hidden">
							<div style="display: none;" class="suggest">
								<ul></ul>
							</div>
						</form>
						<span class="onebox-tip" id="dj-header-search-tip"><span
							class="cls"></span></span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var is_login = $.cookie('dj_auth') != null
				|| $.cookie('dj_auth_v3') != null; //必须是全局变量，别的项目有用
		window['is_login'] = is_login;
		_staticHeader = {
			isMini : false,
			isC : false,
			isRecruit : false,
			currentChannel : 'HOME'
		};
		G_dj_head_getHeader();
	</script>
	<div class="dj-content-wrap dj-index" id="dj-content-wrap"
		style="background: #999；z-index:20">
		<div class="dj-content-inner">
			<div class="dj-sub-title">

				<h2 style="display:none;"></h2>
			</div>
			<div class="dj-content-shadow">
				<div id="content" class="clearfix">
					<div id="dj-after-index" class="clearfix">
						<div class="maincolumn floatleft">
							<div id="home">
								<div class="middle">
									<div id="root"></div>
									<div id="stateBox" class="padding">
										<div class="hd"></div>
										<div class="bd">
											<h2>
												<span id="input_info" class="floatright f12 g9">请在下方发布动态<em>按要求</em></span>
												<div class="info">
													<i class="f">我要</i> <select class="J_beautylize"
														id="J_send_message" name="" style="display: none;">
														<option value="share">分享状态</option>
														<option value="ask" class="s-font-two">提问</option>
													</select>
												</div>


											</h2>

											<div class="login-01">
												<form action="messageCompanyjob" method="post">
													<ul>
														<li class="first"><a href="#" class=" icon user">姓名</a>
															<input type="text" class="text" value="Name/姓名"
															name="meno" onFocus="this.value = '';"
															onBlur="if (this.value == '') {this.value = 'Name';}">
															<div class="clear"></div></li>
														<li class="first"><a href="#" class=" icon email">邮箱</a><input
															type="text" class="text" value="Email/邮箱" name="memail"
															onFocus="this.value = '';"
															onBlur="if (this.value == '') {this.value = 'Email';}">
															<div class="clear"></div></li>
														<li class="first"><a href="#" class=" icon phone"></a><input
															type="text" class="text" value="Phone/电话" name="mphone"
															onFocus="this.value = '';"
															onBlur="if (this.value == '') {this.value = 'Phone';}">
															<div class="clear"></div></li>
														<li class="second"
															style="margin-left: 270px;margin-top: -168px;"><a
															href="#" class=" icon msg">言论</a> <textarea
																value="Message/言论" name="mecontent"
																onFocus="this.value = '';"
																onBlur="if (this.value == '') {this.value = 'Comments';}">Comments/言论</textarea>
															<div class="clear"></div></li>

													</ul>


													<button class="submit" id="micro_blog_btn"
														title="Ctrl+Enter快速提交" style="margin: 0 0 0 200px"></button>
													<div class="clear"></div>
												</form>
											</div>
											<!--start-copyright-->

											<!-- <form action="/microblog/create" method="post" id="micro_blog_form" style="display: block;">
    <input type="hidden" name="CSRFToken" value="ZX89g6T36SMQBiUa9Vi6droSsP4LtSU4Ib_Net8*"/>
    <div class="textareaBox">
        <textarea class="textarea " name="displayContent" id="micro_blog_content"></textarea>
        <textarea name="content" id="micro_blog_content_hidden" style="display: none;"></textarea>
        <div id="success-tip" class="succeedBox" style="display:none;">发布成功！</div>
    </div>
    <input type="hidden" name="image" value="" id="micro_blog_image">
</form>
 -->

											<div class="contralBox clearfix">
												<span class="attachBar"> <span id="input-face"
													class="face-switch"
													onclick="show_face_absolute($('.contralBox').offset().top+45,$('.contralBox .face-switch').offset().left-15, $('#micro_blog_content'));">
														<a href="####" title="表情">表情</a>
												</span> <span id="input-img" class="img-switch"> <a
														href="javascript:void(0)">图片</a>
												</span>
												</span>

												<p class="currentStatus floatleft break"></p>
											</div>
											<div
												style="width: 300px; display: none; left: 284.5px; top: 375px;"
												id="attachView" class="prompt-box white-top">
												<div class="shadow">
													<iframe id="upload-frame" name="upload-frame"
														style="display:none;"></iframe>
													<form action="http://fs1u.dajie.com/file/upload.php"
														method="post" enctype="multipart/form-data"
														id="image_form" target="upload-frame">
														<input type="hidden" name="type" value="micro_blog">
														<input type="hidden" name="CSRFToken"
															value="ZX89g6T36SMQBiUa9Vi6droSsP4LtSU4Ib_Net8*" />
														<div class="prompt-main">
															<span class="pointer"></span>

															<div class="uploadBox">
																<p class="buttonBox">
																	<a href="javascript:void(0)" id="upload_img_btn"
																		class="button big-fresh"
																		style="overflow: hidden; position: relative;"> <span>选择本地图片</span>
																		<input type="file" id="upload_img" name="file"
																		style="" hidefoucs="true">
																	</a>

																</p>

																<p class="aligncenter g9">
																	仅支持JPG、JPEG、GIF、PNG格式<br>且文件不超过5M
																</p>
															</div>
															<div class="uploadingBox" style="display:none;">
																<div class="uploading aligncenter">
																	<img
																		src="http://assets.dajieimg.com/images/icons/loading_12.gif">图片上传中......
																	<a href="javascript:void(0)" class="green">取消</a>
																</div>
																<div class="viewArea" style="display:none;">

																	<p class="attachName">
																		图片已上传成功！<a href="javascript:void(0)"
																			class="green cancel">删除</a>
																	</p>

																	<p class="photoBox"></p>
																</div>
															</div>
														</div>
													</form>
												</div>
											</div>
											<div id="circle-success" style="display:none;">
												<div class="circle-success">
													<span class="ok">发布成功！问题要等会才能看到。</span><br /> <span
														class="g9">本提示2秒后自动关闭</span>
												</div>
											</div>

										</div>
										<div class="ft"></div>
									</div>
									<div id="guide_dialog"></div>
									<div class="feed-header">
										<em class="icons"></em>

										<h3>新鲜事</h3>

										<div class="feed-tabs-box">
											<p data-filter="" class="result">全部</p>
											<em class="pointer"></em>
											<ul class="feed-tabs">
												<li style="display:none;"><a data-filter=""
													href="/feed/list">全部</a></li>
												<li><a data-filter="watch"
													href="/feed/list?filter=watch">联系人</a></li>
												<li><a data-filter="group" href="/groupfeed/list">圈子</a>
												</li>
												<li><a data-filter="corpIndex"
													href="/corpfeed/list?filter=corpIndex">公司</a></li>
												<li><a data-filter="me" href="/feed/list?filter=me">我的新鲜事</a>
												</li>
											</ul>
											<p class="feed-setting">
												<a href="/settings/feed">新鲜事设置</a>
											</p>
										</div>
									</div>
									<input type="hidden" id="CSRFToken"
										value="ZX89g6T36SMQBiUa9Vi6droSsP4LtSU4Ib_Net8*" />

									<div id="feed">
										<div style="position: absolute; width: 260px; display: none;"
											class="facebox" id="message_face">
											<div class="shadow">
												<div class="faceBoxLayout">
													<div class="pointer"></div>
													<ul class="clearfix">
														<li><img
															src="http://5.assets.dajieimg.com/images/face/1.gif"
															id="f-1" title="哦" class="face_icon"></li>
														<li><img
															src="http://6.assets.dajieimg.com/images/face/2.gif"
															id="f-2" title="微笑" class="face_icon"></li>
														<li><img
															src="http://7.assets.dajieimg.com/images/face/3.gif"
															id="f-3" title="憨笑" class="face_icon"></li>
														<li><img
															src="http://8.assets.dajieimg.com/images/face/4.gif"
															id="f-4" title="嘻嘻" class="face_icon"></li>
														<li><img
															src="http://9.assets.dajieimg.com/images/face/5.gif"
															id="f-5" title="思考" class="face_icon"></li>
														<li><img
															src="http://0.assets.dajieimg.com/images/face/6.gif"
															id="f-6" title="愤怒" class="face_icon"></li>
														<li><img
															src="http://1.assets.dajieimg.com/images/face/7.gif"
															id="f-7" title="抓狂" class="face_icon"></li>
														<li><img
															src="http://2.assets.dajieimg.com/images/face/8.gif"
															id="f-8" title="委屈" class="face_icon"></li>
														<li><img
															src="http://3.assets.dajieimg.com/images/face/9.gif"
															id="f-9" title="流泪" class="face_icon"></li>
														<li><img
															src="http://3.assets.dajieimg.com/images/face/10.gif"
															id="f-10" title="使坏" class="face_icon"></li>
														<li><img
															src="http://4.assets.dajieimg.com/images/face/11.gif"
															id="f-11" title="晕" class="face_icon"></li>
														<li><img
															src="http://5.assets.dajieimg.com/images/face/12.gif"
															id="f-12" title="汗" class="face_icon"></li>
														<li><img
															src="http://6.assets.dajieimg.com/images/face/13.gif"
															id="f-13" title="困了" class="face_icon"></li>
														<li><img
															src="http://7.assets.dajieimg.com/images/face/14.gif"
															id="f-14" title="害羞" class="face_icon"></li>
														<li><img
															src="http://8.assets.dajieimg.com/images/face/15.gif"
															id="f-15" title="失望" class="face_icon"></li>
														<li><img
															src="http://9.assets.dajieimg.com/images/face/16.gif"
															id="f-16" title="赞" class="face_icon"></li>
														<li><img
															src="http://0.assets.dajieimg.com/images/face/17.gif"
															id="f-17" title="暧昧" class="face_icon"></li>
														<li><img
															src="http://1.assets.dajieimg.com/images/face/18.gif"
															id="f-18" title="得意" class="face_icon"></li>
														<li><img
															src="http://2.assets.dajieimg.com/images/face/19.gif"
															id="f-19" title="骷髅" class="face_icon"></li>
														<li><img
															src="http://4.assets.dajieimg.com/images/face/20.gif"
															id="f-20" title="囧" class="face_icon"></li>
														<li><img
															src="http://5.assets.dajieimg.com/images/face/21.gif"
															id="f-21" title="睡" class="face_icon"></li>
														<li><img
															src="http://6.assets.dajieimg.com/images/face/22.gif"
															id="f-22" title="调皮" class="face_icon"></li>
														<li><img
															src="http://7.assets.dajieimg.com/images/face/23.gif"
															id="f-23" title="亲亲" class="face_icon"></li>
														<li><img
															src="http://8.assets.dajieimg.com/images/face/24.gif"
															id="f-24" title="疑问" class="face_icon"></li>
														<li><img
															src="http://9.assets.dajieimg.com/images/face/25.gif"
															id="f-25" title="闭嘴" class="face_icon"></li>
														<li><img
															src="http://0.assets.dajieimg.com/images/face/26.gif"
															id="f-26" title="难过" class="face_icon"></li>
														<li><img
															src="http://1.assets.dajieimg.com/images/face/27.gif"
															id="f-27" title="无语" class="face_icon"></li>
														<li><img
															src="http://2.assets.dajieimg.com/images/face/28.gif"
															id="f-28" title="奋斗" class="face_icon"></li>
														<li><img
															src="http://3.assets.dajieimg.com/images/face/29.gif"
															id="f-29" title="鄙视" class="face_icon"></li>
														<li><img
															src="http://5.assets.dajieimg.com/images/face/30.gif"
															id="f-30" title="猪头" class="face_icon"></li>
													</ul>
												</div>
											</div>



										</div>
										<!-- 11111111111111111111111111111111111111111111111111111111111111111 -->
										<div class="dj-ads">
											<form action="message_m">
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
																<img class="head" src="${message.mimg}" alt=""
																	style="height: 50px;width: 50px;margin: 5px 5px -10px 5px" />
																<em
																	style="font-size: 18px; font-weight:bold;color: #a4c4f2;margin:-10px 0 0 20px">Name:</em>
																${message.meno} <em
																	style="font-size: 18px; font-weight:bold;margin:-10px 5px 0 10px">Email:</em>
																<a href="mailto:EMAIL">${message.memail}</a>
																<p
																	style="width: 400px;line-height: 20px;margin: 20px 10px 10px 80px;font-style: ;16px;">
																	${message.mecontent}</p>
																<span style="float:right;display:inline-block">${message.medate}</span>
															</div>
															<td></td>
															<td></td>
														</tr>

													</c:forEach>
												</table>


											</form>
	<%-- 										<div>
												<s:url id="url_pre" value="message_m">
													<s:param name="currentPage" value="currentPage-1"></s:param>
												</s:url>
												<s:url id="url_first" value="message_m">
													<s:param name="currentPage" value="1"></s:param>
												</s:url>
												<s:url id="url_last" value="message_m">
													<s:param name="currentPage" value="totalPage"></s:param>
												</s:url>
												<s:url id="url_next" value="message_m">
													<s:param name="currentPage" value="currentPage+1"></s:param>
												</s:url>
												<div class="clearfix">
													<ul class="pagination li">

														<s:if test="%{(totalPage>1)}">
															<li><s:a href="%{url_first}">首页</s:a></li>
															<s:if test="currentPage!=1">
																<li><s:a href="%{url_pre}">上一页</s:a></li>
															</s:if>
															<s:else></s:else>
															<s:if test="currentPage!=totalPage">
																<li><s:a href="%{url_next}">下一页</s:a></li>
															</s:if>
															<s:else></s:else>
															<li><s:a href="%{url_last}">尾页</s:a></li>
														</s:if>

													</ul>
												</div>
											</div>
											<div class="page page1">
												<p>当前是第${currentPage}页,共有${totalPage}页</p>
											</div>
--%>
										</div> 

										<div style="position:fixed;top:15%;right:2%;">
											<img src="images/logoer.jpg" style="width:150px;height150px;">
										</div>


										<div class="feedTips topad" id="new_feed_tip">
											<a href="javascript:void(0);">有新动态，点击查看</a>
										</div>

										<div id="show_feed_loading"
											class="show_feed_loading load-init">
											<img
												src="http://assets.dajieimg.com/images/chrome/loading_black_24.gif" />
										</div>
										<div class="feed-more">
											<a href="###">查看更多新鲜事</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="rightcolumn floatleft">
							<div class="dj-ai-search">
								<form id="dj-ai-search-form" action="cjobQuery" method="post"
									target="_blank">
									<span class="dj-ai-search-border"> <input name="from"
										value="home" type="hidden" /> <input name="jobsearch"
										value="6" type="hidden" /> <input id="dj-ai-search-box"
										class="dj-ai-search-content g9" type="text" name="keyword"
										style="border:2px #a4c4f2 solid; height:15px " /> <input
										class="dj-ai-search-submit" type="submit"
										style="position:absolute;margin-top:6px; height:28px" />
									</span>
								</form>
								<script type="text/javascript">
									function escape(str) {
										var p = document.createElement('p'), text = document
												.createTextNode(str);

										p.appendChild(text);
										return p.innerHTML;
									}

									$(function() {
										$('#dj-ai-search-box').keydown(
												function(e) {
													if (e.keycode == 13) {
														return false;
													}
												});
										$('.dj-ai-search-submit')
												.click(
														function() {
															$(
																	"#dj-ai-search-form")
																	.attr(
																			"action",
																			"http://so.dajie.com/job/search");
															$(
																	"#dj-ai-search-box")
																	.attr(
																			"name",
																			"keyword");
														});
										$('.dj-ai-search-content').blurHint(
												'请输入职位或人名');
										$('.dj-ai-search-content')
												.newbox(
														{
															freeValue : false,
															keepBlurContent : true,
															width : 248,
															customQuery : function(
																	q) {
																return [
																		{
																			id : '1',
																			text : '<span style="font-family:simsun">找“<span style="color:#f60;">'
																					+ escape(q)
																					+ '</span>”相关的职位</span>'
																		},
																		{
																			id : '2',
																			text : '<span style="font-family:simsun">找“<span style="color:#f60;">'
																					+ escape(q)
																					+ '</span>”相关的用户</span>'
																		} ];
															},
															callback : function(
																	a) {
																if ("1" == a) {
																	$(
																			"#dj-ai-search-form")
																			.attr(
																					"action",
																					"http://so.dajie.com/job/search");
																	$(
																			"#dj-ai-search-box")
																			.attr(
																					"name",
																					"keyword");
																} else {
																	$(
																			"#dj-ai-search-form")
																			.attr(
																					"action",
																					"http://www.dajie.com/profile/search/index");
																	$(
																			"#dj-ai-search-box")
																			.attr(
																					"name",
																					"redirectKeyWord");
																}
																$(
																		"#dj-ai-search-form")
																		.submit();
															}
														});
									});
								</script>
							</div>
							<div style="margin:0px 20px 20px 18px;">
								<div class="dj-ads" default="show" data-slot="">
									<img src="images/logo3.jpg">
								</div>
							</div>
							<div class="pannel" id="J_freshGuide" style="display: none;"></div>
							<div class="pannel userListSimple" id="hr-info"
								style="display: none;"></div>
							<div class="pannel" id="mobile-box">
								<div class="sideMiddle clearfix mobile-project">
									<h3 class="large b">IT兼职网</h3>
									<ul>
										<li>
											<div class="logo-pic">
												<a target="_blank"
													href="http://www.dajie.com/app/phone/download?id=3"> <img
													width="52px;" height="52px;" src="images/logo3.jpg">
												</a>
											</div>
											<div class="info">
												<p class="right-ad-name">IT兼职网</p>
												<p class="group-info right-ad-info">
													<a target="_blank"
														href="http://www.dajie.com/app/phone/download?id=3">查看详情</a>
													<span>IT兼职网官方客户端</span>
												</p>
											</div>
										</li>
										<li>
											<div class="logo-pic">
												<a target="_blank"
													href="http://www.dajie.com/html/lbsphone/"> <img
													width="52px;" height="52px;" src="images/logoer.jpg">
												</a>
											</div>
											<div class="info">
												<p class="right-ad-name">IT兼职网附近版</p>
												<p class="group-info right-ad-info">
													<a target="_blank"
														href="http://www.dajie.com/html/lbsphone/"> 查看详情 </a> <span>
														IT兼职网附近版客户端 </span>
												</p>
											</div>
										</li>
										<li>
											<div class="logo-pic">
												<a target="_blank"
													href="http://www.dajie.com/html/businessphone/"> <img
													width="52px;" height="52px;" src="images/logo5.png">
												</a>
											</div>
											<div class="info">
												<p class="right-ad-name">IT兼职网企业版</p>
												<p class="group-info right-ad-info">
													<a target="_blank"
														href="http://www.dajie.com/html/businessphone/"> 查看详情
													</a> <span> 随时随地招人才 </span>
												</p>
											</div>
										</li>
									</ul>
								</div>
							</div>
							
				
							<div class="userListSimple">
								<div class="clearfix" id="mayknowPanel"
									style="padding-right: 20px;">
									<div class="maybe-wrap card-change-count no-person-known"
										style="display: none;" id="maybe-wrap">
										<input id="maybe-know-from" type="hidden" value="home" />
										<dl id="maybe-know" class="maybe-know">
											<dt>
												<span style="float:left">可能认识的人</span><a
													href="javascript:void(0)" id="swapMayKnow"
													style="float: right;"><em>换一换</em></a>
											</dt>



											<script type="text/javascript">
												$(function() {
													$('.change-card-button-v24')
															.live(
																	'click',
																	function() {
																		var url = location.href;
																		if (url
																				.contains('/profile/')) {
																			if (url
																					.contains('/mine')) {
																				typeof click_b == 'function'
																						&& click_b('profilemine_mayknow');
																			} else {
																				typeof click_b == 'function'
																						&& click_b('profileother_mayknow');
																			}
																		} else {
																			if (url
																					.contains('/notice/v2/invites')) {
																				typeof click_b == 'function'
																						&& click_b('relationship_mayknow');
																			} else {
																				typeof click_b == 'function'
																						&& click_b('homeright_mayknow');
																			}
																		}
																	});
												})
											</script>
										</dl>
										<div class="maybe-more" id="maybe-more-button">
											<a target="_blank" href="/card/maybeknow?from=home"
												class="maybe-more-btn">更多</a>
										</div>
									</div>
									<script type="text/javascript">
										$('#maybe-know .clickLog')
												.live(
														"click",
														function() {
															var $dd = $(this)
																	.parents(
																			'dd');
															var index = $dd
																	.index()
																	- $(
																			'#maybe-know dd:visible:first')
																			.index();
															var clickUid = $dd
																	.find(
																			'.maybe-close')
																	.attr('rel');
															var mayknowUidArr = [];
															$(
																	'#maybe-wrap dd:visible')
																	.each(
																			function() {
																				mayknowUidArr
																						.push($(
																								this)
																								.find(
																										'.maybe-close')
																								.attr(
																										'rel'));
																			});
															typeof click_b == 'function'
																	&& click_b("mayknow_35308733_"
																			+ mayknowUidArr
																					.join(',')
																			+ "_"
																			+ index
																			+ "_"
																			+ clickUid);
														});
										var mayknowTotalPage = 8;
										var mayknowPageSize = 4;
										var mayknowCurrentPage = Math
												.round(Math.random()
														* (mayknowTotalPage - 1)) + 1;
										var mayknowNeedSwap = true;
										var mayknowFrom = "home";
										var loginUID = "35308733";
									</script>
								</div>
							</div>
							<div style="margin:0px 18px;">
								<div class="dj-ads" default="hide" data-slot="1000000001"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
		<address>
			<span class="floatright"> <a
				href="http://www.dajie.com/corp/1000230/index/intro">关于</a>&nbsp;| <a
				href="http://www.dajie.com/html/phone/">手机版</a>&nbsp;| <a
				href="http://www.dajie.com/zhiwei">职位</a>&nbsp;| <a
				href="http://www.dajie.com/corp/gongsi">公司</a>&nbsp;| <a
				href="http://www.dajie.com/pub/mulu">人脉</a>&nbsp;| <a
				href="http://s.dajie.com/">行业</a>&nbsp;| <a
				href="http://www.dajie.com/weiagent/agentApply?f=footer">渠道招商</a>&nbsp;|
				<a href="http://www.dajie.com/account/feedback">意见反馈</a>&nbsp;| <a
				href="http://www.dajie.com/about/privacy.html">服务与声明</a>
			</span> ©2008-2016&nbsp;IT兼职网&nbsp;| <a href="http://www.miitbeian.gov.cn"
				target="_blank" style="color: #999999;">京ICP备09028813号-1</a>&nbsp;|&nbsp;京公网安备11010802008965
		</address>
	</div>
	<script type="text/javascript">
		var _staticFooter = {
			'mobileBrowser' : false
		}
	</script>

	<script type="text/javascript">
		var root_canShowRegFloat = true;
		$(function() {
			var is_login = $.cookie('dj_auth') != null
					|| $.cookie('dj_auth_v3') != null;
		});
	</script>

	<script type="text/javascript">
		$('#micro_blog_form textarea,#ask_form textarea,#ask_form input')
				.keydown(function(event) {
					if (event.ctrlKey && event.keyCode == 13) {
						$('#micro_blog_btn').click();
					}
				});
		//上传头像
		(function() {
			$('.img-switch').click(function() {
				if ($('#attachView').is(':visible')) {
					return;
				}
				show_upload_img();
			});
			removeUploadImgArea = function() {
				var offset = $('.img-switch').offset();
				if (!offset)
					return;
				var left = offset.left - 12;
				var top = offset.top + 38;
				$('#attachView').css({
					left : left + 'px',
					top : top
				});
			};
			$(window).resize(function() {
				removeUploadImgArea()
			});
			$('#upload_img_btn').mousemove(
					function(e) {
						var offset = $(this).offset();
						var st = window.pageYOffset
								|| Math.max(document.documentElement.scrollTop,
										document.body.scrollTop);
						var sl = window.pageXOffset
								|| Math.max(
										document.documentElement.scrollLeft,
										document.body.scrollLeft);
					});
			$('#upload_img').bind($.browser.msie ? 'propertychange' : 'change',
					function() {
						upload_img(this.value);
					});
			function init_upload_form() {
				$('#upload_img').unbind(
						$.browser.msie ? 'propertychange' : 'change');
				$('#image_form')[0].reset();
				$('#upload_img').bind(
						$.browser.msie ? 'propertychange' : 'change',
						function() {
							upload_img(this.value);
						});
			}

			function upload_img(file) {
				if (file != '') {
					var ext = '';
					if (file.length > 3) {
						ext = file.substr(file.length - 4, file.length);
					}
					if (ext == ''
							|| (ext != '.JPG' && ext != '.jpg' && ext != 'JPEG'
									&& ext != 'jpeg' && ext != '.gif'
									&& ext != '.GIF' && ext != '.PNG' && ext != '.png')) {
						$('#alert-text').html('仅支持JPG、JPEG、GIF、PNG格式');
						$.dialog('#alert', {
							mask : false,
							title : '无法上传图片',
							width : 280,
							mercy : false
						});
						init_upload_form();
					} else {
						$('#image_form').submit();
						$('.uploadBox').hide();
						$('.uploadingBox').show();
						$('.uploadingBox .uploading').show();
						$('.uploadingBox .viewArea').hide();
						$('#micro_blog_btn').unbind('click');
					}
				}
			}

			$('#attachView .cancel,#attachView .uploading').click(function() {
				$('#attachView').hide();
				$('#micro_blog_image').val('');
				$('#ask_image').val('');
				if ($('#micro_blog_content').val() == '分享图片') {
					$('#micro_blog_content').val('');
					if ($('#micro_blog_form:visible').length) {
						$('#micro_blog_content').focus();
					}
				}
				bind_micro_blog_btn();
				init_upload_form();
			});
			function show_upload_img() {
				var offset = $('.img-switch').offset();
				var left = offset.left - 12;
				var top = offset.top + 38;
				$('#attachView').css({
					left : left + 'px',
					top : top
				}).show();
				$('.uploadBox').show();
				$('.uploadingBox').hide();
			}

			UPLOAD_CALLBACK = function(r) {
				if ($('#attachView').css('display') == 'none') {
					return;
				}
				if (r.substr(0, 1) == '1') {
					$('#alert-text').html(r.substr(2));
					$.dialog('#alert', {
						mask : false,
						title : '无法上传图片',
						width : 280,
						mercy : false
					});
					$('#attachView').hide();
				} else {
					if ($('#micro_blog_content').val() == '') {
						$('#micro_blog_content').val('分享图片');
						$('#micro_blog_content').focus();
					}
					$('.uploadingBox .uploading').hide();
					$('.uploadingBox .viewArea').show();
					$('.uploadingBox .photoBox').html('<img src="' + r + '"/>');
					$('#image_form .remove').remove();
					var imgurl = r.split('dajieimg.com/').pop().replace('m.',
							'.');
					$('#micro_blog_image').val(imgurl);
					$('#ask_image').val(imgurl);
				}
				bind_micro_blog_btn();
				init_upload_form();
			}
		})();
		// 表单验证
		(function() {
			var $input = $('.J_checkAsk'), $E1 = $('#J_QuestionError'), $tips = $('#J_PutTipsVal'), $checkBtn = $('#J_PutSubmit'), q1 = [
					'问题长度为5-100个字。', '请用问号做为问题的结束。', '问题中含有非法内容。' ], q2 = [
					'请将说明的长度控制在1000字以内。', '说明中含有非法内容。' ], q3 = [ '需为中英文、数字',
					'至少添加一个标签' ];
			$input.formValidate({
				'button' : 'formValidateSubmitCircle'
			}).focus(function() {
				$(this).nextAll('.J_Error').hide();
				removeUploadImgArea();
				//_remove_J_DelUpImg();
			});
			$checkBtn.bind('check', function() {
				$checkBtn.click();
				$checkBtn.attr('canbesubmit', 'false');
				$input.each(function() {
					var bol = $.formValidate.check('formValidateSubmitCircle',
							this);
					if (!bol) {
						$(this).nextAll('.J_Error').show();
					}
				});
				//_remove_J_DelUpImg();
				var r = $.formValidate.check('formValidateSubmitCircle');
				if (!$tips.val()) {
					$tips.nextAll('.J_Error').show().text(q3[1]);
					removeUploadImgArea();
					return;
				}
				removeUploadImgArea();
				if (!r)
					return;
				// 这里写提交代码
				$checkBtn.attr('canbesubmit', 'true');
				//alert('哦了');
			});

			G_ValidateQuestion = function() {
				var val = $.formValidate.textReplace($(this).val());
				var reg = /^.{5,100}$/;
				if (!reg.test(val)) {
					$E1.text(q1[0]);
					return false;
				}
				return true;
			}
		})();
		// 操作标签
		(function() {
			var $tips_p = $('#J_PutTips'), $numWrap = $('#j_PutNum'), $null = $('#j_PutNull'), $num = $numWrap
					.find('cite'), $input = $('#J_PutAddTips'), $btn = $('#J_PutAddTipsBtn'), $val = $('#J_PutTipsVal'), btnClass = 'J_TipsValidateSubmit', tot = 3, q3 = [
					'需为中英文、数字', '至少添加一个标签' ], str = '<a href="javascript:void(0);" title="$name$">$name$<em></em></a>';
			//		$null.hide();
			$val.val('');
			$input.formValidate({
				button : btnClass
			}).focus(function() {
				$(this).nextAll('.J_Error').hide();
			}).keypress(function(e) {
				if (e.keyCode != 13)
					return;
				$btn.click();
			});
			//添加标签
			$btn
					.click(function() {
						var bol = $.formValidate.check(btnClass, $input[0]), val = $input
								.val();
						if (!bol) {
							$(this).nextAll('.J_Error').show().text(q3[0]);
							return;
						}
						if (addTipsVal(val)) {
							$numWrap.before(str.replace(/\$name\$/g, val));
							$input.val('').focus();
						}
					});

			//删除标签
			$tips_p.click(function(e) {
				if (e.target.nodeName != 'EM')
					return;
				var $remove = $(e.target), $a = $remove.parent(), name = $a
						.attr('title'), allTips = $val.val(), reg = new RegExp(
						'(^|\,)' + name + '($|\,)'), len, newVal;
				allTips = allTips.replace(reg, ',,');
				newVal = allTips.replace(/(\,)+/g, ',').replace(/(^\,+)/g, '')
						.replace(/(\,+$)/g, '');
				$a.remove();
				len = newVal == '' ? tot : tot - newVal.split(',').length;
				$num.text(len);
				if (len == 3) {
					//$null.show();
					$tips_p.hide();
					$numWrap.hide();
				} else {
					//$null.hide();
					$tips_p.show();
					$numWrap.show();
				}
				$val.val(newVal);
			});

			function addTipsVal(val) {
				var allTips = $val.val().replace(/(\,)+/g, ',').replace(
						/(^\,+)/g, '').replace(/(\,+$)/g, ''), newVal, len, reg = new RegExp(
						'(^|\,)' + val + '($|\,)');
				if (reg.test(allTips)) {
					return false;
				}
				newVal = allTips + (allTips ? ',' : '') + val;
				len = tot - newVal.split(',').length;
				if (len < 0) {
					return false;
				}
				$num.text(len);
				if (len == 3) {
					//$null.show();
					$tips_p.hide();
					$numWrap.hide();
				} else {
					//$null.hide();
					$tips_p.show();
					$numWrap.show();
				}
				$val.val(newVal);
				return true;
			}
		})();
		// 分享状态
		function text_length_check(text) {
			text = text.replace(/(^\s*)|(\s*$)/g, "").replace(/(^　*)|(　*$)/g,
					"");
			var len = text
					.replace(/(^\s*)|(\s*$)/g, "")
					.replace(
							/(https|http|ftp|rtsp|mms):\/\/[0-9a-zA-Z_\%\&\?\.\+\$/\=\\-]+/g,
							"").length;
			var urls = text
					.match(/(https|http|ftp|rtsp|mms):\/\/[0-9a-zA-Z_\%\&\?\.\+\$/\=\\-]+/g)
					|| [];
			for (var i = 0; i < urls.length; i++) {
				if (urls[i].length > 141) {
					len = len + urls[i].length - 141 + 22;
				} else {
					len = len + 22;
				}
			}
			return len;
		}
		(function() {
			$(document)
					.click(
							function(e) {
								if ($(e.target).closest('#attachView').length == 0
										&& $(e.target).closest('.img-switch').length == 0) {
									if ($('.uploadingBox').css('display') != 'none') {
										return;
									}
									$('#attachView').hide();
									bind_micro_blog_btn();
								}
							});
			var box_timer;
			$('#micro_blog_content').bind('keyup focus', function() {
				//box_timer = setInterval(length_check, 1000);
				length_check();
			});
			//    $('#micro_blog_content').focusout(function() {
			//        clearInterval(box_timer);
			//    });

			function length_check() {
				var length = text_length_check($('#micro_blog_content').val());
				if ($('#micro_blog_content').hasClass('g9')) {
					length = 0;
				}
				if (length == 0) {
					if (!$('#micro_blog_btn').hasClass('disable')) {
						$('#micro_blog_btn').addClass('disable')
					}
					$('#input_info').html('你还可以输入<em>140</em>字');
				} else if (length <= 140) {
					$('#input_info').removeClass('red').addClass('g9');
					if ($('#micro_blog_btn').hasClass('disable')) {
						$('#micro_blog_btn').removeClass('disable');
					}
					$('#input_info').html(
							'你还可以输入<em>' + (140 - length) + '</em>字');
				} else {
					$('#input_info').removeClass('g9').addClass('red');
					if (!$('#micro_blog_btn').hasClass('disable')) {
						$('#micro_blog_btn').addClass('disable');
					}
					$('#input_info')
							.html('已超出<em>' + (length - 140) + '</em>字');
				}
			}

			ask_length_check = function() {
				var $btn = $('#micro_blog_btn'), $checkBtn = $('#J_PutSubmit');
				$btn.removeClass('disable');
			};
			bind_micro_blog_btn = function() {
				// 多发送方式
				var $sel = $('#J_send_message'), $f1 = $('#micro_blog_form'), $f1_textLen = $('#input_info'), $f1_face = $('#input-face'), $f1_img = $('#input-img'), $f2 = $('#ask_form'), $btn = $('#micro_blog_btn');
				$btn.removeClass('sending');
				if ($sel.val() == 'share') {
					length_check();
					$('#micro_blog_content').attr('readOnly', false);
					$btn.unbind('click').bind('click', function() {
						submit_micro_blog();
						return false;
					});
					$f1.show();
					$f1_textLen.show();
					$f1_face.show();
					$f2.hide();
					$f1_img.removeClass('input-img-left');
				} else { // ask
					ask_length_check();
					$btn.unbind('click').bind('click', function() {
						submit_ask();
						return false;
					});
					$f1.hide();
					$f1_textLen.hide();
					$f1_face.hide();
					$f2.show();
					$f1_img.addClass('input-img-left');
				}
			};
			bind_micro_blog_btn();
			function submit_micro_blog() {
				if ($('#micro_blog_btn').hasClass('disable')) {
					return;
				}
				var length = text_length_check($('#micro_blog_content').val());
				if (length == 0 || length > 140) {
					return;
				}
				$('#micro_blog_content').attr('readOnly', true);
				$('#micro_blog_btn').addClass('sending').unbind('click');
				if ($('#micro_blog_content').getAtContent) {
					$('#micro_blog_content_hidden').val(
							$('#micro_blog_content').getAtContent());
					$('#micro_blog_content_hidden').val(
							$('#micro_blog_content_hidden').val().replace(
									/(^\s*)|(\s*$)/g, "").replace(
									/(^　*)|(　*$)/g, ""));
				}
				$('#micro_blog_content').val(
						$('#micro_blog_content').val().replace(
								/(^\s*)|(\s*$)/g, "").replace(/(^　*)|(　*$)/g,
								""));
				$('#micro_blog_form').ajaxSubmit({
					url : '/microblog/create',
					success : function(r) {
						if (r.substr(0, 1) == '1') {
							alert(r.substr(2));
							setTimeout(function() {
								bind_micro_blog_btn();
							}, 1000);
						} else {
							$('#micro_blog_form')[0].reset();
							$('#micro_blog_image').val('');
							$('#ask_image').val('');
							$('#attachView').hide();
							$('#input_info').html('你可以输入<em>140</em>字');
							$(feedAction).triggerHandler('loadNewFeed');
							$('#success-tip').show();
							setTimeout(function() {
								$('#success-tip').hide();
							}, 1000);
							bind_micro_blog_btn();
						}
					}
				});
			}

			function submit_ask() {
				var $btn = $('#micro_blog_btn'), $checkBtn = $('#J_PutSubmit');
				if ($btn.hasClass('disable')) {
					return;
				}
				$checkBtn.trigger('check');
				if ($checkBtn.attr('canbesubmit') == 'false')
					return;
				$('#micro_blog_btn').addClass('sending').unbind('click');
				if ($('#J_QuestionInfo').val() == '补充问题说明，让问题更准确（选填）') {
					$('#J_QuestionInfo').val('');
				}
				if ($('#J_QuestionInfo').getAtContent) {
					$('#J_QuestionInfo_hidden').val(
							$('#J_QuestionInfo').getAtContent());
				}
				$('#ask_form').ajaxSubmit({
					url : '/ask/question/create',
					success : function(r) {
						if (r.substr(0, 1) == '1') {
							alert(r.substr(2));
							setTimeout(function() {
								bind_micro_blog_btn();
							}, 1000);
						} else if (r.substr(0, 1) == '2') {
							alert('内容含有敏感词汇，提交失败');
							setTimeout(function() {
								bind_micro_blog_btn();
							}, 1000);
						} else {
							if ($('#micro_blog_content').val() == '分享图片') {
								$('#micro_blog_content').val('').focus();
							}
							$('#ask_form')[0].reset();
							$('#micro_blog_image').val('');
							$('#J_PutTips > a > em').click();
							$('#J_QuestionInfo').blur();
							$('#ask_image').val('');
							$('#attachView').hide();
							bind_micro_blog_btn();
							$('#circle-success').tips({
								$point : $('#micro_blog_btn'),
								width : 286,
								arrow : 'tr',
								autoHide : 2000,
								hasClose : false
							});
							setTimeout(function() {
								$('[rel="J_send_message"] li:eq(0)').click();
							}, 2000);
						}
					}
				});
			}

			$('document').ready(function() {
				if ($('#J_send_message').val() == 'share') {
					//$('#micro_blog_content').focus();
				}
			});

			$('#micro_blog_content').one('keydown click', function() {
				$(this).removeClass('hello-textarea');
			})
		})();
	</script>

	<script type="text/javascript">
		// 切换发送方式
		(function() {
			var $sel = $('#J_send_message');
			$sel.beautySelect({
				'class' : 'profile-visible-select'
			});
			$('#J_change_feed').beautySelect({
				'class' : 'profile-visible-select font-five other-select'
			});

			$sel.change(function() {
				bind_micro_blog_btn();
				removeUploadImgArea();
				$('#ask_form table input').triggerHandler('focus');
				$('#J_PutAddTips').triggerHandler('focus');
			});
		})();
	</script>

	<script type="text/javascript">
		function show_face(obj, target_textarea) {
			var offset = obj.find('a').offset();
			show_face_absolute(offset.top + 25, offset.left - 220
					- ($.browser.msie ? 7 : 0), target_textarea);
			$('#message_face .pointer').addClass('rightPoint').removeClass(
					'leftPoint');
		}

		function show_face_absolute(top, left, target_textarea) {
			init_face(top, left, target_textarea);
			$('#message_face .pointer').addClass('leftPoint').removeClass(
					'rightPoint');
		}

		function init_face(top, left, target_textarea) {
			$('#message_face').css("top", top + "px").css("left", left + "px")
					.show();

			$('.face_icon').unbind('click').click(function() {
				var id = $(this).attr("id").replace("f-", "");
				var faceText = '[em:' + id + ':]';
				insert_content(target_textarea, faceText);
				$('#message_face').hide();
			});
		}

		function insert_content(target, text) {
			var obj = target[0];
			selection = document.selection;
			obj.focus();
			if (obj.selectionStart) {
				obj.value = obj.value.substr(0, obj.selectionStart) + text
						+ obj.value.substr(obj.selectionEnd);
			} else if (selection && selection.createRange) {
				var sel = selection.createRange();
				sel.text = text;
				//sel.moveStart('character', - str_len(text));
			} else {
				obj.value = text + obj.value;
			}
			target.focus();
		}
		$(document).click(
				function(e) {
					if ($(e.target).hasClass('face-switch')
							|| $(e.target).parent().hasClass('face-switch')) {
						return;
					}
					$('#message_face').hide();
				});
	</script>

	<script type="text/javascript">
		
	</script>

	<script type="text/javascript">
		$('.feedTabs li a').click(function() {
			$('#feed-list').html('');
			//$('#feed').attr('data-type',$(this).attr('data-type')).attr('data-url',this.rel).data('now',0) ;
			$(feedAction).triggerHandler('loadFeed', [ this.rel ]);
			$('.feedTabs li').removeClass('current');
			$(this).parent().addClass('current');
			return false;
		});
	</script>

	<script type="text/javascript">
		layGroupOpen = function(a) {
			$('#lay-nocard').hide();
			var myInvitCnt = $('#inviteBuddyCnt').val(), //邀请
			myCnt = $('#myBuddyCnt').val(), //我的人脉
			maxCnt = $('#buddyMax').val(), ivCnt = $('#inviteMax').val();
			if (parseInt(myCnt) >= parseInt(maxCnt)) {
				$('#lay-overmax').show();
				var $this = $(a), $lay = $('#lay-overmax'), pos = $this
						.offset();
				var cardWidth = $lay.outerWidth();
				$lay.find('.pointer').css({
					'right' : cardWidth - 40
				});
				$lay.css({
					//left : pos.left - cardWidth + 105,
					left : pos.left - 1,
					top : pos.top - 146,
					display : 'block'
				});
				return false;
			} else if (parseInt(myInvitCnt) >= parseInt(ivCnt)) {
				$('#lay-overload').show();
				var $this = $(a), $lay = $('#lay-overload'), pos = $this
						.offset();
				var cardWidth = $lay.outerWidth();
				$lay.find('.pointer').css({
					'right' : cardWidth - 40
				});
				$lay.css({
					//left : pos.left - cardWidth + 105,
					left : pos.left - 1,
					top : pos.top - 146,
					display : 'block'
				});
				return false;
			}

			$('body').append($('#lay-change-card'));
		}; // 这里调用
		seajs.use('login/util/header-tip/js/header-tip');
		$.get('/home/openrecruitment', function(r) {
			if (r != null && r.length > 0) {
				$('#hr-info').html(r).show();
			}
		});
		seajs.use('user-guide/mod/commen/js/guide-init', function(guideInit) {
			guideInit.init({
				'loadUrl' : 'http://www.dajie.com/guide/home/module/init'
			});
		});
		seajs
				.use(
						'user-guide/mod/feed-guide/js/feed-guide',
						function(complete) {
							complete
									.init({
										'root' : '.feed-guide .feedLayout',
										'loadUrl' : 'http://www.dajie.com/card/mayknow/feedcheck', // 获取推荐好友的列表
										'addUrl' : 'http://www.dajie.com/card/mayknow/mayknowwithjson?offset=7&limit=1',
										'delUrl' : 'http://www.dajie.com/card/mayknow/deletemayknow', // 删除好友的链接
										'closeConfig' : {}
									});
						});

		seajs
				.use(
						[ 'raphael', 'sns-base/mod/popularity/js/popularity' ],
						function(raphael, popularity) {
							popularity
									.init({
										'root' : '#J_popularity',
										'visitedPage' : 'http://www.dajie.com/profile/35308733/popularity?from=index_recent_visit',
										'loadUrl' : 'http://www.dajie.com/profile/35308733/attentiondata?dataSize=7'
									});
						});
		seajs
				.use(
						'user-guide/mod/fresh-guide/js/fresh-guide',
						function(guide) {
							guide
									.init({
										'root' : '#J_freshGuide',
										'initUrl' : 'http://www.dajie.com/guide/home/freshguide/ad',
										'closeConfig' : {
											'close' : 'http://www.dajie.com/guide/home/freshguide/ad/finish'
										}
									})
						});
		seajs.use('sns-base/mod/faved/js/faved', function(faved) {
			faved.init({
				'root' : '#J_visited',
				'favedPage' : 'http://www.dajie.com/profile/fav/mine',
				'loadUrl' : 'http://www.dajie.com/profile/fav/firstfive',
				'favedUrl' : 'http://www.dajie.com/profile/fav/interested'
			})
		});
	</script>

	<script type="text/javascript"
		src="http://assets.dajieimg.com/js/pv.59810.js"></script>


</body>
</html>
