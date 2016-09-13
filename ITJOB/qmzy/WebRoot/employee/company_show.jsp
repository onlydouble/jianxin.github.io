<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib uri="/struts-tags" prefix="s" %>

<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
	
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/bootstrap.min.js" ></script>
<link rel="stylesheet" type="text/css" href="stylecompany_show.css">
				<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">	
				<script type='text/javascript' src="js/jquery-1.6.js"></script>
	<link rel="stylesheet" href="css/bootstrap.css" />
		<script type="text/javascript" src="js/script.js"></script>
		<script>
		$(function() {
			$("li:eq(1)").click(function() {
				$(".active").css({
					"display" : "none"
				});
			});
		});
		</script>
		<style>
			*{
	margin: 0;padding: 0;
}
body {
    font: 14px/200% "微软雅黑","MSYH","宋体",STSONG,Arial, Helvetica, sans-serif;    width: 100%;
    height: 100%;
}

.top{
	width: 100%;
	height: 35px;
	min-width: 1003px !important;
	background: #a4c2f4;
	border-bottom: 1px solid #dadada;
	 border: 1px solid rgb(174, 226, 217);
    -webkit-border-radius: 10%;
    -moz-border-radius: 10%;
    -o-border-radius: 10%;
    border-radius: 10%;
    box-shadow: -8px -8px 20px #efefef, 5px 5px 5px #B9B9B9;
    position: relative;
  z-index: 1;


}
div{
	display: block;

}
.W1003 a{

	border-radius: 20%;
	border:2px solid #e2e2e2;

}
.W1003 a:hover{
	background: -webkit-linear-gradient(to left, #999 , #fff); /* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to left, #999 , #fff);
	    -webkit-border-radius: 10%;
	    -moz-border-radius: 50%;
    -o-border-radius: 50%;
    border-radius: 20%;
    box-shadow: -8px -8px 8px #999, 10px 10px 10px #B9B9B9;


}
a, a:visited, a:hover, a:active {
    text-decoration: none;


}
.top .W1003 {
    height: 40px;
    line-height: 40px;
    width: 1003px;
    margin: 0 auto;
}
.fl{
	float: left;
}
.fl .saoma a{
	display: block;

	padding-left: 20px;
	margin-left: 100px;

}
.fr{
	float: right;

}
.saoma{
}
.logo{
margin-left: 12%;
}
.Reglogin ul li {
   float: left;
    margin-left: 10px;
    padding-bottom: 5px;
    margin-top: -39px;
     color: #999;
	font-weight: bold;
}
ul, li {
    list-style-type: none;

}

div nav {
	position: absolute;
margin-top: 5%;
   height: 35px;
   width: 100%;
    background-color: rgb(119, 136, 153);
    border-color: rgb(174, 205, 248);
    border-radius: 5%;
    z-index: 1;
}
nav {
    background-image: url(images/nav.gif);
    background-position: bottom left;
    background-repeat: repeat-x;
    border-width: 0.1em;

    border-bottom-width: 0;
    border-top-width: 0;
    padding-left: 10%;
}
 nav ul {
    width: 100%;
    overflow: hidden;
    border-left-width: 0.1em;

    padding-top: 0;
}

 nav a.here:link, nav a.here:visited, nav a.here:hover,  nav a.here:active {
    color: rgb(238, 238, 255);
    background-color: rgb(119, 153, 153)}
 nav ul  li{
             display: inline-block;
    }
    nav ul li a{
    	 color: #fff;
    	font-weight: bold;
    	padding: 0.5em 2em;
	border-right: 0.1em solid;
	line-height: 35px;
    }
.search{
	position: relative;
	width: 800px;
	margin: 0 auto;
}
.btn{
z-index:1000;}
.btnn{
	background: #a4c4f2;
	position: absolute;

	width: 50px;
    letter-spacing: 27px;
    padding: 5px 0 6px 20px;
    font-size: 18px;
    font-weight: bold;
			}
	.show{
		position: absolute;
				width: 900px;
				height: 600px;
			 
         margin-left:-50px;
			}
	.table{
position: absolute;

		    width: 900px;
		    margin-top: 130px;
			}
.form-control{
	width: 200px;
text-align: center;
}
.cotainer{
	margin-top: 110px;
}
.toolbar{
	position: absolute;
width: 100%;
	top: 80px;
	left:134px;

}
li{
	float: left;
}
.clearfix{
position: absolute;
margin-top: 680px;

margin-left: 330px;
}
.page{
position:absolute;
margin-top: 490px;
margin-left: 600px;
}
th{
text-aglin:center;
}
td{
text-aglin:center;
    padding: 10px;
}
p {
    margin: 203px 76px 10px;
}
.active{
height:40px;
width:1000px;
padding:5px 5px 10px 10px;;
font-size:16px;
color:#fff;
background:#A4c4f2;
}
.ad{
position:absolute;
left: -32%;
margin-top: 10%;
}

.ad2 {
    float: right;
    right: 46%;
    margin-top: 10%;
    margin-right: -257px;
}
.foot{
position: absolute;
margin-top: 100%;
margin-left: 10%;
}
		</style>
	</head>
	<body>
   <div class="top">
	         <div class="W1003">
	         	            <div class="FL saoma">
	         	            	<a href="" class="">扫描二维码</a>
	         	            	<a href="" target="_">进入企业版</a>
	         	            </div>
	         	            <div class=" fr Reglogin">
	         	                 <ul>
	         	            	<li><a href="information">wang的主页</a></li><!--注册-->
	         	            	<li>/</li>
	         	            	<li><a href="index">退出</a></li>
	         	                 </ul>
	         	            </div>
	         </div>
	 </div>

	<!--导航栏-->
<div class="middle">
	<header>
		  <nav>
			      <ul>
			        <li><a href="total">首页</a></li>
			        <li><a href="main">个人中心</a></li>
			        <li><a href="cjobQuery">职位搜索</a></li>
			        <li><a href="companyQuery">公司搜索</a></li>
			        <li><a href="message_m">动态</a></li>
			      </ul>
		    </nav>
	</header>
</div>
<img src="images/logoer.jpg" style="width:65px;height:65px;position:absolute;margin: 2px 0px 18px 88%;z-index:10">
	<img src="images/logoit.png" style=" height: 93px;width: 214px; z-index: 100;position: absolute;margin: -20px 0%" />
<div class="search">
	<div class="cotainer">
	<div class="row toolbar">
							<div class="col-xs-7">
								<form action="companyQuery.action" method="post">
									<div class="input-group">
										<div class="input-group-btn">
											<button type="button" class="btn btn-default dropdown-toggle" id="searchTypeOption" data-toggle="dropdown">搜索类型  <span class="caret"></span></button>
											<ul class="dropdown-menu" aria-labelledby="searchTypeOption">
												<li data-option="query_cname" ><a href="#">按公司名</a></li>
												<li data-option="query_caddress" ><a href="#">按区域</a></li>
											</ul>
										</div><!-- /btn-group -->
										<input type="hidden" value="" name="searchType" id="searchType">
										<input type="text" name="searchcompany" class="form-control">
										<span class="input-group-btn"><input class="btn btn-default" type="submit" value="搜索" id="search"/></span>
									</div>
								</form>
							</div>
						
						</div>
		<form >	
				
	<div class="form-group">
			<div class="col-lg-4">
				<label>所在地</label>
				 <select class="form-control" name="区域名" value="区域名">
				
				<option>北京</option>
				<option>上海</option>
				<option>广东</option>
				<option>福建</option>
				<option>南京</option>
				<option>江苏</option>
				<option>浙江</option>
				<option>山东</option>
				<option>河北</option>
				<option>四川</option>
				<option>辽宁</option>
				<option>江西</option>
				<option>山西</option>
				<option>吉林</option>
			</select>
		        </div >
			<div class="col-lg-4">
				<label>薪酬</label>
				<select class="form-control" name="薪酬" value="薪酬">
				<option>---请选择---</option>
				<option>2000以下</option>
				<option>2001-3000</option>
				<option>3001-4000</option>
				<option>4001-5000</option>
				<option>5001-6000</option>
				<option>6001-7000</option>
				<option>7001-8000</option>
				<option>8001-9000</option>
				<option>9001-10000</option>
				<option>10000以上</option>
				
			</select> 
			</div>
		
			<div class="col-lg-4">
				<label>公司</label>
				 <select class="form-control" name="职位名称" value="职位名称">
				 <option>---请选择---</option>
				<option>网站设计师</option>
				<option>WEB前端开发</option>
				<option> PHP程序员</option>
				<option>UI设计师</option>
				<option>.NET开发工程师</option>
				<option>网页运营策划</option>
				<option>Flash开发工程师</option>
				<option>WEB前端技术员</option>
				<option>JS前端工程师</option>
				<option>网络设计专员</option>
				<option>底层播放器设计师</option>
				<option>网站编辑</option>
		  </select></div>
				<!--  <div>
				<button type="submit" class="btnn btn-default c" style="width: 200px ">提交</button>
				      </div> --></div>
			
	</form>
			<div class="show">
				<div class="table-responsive">
							<table class="table table-condensed table-bordered table-hover table-striped">
							<thead>
					<tr class="active">
						<th style="width:200px;padding-left:50px;height:50px;">公司名称</th>
						<th style="width:600px;padding-left:180px;height:50px;line-height:20px;">公司简介</th>
					
						<th style="width:100px;padding-left:18px;height:50px;">公司地址</th>
						<th style="width:80px;padding-left:18px;height:50px;"></th>
					</tr>
					</thead>
						<tbody>
									<s:iterator value ="lst" id = "company">
										<tr>										
											<td style="padding-top:40px;padding-left:30px;"><s:property value = "#company.cname"/></td>
											<td style="line-height:30px;"><s:property value = "#company.content"/></td>
											<td style="padding-top:30px;padding-left:30px;"><s:property value = "#company.caddress"/></td>
									        <td style="padding-top:30px;padding-left:20px;"><a href="jianjie.jsp">详情</a></td>
										</tr>
									</s:iterator>
								</tbody>
				<!-- 	 <tr class="active" id="active">
						<td><a href="#">南京枢斗科技有限公司</a></td>
						<td><a href="#">网站设计师</a></td>
						<td>南京-建邺区</td>
						<td> 5000/1000元/月</td>
						<td>06-21</td>
					</tr>
					<tr class="active"  id="active">
						<td><a href="#">湖北安式软件有限公司</a></td>
						<td><a href="#">WEB前端开发</a></td>
						<td>湖北-襄阳</td>
						<td> 2500/3000元/月</td>
						<td>06-21</td>
					</tr>
					<tr class="active"  id="active">
						<td><a href="#">广州市正新人力资源服务有限公司</a></td>
						<td><a href="#">PHP程序员</a></td>
						<td>广东-越秀区</td>
						<td> 3000/4999元/月</td>
						<td>06-21</td>
					</tr>
					<tr class="active"  id="active">
						<td><a href="#">软通动力信息技术（集团）有限公司</a></td>
						<td><a href="#">UI设计师</a></td>
						<td>湖北-武汉</td>
						<td> 4000/6000元/月</td>
						<td>06-21</td>
					</tr>
					<tr class="active"  id="active">
						<td><a href="#"> 杭州博世数据网络有限公司</a></td>
						<td><a href="#">.NET开发工程师</a></td>
						<td>浙江-杭州</td>
						<td> 15000/19999元/月</td>
						<td>06-21</td>
					</tr>
					<tr class="active"  id="active">
						<td><a href="#"> 天鉴陈设艺术</a></td>
						<td><a href="#">Flash开发工程师</a></td>
						<td>上海-普陀区</td>
						<td>6000-7999元/月</td>
						<td>06-21</td>
					</tr>
					<tr class="active"  id="active">
						<td><a href="#">石家庄捷度计算机有限公司</a></td>
						<td><a href="#">WEB前端技术员</a></td>
						<td>河北-石家庄</td>
						<td>2000-4000元/月</td>
						<td>06-21</td>
					</tr>
					<tr class="active"  id="active">
						<td><a href="#">杭州禾伟科技有限公司</a></td>
						<td><a href="#">JS前端工程师</a></td>
						<td>浙江-杭州</td>
						<td>6000-7999元/月</td>
						<td>06-21</td>
					</tr>
					<tr class="active"  id="active">
						<td><a href="#">中原地产（中国上海）</a></td>
						<td><a href="#">网络设计专员</a></td>
						<td>上海-长宁</td>
						<td>4500-5999元/月</td>
						<td>06-21</td>
					</tr>
					<tr class="active">
						<td><a href="#">乐视控股（北京）有限公司</a></td>
						<td><a href="#">底层播放器设计师</a></td>
						<td>北京-朝阳区</td>
						<td>10000-14999元/月</td>
						<td>06-21</td>
					</tr> -->

			</table> 

				</div>
<div>
<s:url id="url_pre" value="companyQuery"><s:param name="currentPage" value="currentPage-1"></s:param></s:url>
						<s:url id="url_first" value="companyQuery"><s:param name="currentPage" value="1"></s:param></s:url>
						<s:url id="url_last" value="companyQuery"><s:param name="currentPage" value="totalPage"></s:param></s:url>
						<s:url id="url_next" value="companyQuery"><s:param name="currentPage" value="currentPage+1"></s:param></s:url>
						<div class="clearfix">
							<ul class="pagination" >
							
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
					<div class="page"><p>当前是第${currentPage}页,共有${totalPage}页</p></div>
				</div>
<div class="ad">
<a href=""><img src="images/adad/adad5.gif" style="width:200px;height:80px"/></a><br><br><br>
<a href=""><img src="images/adad/adad6.gif"style="width:200px;height:80px"/></a><br><br>
<a href=""><img src="images/adad/adad3.gif"style="width:200px;height:80px"/></a><br><br>
<a href=""><img src="images/adad/adad4.gif"style="width:200px;height:80px"/></a><br><br>
<a href=""><img src="images/adad/adad2.gif"style="width:200px;height:80px"/></a><br><br>
<a href=""><img src="images/adad/adad7.gif"style="width:200px;height:80px"/></a>
</div>
<div class="ad2">
<a href=""><img src="images/adad/adad1.gif"style="width:200px;height:80px"/></a><br><br>
<a href=""><img src="images/adad/adad2.gif"style="width:200px;height:80px"/></a><br><br>
<a href=""><img src="images/adad/adad8.gif"style="width:200px;height:80px"/></a><br><br>
<a href=""><img src="images/adad/adad9.gif"style="width:200px;height:80px"/></a><br><br>
<a href=""><img src="images/adad/adad10.gif"style="width:200px;height:80px"/></a><br><br>
<a href=""><img src="images/adad/adad11.gif"style="width:200px;height:80px"/></a><br><br>
</div>

<div class="foot"> Copyright © 2013-2015 All Rights Reversed. 京ICP备11018032号-8 京公网安备11010802013056</div>

	</body>
</html>
