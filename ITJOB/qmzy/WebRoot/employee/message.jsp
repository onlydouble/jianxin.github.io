<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<title>留言板</title>
<link href="css/messagestyle.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Pink Contact Form ,Login Forms,Sign up Forms,Registration Forms,News latter Forms,Elements"./>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!--webfonts-->
<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,100italic,300italic,400italic|Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Raleway:400,200,300,500,600,800,700,900' rel='stylesheet' type='text/css'>
<!--//webfonts-->
<style type="text/css">body{
background:#a4c4f2;
}</style>
</head>
<body>
	<h1>我的 留言</h1>
	<div class="login-01">
			<form>
				<ul>
				<li class="first">
					<a href="#" class=" icon user"></a><input type="text" class="text" value="Name/姓名" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Name';}" >
					<div class="clear"></div>
				</li>
				<li class="first">
					<a href="#" class=" icon email"></a><input type="text" class="text" value="Email/邮箱" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Email';}" >
					<div class="clear"></div>
				</li>
				<li class="first">
					<a href="#" class=" icon phone"></a><input type="text" class="text" value="Phone/电话" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Phone';}" >
					<div class="clear"></div>
				</li>
				<li class="second">
				<a href="#" class=" icon msg"></a><textarea value="Message/言论" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Comments';}">Comments/言论</textarea>
				<div class="clear"></div>
				</li>
			</ul>
			<input type="submit" onClick="myFunction()" value="提交" >
			<div class="clear"></div>
		</form>
</div>
 <table>
    	<tr>
    		<td>ID</td>
    		<td>姓名</td>
    		<td>年龄</td>
    	</tr>
    <c:forEach items="${request.message}" var="message">
    	<tr>
    		<td>${message.meno}</td>
    		<td>${message.memail}</td>
    		<td>${message.mecontent}</td>
    		<td>${message.mphone}</td>
    	</tr>
    </c:forEach>
    </table>
	<!--start-copyright-->
   		<div class="copy-right">
   			<div class="wrap">
				<p>Copyright &copy; 2016.IT兼职网.<a target="_blank"></a></p>
		</div>
	</div>
	<!--//end-copyright-->
</body>
</html>