<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>


<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册</title>
<link rel="stylesheet" href="css/bootstrap.css">
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<script src="js/bootstrap.js"></script> 

<script src="js/MSG.js"></script> 
<style type="text/css">
	*{
		margin:0;
		padding: 0;
	}
	.login-header{
		height: 120px;
		background: #a4c2f4;
		position: relative;
		z-index: -999;
	}
	.login-container{
		
		width: 450px;
		margin:-42px auto;
		border-left: 2px solid #a4c2f4;
		border-right: 2px solid #a4c2f4;
		border-bottom: 2px solid #a4c2f4;
		height: 550px;

	}
	.nav-tabs {
	    border-bottom: 10px solid #fff;
	}
	.nav-tabs > li {
	    margin-bottom: -3px;
	    width: 200px;
	}
	
	.span {
	    font-size: 18px;
	    font-weight: bold;
	}


.ul, .ul li {
	    list-style: none;
	        margin: -3px -38px 0 0;
	    padding: 0px;
	    float: left;
}
.file{
	margin-left: 26px;
}
	.ul {
	
	    border-bottom: 1px dotted silver;
	    float: left;
	    width: 100%;
	}
	.file-txt{
		font-size: 14px;
	
	}
	.position{
		padding-top: 80px;
		margin-left: 27px;
	}
	.btn{
		background: #a4c2f4;
		border:2px solid #ddd;
		box-shadow: 1px 3px 0px;
		margin-right: 22px;
	}
	.email{
	/*	margin-left: 5px;*/
	}
	.text{

			    text-align: center;
			    font-size: 28px;
			    margin: -44px 0px 36px -28px;
			    color: rgb(255, 255, 255);
			    font-weight: bold;

			    background: rgb(164, 194, 244) none repeat scroll 0% 0%;
	}

		.text1 a {
    display: inline-block;
    margin: -32px 0px 0 265px;
    position: absolute;
    font-size: 17px;
}

		.msg {
  position: absolute;
margin-top: -28px;
margin-left: 198px;
z-index: 500;

width:600px;
line-height: 18px;
background: #fff;
display: none; 
height: 30px;

	}
	#count{
		line-height: 12px;
position: absolute;
margin-left: 5px;
display: none;
color: #d9d9d9;
	}
	.msg1{
		margin-top: 5px;
	}
	b{
		
	}
.error{
	background: url(images/msg/error.png) no-repeat;
	display: inline-block;
	margin-top: 5px;
width: 30px;
height: 16px;
}	
.ok{
	background: url(images/msg/ok.png) no-repeat;
	display: inline-block;
	margin-top: 5px;
width: 30px;
height: 16px;
}	
.ati{
	background: url(images/msg/ati.png) no-repeat;
	display: inline-block;
width: 30px;
height: 17px;
}
</style>
</head>
<body>
<!--头部-->
<div class="login-header">
	<div class="logo">
		<img src="images/logoit.png" style="height: 103px;width: 231px;margin-top:4px;margin-left:61px;"/>
	</div>
	
</div>
<!-- 选项卡组件（菜单项nav-tabs）-->
<div class="login-container">
	   	 <ul id="myTab2" class="nav nav-tabs" role="tablist">
		    <li  class="active"><a href="#entertainment" role="tab" class="span" style="padding-left: 60px;"><span>企业注册</span></a></li>
		    <li><a href="#estate" role="tab" class="span" style="padding-left: 60px;"><span>个人注册</span></a></li>   
		</ul>
		<!-- 选项卡面板 -->
		
	           <div id="myTabContent2" class="tab-content">

		    <div class="tab-pane fade in active position"  id="entertainment">
		                 <div class="text1"><a href="c_index.jsp">已有帐号？立即登录</a><p class="text" >快速入口</p></div>
		                
		   
		             <form class="form-horizontal"  action="companyregist" method="post">
				  <div class="form-group">
				    <label  class="col-sm-3 control-label">Name</label>
				        <div class="col-sm-6"><p class="msg msg1"><i class="ati"></i>5-25个字符，一个汉字两个字符，由数字、字母（不分大小写 ）、 汉字、下划线组成</p>
				    <input type="text" class="form-control" placeholder="AcmpanyName" name="cname">
				    <div><label><span></span><b id="count">0个字符</b></label></div>
				    
					</div>

				    </div>
				     <div class="form-group">
				    <label for="input" class="col-sm-3 control-label">link</label>
				    <div class="col-sm-6">
				      <input type="text" name="clink"  class="form-control" id="" placeholder="CampanyLink" disabled=""><p class="msg"><i class="ati"></i>包含非法字符或为空</p>
				    </div>
				  </div>
				    <div class="form-group email" style="margin-left: -13px">
					    <label for="inputEmail3"  value="l" class="col-sm-3 control-label">Email</label>
					    <div class="col-sm-6">
					      <input type="email" name="cemail" class="form-control" disabled=""  id="inputEmail3" placeholder="@163.coml" value="@"><p class="msg"><i class="ati"></i>格式为xxxx@xx.com/cn</p>
					    </div>
					  </div>
					
				 
				      <div class="form-group">
				    <label for="input" class="col-sm-3 control-label">address</label>
				    <div class="col-sm-6">
				      <input type="text" class="form-control" name="caddress" disabled=""  id="" placeholder="CampanyAddress">
				      <p class="msg"><i class="ati"></i>地址必须为中文名4-20个字符，一个汉字为两个字符</p>
				    </div>
				  </div>

							     <div class="form-group">
				    <label for="inputPassword3" class="col-sm-3 control-label">Password</label>
				    <div class="col-sm-6">
				      <input type="password" name="cpassword" disabled=""  class="form-control" id="inputPassword3" placeholder="Password"><p class="msg"><i class="ati"></i>5-10个字符，推荐包含数字、字母</p>
				    </div>
				  </div>
				<div class="file">
			                 	  <ul class="ul">
					<li><label for="inpfile" class="control-label file-txt" >头像上传</label></li>
					<li><input type="file" id="inpfile"  name="inpfile" style="margin-top:4px;margin-left: 70px" /></li>
				</ul>
				</div>
				  <div class="form-group">
				    <div class="col-sm-offset-3 col-sm-6">
				      <div class="checkbox">
				        <label>
				          <input type="checkbox"> Remember me
				        </label>
				      </div>
				    </div>
				  </div>
				
				  <div class="form-group">
				    <div class="col-sm-offset-3 col-sm-6">
				      <button type="submit" class="btn btn-default">Sign in</button>
				        <button type="reset" class="btn btn-default">Reset</button>
				    </div>
				  </div>
			

				</form>
		    </div>
		    <!--个人注册-->
			<div class="tab-pane fade" id="estate">
			        <div class="text1"><a href="">已有帐号？立即登录</a></div>
			        <div><p class="text" style=" margin:43px 0;">快速入口</p></div>
		                <form  class="form-horizontal" action="cregist">

		                	  <div class="form-group">
				    <label for="exampleInputName2" class="col-sm-3 control-label">Name</label>
				        <div class="col-sm-6">
				    <input type="text"   name="ename" class="form-control" id="exampleInputName2" placeholder="username">

				    </div>
				  </div>
					<div class="form-group">
				    <label for="inputPassword3" class="col-sm-3 control-label">Password</label>
				    <div class="col-sm-6">
				      <input type="password"  name="epassword" class="form-control" id="inputPassword3" placeholder="Password">
				    </div>
				  </div><!-- 
                                                                <div class="form-group">
					    <label for="inputEmail3" name="email" class="col-sm-3 control-label">Email</label>
					    <div class="col-sm-6">
					      <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
					    </div>
					  </div> -->
			    	  <div class="form-group">
				    <label  class="col-sm-3 control-label">性别</label>
				        <div class="col-sm-6">
				    <input type="text" class="form-control" name="esex" placeholder="gender">

				    </div> </div>
				        	  <div class="form-group">
				    <label  class="col-sm-3 control-label">birth</label>
				        <div class="col-sm-6">
				    <input type="datetime" name="ebirth" class="form-control"  placeholder="2016-6-18">
				    </div>
				  </div>
				 
				  

				   
                                                             <div class="form-group">
				    <div class="col-sm-offset-3 col-sm-6">
				      <button type="submit" class="btn btn-default">Sign in</button>
				        <button type="reset" class="btn btn-default">Reset</button>
				    </div>
				  </div>
		                </form>
			</div>

	</div>

</div>
<!--尾部-->
<div class="login-footer">
	
</div>
<script>
    $(function(){
    $("#myTab a").click(function(e){
        e.preventDefault();
        $(this).tab("show");
    });
    $("#myTab2 a").click(function(e){
        e.preventDefault();
        $(this).tab("show");
    });
})

$(document).ready(function(){
  $('.ul').jqf1();
});



</script>
</body>
</html>
