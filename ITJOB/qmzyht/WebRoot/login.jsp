<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html lang="zh">
	<head>
		<meta charset="utf-8">
		<title>IT兼职网管理系统</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<link rel="icon" href="../image/icon.ico" type="image/x-icon" />
		<link rel="shortcut icon" href="../image/icon.ico" type="image/x-icon" />
		<link rel="bookmark" href="../image/icon.ico" type="image/x-icon" />
	
		<script type="text/javascript" src="../js/jquery.min.js"></script>
		<script type="text/javascript" src="../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../js/script.js"></script>
		<script type="text/javascript" src="../js/md5.js"></script>
		<script type="text/javascript">
			function loadimage(){ 
				document.getElementById("randImage").src = "../image.jsp?"+Math.random(); 
			} 
			
			function check_login(form){
				var msg = document.getElementById('password').value;
				document.getElementById('password').value = hex_md5(msg);
			}
		</script>
		
				<style media="screen">
				*{
				margin:0;
				padding:0;
				}
		#header{
height:100px;
width:100%;
}
#logo{
position:absolute;
float:left;
margin-left:5%;
margin-top:30px;
height:40px;
width:160px;
text-align:center;
}
#heading{
position:relative;
float:left;
margin-left:20%;
margin-top:-18px;
height:110px;
width:60%;
border-radius: 18px;
background-color:#1C75BC;
opacity:0.6;
}
#heading #title{
margin-top:40px;
text-align:center;
font-family:微软雅黑;
font-size:24px;
font-weight:bold;
}
#heading #subTitle{
margin-top:10px;
text-align:center;
font-family:Courier New;
}
.right{
	float:right;
	margin-top: 7%;
position: relative;;
height: 300px;
width: 300px;

}
.form-horizontal{
	padding: 22px;
}
input{
	border: 2px solid #999;
	height: 20px;
	padding: 5px;
}
.form-group{
	padding: 10px;

}
.captcha{
	padding: 10px;
}

.btn{
      border:1px solid #cccccc;
    cursor:pointer;
    margin:10px 5px;
    height:40px;
	width:80px;
    text-align:center;
    border-radius: 4px;
    border-color: #636263 #464647 #A1A3A5;
    text-shadow: 0 1px 1px #F6F6F6;
    background-image: -moz-linear-gradient(center top, #D9D9D9, #A6A6A6 49%, #A6A6A6 50%);
    background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #D9D9D9),color-stop(1, #A6A6A6));
}

#main{
	margin-top:20px;
	height:500px;
	width:100%;
}
#mainBg{
	position:relative;
	float:left;
	margin-left:20%;
	margin-top:0px;
	height:500px;
	width:60%;
    border-radius: 18px;
    background-color:#000000;
    opacity:0.5;
}
#mainPanel{
    position:relative;
	margin:25px;
	height:450px;
    border-radius: 18px;
    background-image: -moz-linear-gradient(top,#EBEBEB, #BFBFBF);
    background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #EBEBEB),color-stop(1, #BFBFBF));
}
#mainPanel #left{
	float:left;
	border-right:2px solid #F6F6F6;
	position:relative;
	top:10%;
	height:80%;
	width:49%;
	border-right-style:groove;
}
#mainPanel #image{
	position:relative;
	height:256px;
	width:256px;
	left:15%;
	top:12%;
	background-image:url('../images/admin.png');
}
#mainPanel #right{
	float:left;
	position:relative;
	height:90%;
	width:49%;
	top:5%;
}


#footer{
	margin-top:20px;
	width:100%;
}
#footer #text{
	text-align:center;
	font-size:14px;
	font-family:微软雅黑;
	font-weight:bold;
}
#wrapper{
	position:absolute;
	width:100%;
	height:100%;
	min-width:1280px;
	min-height:680px;
	overflow-x:hidden;
	overflow-y:hidden;
    background-image: -moz-linear-gradient(top,#77D1F6, #2F368F);
    background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #77D1F6),color-stop(1, #2F368F));
}
		</style>
		
	</head>
	
	<body>
	
				<div class="container" id="wrapper">
			<div id="header">
			<div id="logo"></div>
			<div id="heading">
				<div id="title">IT兼职网后台管理系统</div>
				<div id="subTitle">Ver 1.0</div>
			</div>
		</div>


		<div id="main">
				<div id="mainBg">
					<div id="mainPanel">
						<div id="left">
							<div id="image"></div>
						</div>
	<div class="right">
					<form method="post" action="m_login.action" class="form-horizontal login" onSubmit="check_login(this);">
									<fidldset class="col-sm-12">
									<div class="form-horizontal-login"> <h1>管理员登录</h1></div>
										<div class="form-group">
											<div class="controls row">
												<div class="input-group col-sm-12">
													<input type="text" class="form-control" name="username" placeholder="管理员账户">
													<span class="input-group-addon"><i class="fa fa-user"></i></span>
												</div>
											</div>
										</div>
										<div class="form-group">
											<div class="controls row">
												<div class="input-group col-sm-12">
													<input type="password" class="form-control" name="password" id="password" placeholder="密码">
													<span class="input-group-addon"><i class="fa fa-key"></i></span>
												</div>
											</div>
										</div>
<div class="form-group">
											<div class="controls row">
												<div class="input-group col-sm-6 pull-left">
													<input type="text" class="form-control" name="confirm" placeholder="验证码"> 
													<span class="input-group-addon"><i class="fa fa-check-circle-o"></i></span>
												</div>
												<div class="captcha pull-left">
													<img alt="code..." name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1">
													<a href="javascript:loadimage();"><font class=pt95>换一张</font></a>
												</div>
											</div>
										</div>
										<div class="row">
											<button type="submit" class="btn btn-lg btn-primary col-xs-12">登陆</button>
											<button type="reset" class="btn">重置</button>
										</div>
										<font size="2" face="宋体" style="font-size: 9pt" color="red"><s:fielderror key="msg"></s:fielderror></font>
									</fidldset>
								</form>
							</div>
		
			</div>
		</div>
	</div>
					<div id="footer">
				 		<div id="text">Copyright © 2016-2022 All Rights Reserved Powered By IT</div>
				 	</div>
		
		</div>
	</body>
</html>