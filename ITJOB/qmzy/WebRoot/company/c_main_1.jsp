<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">


<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">-->
<link href="css/font-awesome.min.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" href="css/company.css" media="screen"
	title="no title" charset="utf-8">
<script type="text/javascript">
	function onclick1() {

		var table = document.getElementsByTagName('table');

		var table1 = table[0];
		var table2 = table[1];
		var table3 = table[2];
		table1.style.display = "block";
		table3.style.display = "none";
	}
	function onclick2() {

		var table = document.getElementsByTagName('table');

		var table1 = table[0];
		var table2 = table[1];
		var table3 = table[2];
		table2.style.display = "block";
		table3.style.display = "none";
	}
</script>
<style>
ul,li {
	list-style: none;
}

.center-middle-top {
	width: 100%;
	/* margin-left:2%; */
	margin-top: 5%;
	height: 500px;
	position: absolute;
}

.tabList {
	margin-left: 26px;
}

#tab {
	position: relative;
}

#tab .tabList ul li {
	float: left;
	background: #fefefe;
	background: -moz-linear-gradient(top, #fefefe, #ededed);
	background: -o-linear-gradient(left top, left bottom, from(#fefefe),
		to(#ededed));
	background: -webkit-gradient(linear, left top, left bottom, from(#fefefe),
		to(#ededed));
	border: 1px solid #ccc;
	padding: 10px 15px;
	width: 150px;
	text-align: center;
	cursor: pointer;
}

#tab .tabCon {
	position: absolute;
	top: 38px;
	border-top: none;
	width: 400px;
	height: 400px;
}

#tab .tabCon div {
	padding: 30px;
	position: absolute;
	opacity: 0.5;
	filter: alpha(opacity = 0);
	width: 387px;
	height: 400px;
	margin-left: 5px;
}

#tab .tabList li.cur {
	border-bottom: none;
	background: #a4c4f2;
}

#tab .tabCon div.cur {
	opacity: 1;
	filter: alpha(opacity = 100);
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
	position: relative;
	height: 50px;
	width: 90%;
	font-size: 13px;
	margin: 10px auto;
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
	width: 400px;
	max-width: 100%;
	margin-bottom: 20px;
}

table,.table {
	margin-bottom: 0;
}

.table_table tr th span {
	display: inline-block;
	padding: 5px;
	font-size: 14px;
	font-weight: bold;
}

.btn {
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
	font-weight: bold;
}

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
	border-radius: 19px;
}

.table1 {
	display: none;
}

.table2 {
	display: none;
}
.table_1{
{
    background: rgb(164, 196, 242) none repeat scroll 0% 0%;
    padding: 12px 10px 12px 50px;
    border-top: 5px solid rgb(0, 0, 0);
    width: 77px;
    font-size: 22px;}
  td{
    border:2px solid #000;
    }
table {
    *border-collapse: collapse; /* IE7 and lower */
    border-spacing: 0;
    width: 300px;    
}

.bordered {
    border: solid #ccc 1px;
    -moz-border-radius: 6px;
    -webkit-border-radius: 6px;
    border-radius: 6px;
    -webkit-box-shadow: 0 1px 1px #ccc; 
    -moz-box-shadow: 0 1px 1px #ccc; 
    box-shadow: 0 1px 1px #ccc;   
    position:absolute;      
}

.bordered tr:hover {
    background: #fbf8e9;
    -o-transition: all 0.1s ease-in-out;
    -webkit-transition: all 0.1s ease-in-out;
    -moz-transition: all 0.1s ease-in-out;
    -ms-transition: all 0.1s ease-in-out;
    transition: all 0.1s ease-in-out;     
}    
    
.bordered td, .bordered th {
    border-left: 1px solid #ccc;
    border-top: 1px solid #ccc;
    padding: 10px;
    text-align: left;    
}

.bordered th {
    background-color: #dce9f9;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#ebf3fc), to(#dce9f9));
    background-image: -webkit-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:    -moz-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:     -ms-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:      -o-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:         linear-gradient(top, #ebf3fc, #dce9f9);
    -webkit-box-shadow: 0 1px 0 rgba(255,255,255,.8) inset; 
    -moz-box-shadow:0 1px 0 rgba(255,255,255,.8) inset;  
    box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;        
    border-top: none;
    text-shadow: 0 1px 0 rgba(255,255,255,.5); 
}

.bordered td:first-child, .bordered th:first-child {
    border-left: none;
}

.bordered th:first-child {
    -moz-border-radius: 6px 0 0 0;
    -webkit-border-radius: 6px 0 0 0;
    border-radius: 6px 0 0 0;
}

.bordered th:last-child {
    -moz-border-radius: 0 6px 0 0;
    -webkit-border-radius: 0 6px 0 0;
    border-radius: 0 6px 0 0;
}

.bordered th:only-child{
    -moz-border-radius: 6px 6px 0 0;
    -webkit-border-radius: 6px 6px 0 0;
    border-radius: 6px 6px 0 0;
}

.bordered tr:last-child td:first-child {
    -moz-border-radius: 0 0 0 6px;
    -webkit-border-radius: 0 0 0 6px;
    border-radius: 0 0 0 6px;
}

.bordered tr:last-child td:last-child {
    -moz-border-radius: 0 0 6px 0;
    -webkit-border-radius: 0 0 6px 0;
    border-radius: 0 0 6px 0;
}
</style>
</head>

<body>
	<!--上面部分-->

	<div class="center-middle-top">
		<div id="tab">
			<div class="tabList">
				<ul>
					<li class="cur">已通过</li>
					<li>未通过</li>
					<li>未查看</li>
				</ul>
			</div>
			<div class="tabCon">
				<div>
					<table class="table1">
						 <thead>

    <tr>
        <th style="width: 90px;font-size: 20px"></th>        
        <th ></th>
        <th ></th>
         <th ></th>
         <th></th>
    </tr>
    </thead>


                        <c:forEach items="${users}" var="apply">
                            <tr>
                                <td style="font-size:20px;border-left:3px solid #a4c4f2;height:50px;padding:0 5px; width:100px">${apply.name}</td>
                               </tr>
                              <tr>  <td style="border-bottom:5px solid #a4c4f2;width:300px;padding:10px 35px; font-size:18px;corlor:#a4c4f2">求职岗位：${apply.job}</td></tr>
                               <tr> <td style="border-bottom:5px solid #a4c4f2;width:300px;padding:10px 80px; font-size:18px;corlor:#a4c4f2">学历：${apply.education}</td></tr>
                      <td><input type="button" onClick="onclick1()" value="联系" style="background:#a4c4f2; width:80px;padding:5px 5px;font-size:18px; font-weight:bold;margin-left:100px;margin-top:5px;"/>
                            
                        </c:forEach>

</table>


				</div>

				<div>
					<table class="table2">
						
 <thead>

    <tr>
        <th style="width: 90px;font-size: 20px">未通过人员名单</th>        
        <th ></th>
        <th ></th>
         <th ></th>
         <th></th>
    </tr>
    </thead>


                        <c:forEach items="${users}" var="apply">
                            <tr>
                                <td style="font-size:20px;border-left:3px solid #a4c4f2;height:50px;padding:0 5px; width:100px">${apply.name}</td>
                               </tr>
                              <tr>  <td style="border-bottom:5px solid #a4c4f2;width:300px;padding:10px 35px; font-size:18px;corlor:#a4c4f2">求职岗位：${apply.job}</td></tr>
                               <tr> <td style="border-bottom:5px solid #a4c4f2;width:300px;padding:10px 80px; font-size:18px;corlor:#a4c4f2">学历：${apply.education}</td></tr>

                        </c:forEach>

</table>
				</div>
				<div class="table3">
					<!-- <table class="table3"> 
						<tr>
							<td class="table_1">姓名</td>
							<td class="2">求职意向</td>
							<td class="3">学历</td>

							<td class="4">操作</td>
							<td class="5">简历下载</td>
						</tr>
						<c:forEach items="${users}" var="apply">
							<tr>
								<td>${apply.name}</td>
								<td>${apply.job}</td>
								<td>${apply.education}</td>
								<%-- 		<td>${apply.exp}</td>
								<td>${apply.information}</td> --%>
								<td><input type="button" onClick="onclick1()" value="通过" />
									<input type="button" onClick="onclick2()" value="不合适" /></td>
							</tr>
						</c:forEach>
					</table>
			
			-->
			<table class="bordered">
    <thead>

    <tr>
        <th style="width: 90px;font-size: 20px"></th>        
        <th ></th>
        <th ></th>
         <th ></th>
         <th></th>
    </tr>
    </thead>


                        <c:forEach items="${users}" var="apply">
                            <tr>
                                <td style="font-size:20px;border-left:3px solid #a4c4f2;height:50px;padding:0 5px; width:100px">姓名${apply.name}</td>
                               </tr>
                              <tr>  <td style="border-bottom:5px solid #a4c4f2;width:300px;padding:10px 35px; font-size:18px;corlor:#a4c4f2">求职岗位：${apply.job}</td></tr>
                               <tr> <td style="border-bottom:5px solid #a4c4f2;width:300px;padding:10px 80px; font-size:18px;corlor:#a4c4f2">学历：${apply.education}</td></tr>
                               <tr>        <td style="border:1px solid #a4c4f2;line-height:25px;width:400px;padding:5px 5px;"><p style="font-size:20px;color:#a4c4f2;font-weight:bold ;width:500px;">个人经历：</p>${apply.exp}</td></tr>
                               <tr>        <td style="border:1px solid #a4c4f2;line-height:25px;width:400px;padding:5px 5px;"><p style="font-size:20px;color:#a4c4f2;font-weight:bold;width:500px ">自我介绍：</p>${apply.information}</td></tr>
                                <td><input type="button" onClick="onclick1()" value="通过" style="background:#a4c4f2; width:80px;padding:5px 5px;font-size:18px; font-weight:bold;margin-left:50px;margin-top:5px;"/>
                                    <input type="button" onClick="onclick2()" value="不合适" style="background:#a4c4f2; width:80px;padding:5px 5px;font-size:18px; font-weight:bold;margin-left:30px;margin-top:5px;"/></td>
                            
                        </c:forEach>

</table>
				
			</div>

		</div>


	</div>

	<script type="text/javascript">
		window.onload = function() {
			var oDiv = document.getElementById("tab");
			var oLi = oDiv.getElementsByTagName("div")[0]
					.getElementsByTagName("li");
			var aCon = oDiv.getElementsByTagName("div")[1]
					.getElementsByTagName("div");
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
					aCon[j].className = "";
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
				}, 5)
			}

		}
	</script>
</body>
</html>

</body>
</html>