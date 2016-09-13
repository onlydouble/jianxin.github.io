<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'c_main_1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">-->
<link href="css/font-awesome.min.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<link rel="stylesheet" href="css/company.css" media="screen" title="no title" charset="utf-8">
<style>
ul,li{list-style:none;}
.center-middle-top{
	width:100%;
	/* margin-left:2%; */
	margin-top:5%;
	height:500px;
	position:absolute;
}
.tabList{
	
}
#tab{position:relative;}
#tab .tabList ul li{
	float:left;
	background:#fefefe;
	background:-moz-linear-gradient(top, #fefefe, #ededed);	
	background:-o-linear-gradient(left top,left bottom, from(#fefefe), to(#ededed));
	background:-webkit-gradient(linear,left top,left bottom, from(#fefefe), to(#ededed));
	border:1px solid #ccc;
	padding:10px 0;
	width:129px;
	text-align:center;
	cursor:pointer;
}
#tab .tabCon{
	position:absolute;
	

	top: 38px;
	border-top:none;
	width:100%;
	height:400px;
}
#tab .tabCon div{
	padding:30px;
	position:absolute;
	opacity:0.5;
	filter:alpha(opacity=0);
	width: 387px;
height: 400px;

}
#tab .tabList li.cur{
	border-bottom:none;
	background:#a4c4f2;
}
#tab .tabCon div.cur{
	opacity:1;
	filter:alpha(opacity=100);
}
.center-right {
    width: 32%;
    height: 500px;
    z-index: 5;
  
    right: 0%;
    float: right;
    position: absolute;
  /*   background-color: #d9d9d9; */
  margin-top: -6px;

}
    .footer {
        position:relative;
        height: 50px;
        width: 90%;
        font-size: 13px;
        margin:10px auto;
        padding-left: 23%;

    }
/*     显示表 */
    .table-responsive {
    min-height: .01%;
    overflow-x: auto;
}
.table-bordered {
    border: 1px solid #ddd;
}
.table {
    width: 100%;
    max-width: 100%;
    margin-bottom: 20px;
}
table, .table {
    margin-bottom: 0;
}
.table_table tr th span{  
  display: inline-block;
  padding: 5px;
  font-size: 14px;

  font-weight: bold;
}
.btn{

 margin-right: -54px;
}
.control-label {
    position: absolute;
    width: 160px;
    height: 29px;
  /*   background: #fff; */
    padding: 2px 24px 0px 22px;
    margin: 3px 5px 0 46px;
    text-align: center;
    font-size: 17px;
    color: #999;
    font-weight: bold;}   
  .form-control {
margin: 19px 13px 0px 204px;
    display: block;
width: 206px;
height: 34px;
    padding: 6px 17px;
    margin-bottom: 20px;
    font-size: 14px;
    line-height: 1.429;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #a4cf;
    border-radius: 19px;}</style>
  </head>
  
  <body>
   <!--上面部分-->
   
			<div class="center-middle-top">
			<div id="tab" >
				<div class="tabList">
					<ul>
						<li class="cur">已通过</li>
						<li>未通过</li>
						<li>未查看</li>
					</ul>
				</div>
				<div class="tabCon">
					<div class="cur">

						<ul class="ul">
							<li><label for="inpfile" class="control-label file-txt"></label></li>
							<li><input type="file" id="inpfile" name="inpfile"
								 /></li>
						</ul>

					</div>

					<div>1</div>
					<div>	
					 <table>
    	<tr>
    		<td>ID</td>
    		<td>姓名</td>
    		<td>年龄</td>
    		<td>性别</td>
    	</tr>
     <c:forEach items="${users}" var="apply">
    	<tr>
    		<td>${apply.name}</td>
    		<td>${apply.job}</td>
    		<td>${apply.education}</td>
    		<td>${apply.exp}</td>
    		<td>${apply.information}</td>
    		
    	</tr>
    </c:forEach>
    </table>
                                </div>
				</div>

			</div>

	
		</div>
				<a href="c_query.action">显示</a>
				
				<script type="text/javascript">
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
