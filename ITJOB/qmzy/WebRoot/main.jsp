<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<
<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib uri="/struts-tags" prefix="s" %>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="revised" content="Ningxia Seasons, 2015/8/13/" />
<!-- 定义页面的最新版本 -->
<meta name="description" content="网站简介" />
<!-- 网站简介 -->
<meta name="keywords" content="搜索关键字，以半角英文逗号隔开" />
<!-- 搜索关键字 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>IT兼职网 - 个人中心</title>


<!-- CSS公共部分 开始 -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<link href="css/style.css" rel="stylesheet">
<!-- CSS公共部分 结束 -->

<link href="css/crowdfunding.css" rel="stylesheet">

</head>
<body>
<!-- top + banner 开始 -->
<div class="container-fluid cfh_top">
  <div class="container"> IT兼职网首页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;官方咨询电话：400-800-800
    <ul class="list-inline">
      <li><a href="index.html" target="_self">IT兼职网</a></li>
      <li><a href="https://nxseason.taobao.com/" target="_blank">兼职网</a></li>
      <li id="register" onMouseMove="login_but_bg(1)" onMouseOut="login_but_bg(2)"><a href="login.jsp" target="_blank">&nbsp;注册&nbsp;</a></li>
      <li id="login" onMouseMove="login_but_bg(3)" onMouseOut="login_but_bg(4)"><a href="index.jsp" target="_blank">&nbsp;登录&nbsp;</a></li>
    </ul>
  </div>
</div>
<div class="container-fluid cfh_banner">
  <div class="container"> <img src="">
    <ul class="list-inline">
      <li><a href="index.html" target="_self">首页</a></li>
      <li><a href="list_page.html" target="_self">兼职信息</a></li>
      <li><a href="investor_page.html" target="_self">留言板</a></li>
    </ul>
  </div>
</div>
<!-- top + banner 结束 --> 
<!-- 核心 开始 --> 
<div class="container border1 nopadding margin10">
  <div id="vertical_navigation" class="col-lg-3 background831312 nopadding">
    <div class="dead_pic"><img src="img/member_center/nopic.jpg.png"><br>
      <span class="username">用户名</span></div>
    <div class="usertype">用户类型： 兼职者<br>
      会员等级：<img style="margin-right:0px;" src="img/member_center/star.png"></img> <img style="margin-right:0px;" src="img/member_center/xx2.png"></img> <img style="margin-right:0px;" src="img/member_center/xx2.png"></img> <img style="margin-right:0px;" src="img/member_center/xx2.png"></img> <img style="margin-right:0px;" src="img/member_center/xx2.png"></img> </div>
    <div class="menu">
      <div class="menu_title"> 我的信息 </div>
      <div class="menu_list">
        <ul class="list-unstyled">
          <li id="listClick1" class="menu_list_on" onClick="listClick(1)"><img src="img/member_center/left_icon_1.png"> 基本信息</li>
          <li id="listClick2" class="" onClick="listClick(2)"> <img src="img/member_center/left_icon_2.png"> 修改头像</li>
          <li id="listClick3" class="" onClick="listClick(3)"> <img src="img/member_center/left_icon_2.png"> 身份认证</li>
          <li id="listClick4" class="" onClick="listClick(4)"> <img src="img/member_center/left_icon_3.png"> 修改密码</li>
        </ul>
      </div>
    </div>
    <div class="menu">
      <div class="menu_title"> 我相关的兼职 </div>
      <div class="menu_list">
        <ul class="list-unstyled">
          <li id="listClick6" class="" onClick="listClick(6)"><img src="img/member_center/left_icon_6.png"> 兼职管理</li>
          <li id="listClick7" class="" onClick="listClick(7)"> <img src="img/member_center/left_icon_6.png"> 投递简历管理</li>
        </ul>
      </div>
    </div>
    <div class="menu">
      <div class="menu_title"> 我的工资管理 </div>
      <div class="menu_list">
        <ul class="list-unstyled">
          <li id="listClick8" class="" onClick="listClick(8)"><img src="img/member_center/left_icon_8.png"> 我的账户</li>
          <li id="listClick9" class="" onClick="listClick(9)"> <img src="img/member_center/left_icon_9.png"> 薪酬明细查询</li>
        </ul>
      </div>
    </div>
    <div class="menu">
      <div class="menu_title"> 我的星级和积分 </div>
      <div class="menu_list">
        <ul class="list-unstyled">
          <li id="listClick11" class="" onClick="listClick(11)"><img src="img/member_center/left_icon_9.png"> 星级和积分介绍</li>
          <li id="listClick12" class="" onClick="listClick(12)"> <img src="img/member_center/left_icon_12.png"> 积分纪录</li>
          <li id="listClick13" class="" onClick="listClick(13)"> <img src="img/member_center/left_icon_13.png"> 积分规则</li>
        </ul>
      </div>
    </div>
    <div class="menu">
      <div class="menu_title"> 我的消息 </div>
      <div class="menu_list">
        <ul class="list-unstyled">
          <li id="listClick14" class="" onClick="listClick(14)"><img src="img/member_center/left_icon_14.png"> 发送新消息</li>
          <li id="listClick15" class="" onClick="listClick(15)"> <img src="img/member_center/left_icon_15.png"> 收件箱</li>
          <li id="listClick16" class="" onClick="listClick(16)"> <img src="img/member_center/left_icon_16.png"> 发件箱</li>
        </ul>
      </div>
    </div>
  </div>
  <div class="col-lg-9">
  	<iframe name="left" id="crowdfunding_iframe" src="crowdfunding.center/my_info.html" frameborder="false" scrolling="no" style="border:none;" width="100%" height="1045" allowtransparency="true"></iframe>
  </div>
</div>
<!-- 核心 结束 -->  

<!-- 版权 开始 -->
<div class="container-fluid cfh_bottom">
  <div class="container">
    <div class="cfh_bottom_qsss">
      <dl>
        <dt>轻松兼职</dt>
        <dd><a href="" target="_blank">关于我们</a></dd>
      </dl>
    </div>
    <div class="cfh_bottom_aboutours">
      <dl>
        <dt>关于我们</dt>
        <dd><a href="" target="_blank">咨询客服</a></dd>
        <dd><a href="" target="_blank">招贤纳士</a></dd>
      </dl>
    </div>
    <div class="cfh_bottom_callme">
      <dl>
        <dt class="cfh_bottom_call_me"><span class="glyphicon glyphicon-earphone"></span>&nbsp;***-***-****</a></dt>
        <dd>IT兼职网服务邮箱：<a href="mailto:1522926844@qq.com" target="_blank">*********@qq.com</a></dd>
        <dd>公司地址：中南民族大学</dd>
      </dl>
    </div>
    <div class="cfh_bottom_QRcode"> <img src="img/index/bottom_QRcode.png"> <div class="phone">
    <span class="cfh_bottom_Iphone"><img src="img/index/cfh_bottom_IphoneICO.png"><font>APP Store</font></span><img class="cfh_bottom_IphoneICO_last" src="img/index/cfh_bottom_AndroidICO_1.png"><br>
    <span class="cfh_bottom_Iphone"><img src="img/index/cfh_bottom_AndroidICO.png"><font>Android</font></span><img class="cfh_bottom_AndroidICO_last" src="img/index/cfh_bottom_IphoneICO_2.png"></div></div>
  </div>
  <div class="box50"></div>
</div>
<div class="container-fluid background_color545454">
  <div class="container text-center"> © 2016IT兼职网 All rights reserved | IT兼职网科技有限公司 </div>
</div>
<img id="back_top_jt" class="back_top" onMouseMove="float_call_me(7)" onMouseOut="float_call_me(8)" src="img/index/back_top_jt.png">
<span class="back_top_jt_span">返回顶部</span>
<img id="back_top_wx" class="back_top2" onMouseMove="float_call_me(5)" onMouseOut="float_call_me(6)" src="img/index/back_top_wx.png">
<span class="back_top_wx_span"><img src="img/index/bottom_QRcode.png"></span>
<a href="tencent://message/?uin=666666&Site=&Menu=yes"><img id="back_top_qq" class="back_top3" onMouseMove="float_call_me(3)" onMouseOut="float_call_me(4)" src="img/index/back_top_qq.png"></a>
<span class="back_top_qq_span"><font class="glyphicon glyphicon-hand-right">&nbsp;QQ咨询热线</font></span>
<img id="back_top_call" class="back_top4" onMouseMove="float_call_me(1)" onMouseOut="float_call_me(2)" src="img/index/back_top_call.png">
<span class="back_top_call_span"><font class="glyphicon glyphicon-phone-alt">&nbsp;***-***-****</font></span>
<!-- 版权 结束 --> 

<!-- 结束 --> 
<!-- JS公共部分 开始 --> 
<script src="js/jquery-2.1.1.min.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/basics.js"></script> 
<!-- JS公共部分 结束 --> 
<script src="js/crowdfunding.js"></script>
</body>
</html>