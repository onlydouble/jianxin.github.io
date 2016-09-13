<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title></title>
	</head>
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="http://st02.chrstatic.com/themes/pcchinahr/css/webuploader.css">
<link rel="stylesheet" href="http://st02.chrstatic.com/themes/pcchinahr/css/webuploader.css">
<link rel="stylesheet" href="http://st02.chrstatic.com/themes/pcchinahr/css/main.css">
<link rel="stylesheet" href="http://st02.chrstatic.com/themes/pcchinahr/css/jobdetail.css">
<link rel="stylesheet" href="http://st02.chrstatic.com/themes/pcchinahr/css/dialog.css"/>
<link rel="stylesheet" href="http://st02.chrstatic.com/themes/pcchinahr/css/searchResult.css">

	<script type="text/javascript" src="js/jquery.min.js" ></script>
	<script type="text/javascript" src="js/bootstrap.min.js" ></script>
	<script>
	$(function() {
		$("li:eq(8)").click(function() {
			$(".land").css({
				"display" : "block"
			});
		});
	});
	</script>
	<style>
	.click{
width: 449px;
height: 626px;
background: #a4c4f2;
margin-left: 31%;
}
	.land{
	width: 100%;
	height: 100%;
	position: absolute;
	top: 0px;
	left: 0px;
	background:  rgba(200,200,200,0.5);
	display: none;
	z-index: 9;
	}
.btn {
  padding: 7px 12px;
margin: 26px -62px 17px 129px;
background: #a4c4f2;
font-size: 14px;
border: 1px solid #fff;
border-radius: 100%;
box-shadow: -8px -8px 20px #efefef, 5px 5px 5px #B9B9B9;
}
#slideshow{
	width: 150px;
	height: 150px;
	position: relative;
	overflow: hidden;
}
#preview{
	position: absolute;
	border-width: 0;
	outline-width: 0;
}
#frame{
	position: absolute;
	top: 0;
	left: 0;
	z-index: 99;
}
#imagegallery li{
	display: inline-block;padding-left: 2em;
}
article h1{
	margin-left: 35%; 
}
#placeholder{
	display: block;margin: 0 auto;
}
#description{
	text-align: center;padding: 5px auto;font-size: 20px;
		}
td{
	padding: 0.5em 3em;
}
table{margin: 0 auto;}
dl{
	overflow: hidden;
}
dt{
	float: left;
}
dd{
	float: left;
}
label {
	display: block;
	margin-left: 50px;
border-left: 2px solid #fff;
}
fieldset{
	border:0;
}
input, select, img {
   
    margin-left:180px;
    margin-top: -41px;
    height: 28px;
    padding: 0 5px 0;

    border: 2px solid #fff;
    border-radius: 44% 5% 5% 41%;
}
.p{
      /* margin-top:5%; */
}
.pp{
margin-top:4%;}
#message{
margin: -18px 0 10px 129px;
}
    </style>
	<body>
		 <input id="nowPage" type="hidden" value="job">
	            <div class="job_profile jpadding">
                <div class="base_info">
                    <div>
					<h1>
					<span class="job_name">web前端开发工程师</span>
							</h1>
                    
                    </div>
                    <div class="job_require">
                    <span  class="job_price">8000-16000</span>
                                        <i class="job_line">|</i>
                    <span class="job_loc">深圳 福田区</span>
                                                            <i class="job_line">|</i>
                    <span>全职</span>
                                                            <i class="job_line">|</i>
                    <span>大专</span>
                                                            <i class="job_line">|</i>
                    <span class="job_exp">经验3年</span>
                                        </div>
                </div>
                
                                <div class="job_fit_tags">
                    <ul class="clear navbar-form">
                    	                    	<li  >年终奖</li>
                    	                    	<li  >绩效奖金</li>
                    	                    	<li  >项目奖金</li>
                    	                    	<li  >五险一金</li>
                    	                    	<li  >带薪年假</li>
                    	                    	<li  >餐饮补贴</li>
                    	                    	<li  >差旅补贴</li>
                    	                    	<li  >员工培训</li>
                    	                    	
                    	                    </ul>
                </div>
                 <!--投递简历按钮-->
                <div class="btnJL submitJL" onClick="clickLog('from=chr_normdetail_deliver&jobid=163bb0e4f54f30578c3d3784j&gtid=40b8e36ae3174518ba097f0eb73baa86');"><a href="employee/index.html">公司简介</a></div>
                  <div class="btnJL submitJL" style="margin-top:50px"><li><a href="#">申请职位</a></li></div>
                <!--分享-->
                <div class="jshare" id="share">
                
                    <span class="scbtn jicon jicon_start" onClick="clickLog('from=chr_normdetail_restore');"></span>
                    <span class="sharebtn jicon jicon_share" onClick="clickLog('from=chr_normdetail_share');">
                         <div class="jsharePop">
                            <i class="jicon jicon_share_arrow"></i>
                            <ul>
                                <li data-type="qq" onClick="clickLog('from=chr_normdetail_qqshare');"><i class="jicon jicon_qq"></i>QQ 好友</li>
                                <li class="jwx_wrap" data-type="wx" onClick="clickLog('from=chr_normdetail_wxshare');"><i class="jicon jicon_wx"></i>微信分享
                                    <div class="jwx_pop">
                                        <i class="jicon jicon_wx_arrow"></i>
                                        <img src="http://pic02.chrstatic.com/themes/pcchinahr/img/sao_wx.jpg" alt="">
                                    </div>
                                </li>
                                <li data-type="sina" onClick="clickLog('from=chr_normdetail_wbshare');"><i class="jicon jicon_sina"></i>新浪微博</li>
                                <li data-type="copy" onClick="clickLog('from=chr_normdetail_link');" class="hide"><i class="jicon jicon_copy"></i>复制链接</li>
                            </ul>
                        </div>
                     </span>
				</div>
            </div>

				

                <p class="updatetime">今天更新</p>

	 <div class="job_intro jpadding  mt15">
                <div class="title">
                    <h3>职位介绍</h3>
                </div>
				<div class="job_intro_tag">
				                                    <span>性别：不限</span>
                                                    
                                    <i class="job_line">|</i>
                    <span>驾照：不要求</span>
                                </div>
                <div class="job_intro_wrap">
                                          <strong>岗位职责:</strong>
                    <div class="job_intro_info">
                        岗位职责：<br>1、与产品经理和交互、视觉设计师协作，根据需求文档、线框图、设计稿完成切图及页面制作；<br>2、与后台工程师协作，完成数据交互、动态信息展现和交互设计；<br>3、负责与后端工程师配合，完成服务数据交互；<br>4、持续优化相关产品的质量、性能及用户体验。<br> <br>任职要求：<br>1、计算机相关专业，大专及以上学历，2年以上前台开发经验；<br>2、精通各种Web前端技术：HTML5/CSS/JavaScript/jQuery/Ajax/Json；<br>3、熟悉各浏览器特性，如IE、firefox、chrome等；<br>4、具备基本的Java语言能力，能够编写基础的后台处理程序；<br>5、热爱Web前端工作，善于学习，乐于分享、有团队精神；<br>6、富有创造力，用不凡的创意和灵感提升界面操作效率，改善界面可用性。
                    </div>
                                        <!--  -->
                                    </div>
               
              	<div class="more"><a href="javascript:;" class="job_intro_btn" onClick="clickLog('from=chr_normdetail_postintro');">查看更多<i class="icon_hf icon_down"></i></a></div>
            </div>
            <!--公司介绍-->
            <div class="company_intro  jpadding mt15">
                <div class="title">
                    <h3>公司介绍</h3>
                </div>
                <h4><a target="_blank" href="http://www.chinahr.com/company/dd1ab0e409aa29571084344ej.html">深圳市全容电子商务有限公司</a></h4>
                <div class="compny_tag">
                                	                	<span class="job_loc">IT/电商 </span>
                	                                                <i class="job_line">|</i>
                <span>民营/私企</span>
                                                <i class="job_line">|</i>
                <span>规模51－100人</span>
                                                <i class="job_line">|</i>
                <span>2014年成立</span>
                                                <i class="job_line">|</i>
                <span>注册资金 3000万</span>
                                </div>
                <div class="company_service" style="text-indent:2em;white-space: pre-wrap;word-wrap: break-word;">深圳市全容电子商务有限公司是中国装饰与建材行业最具影响力的B2B电子商务运营商。本公司凭借资深的行业经验、专业的信息服务与先进的互联网技术，为中国装饰与建材行业的中小型企业搭建可靠的供需平台，提供全面的商务解决方案，包括商业信息服务、电子商务服务、云信息服务、大数据服务、金融服务及其他增值服务。
    公司旗下自主研发与运营的B2B电子商务平台——“品材汇”（pincai360.com），是以装饰建材为基础，以装饰要素为核心，以一流的技术和先进的管理为支撑，深度研发云计算，充分挖掘大数据，为上下游客户提供商业信息、宣传推广、研究咨询、网络营销、第三方认证、软件和技术支持等全流程服务。作为中国装饰与建材行业电子商务平台的领先者

企业文化：

企业愿景：做中国装饰行业最具影响力的电子商务平台
企业使命：充分运用互联网推动装饰企业创新商务模式、增强竞争能力、借助（互联网+）新理念，提升装饰行业发展水平，打造装饰行业一流的电商平台。
核心价值观：创新、高效、和谐、卓越
企业精神：创造无限、积健为雄
经营理念：成就顾客、成就自我
管理理念：精细化、人性化、协同化、高效化、科学化、规范化
服务理念：持之以恒的创新驱动，不断实现顾客价值最大化


    我们的目标是不遗余力的利用当前最前沿的信息和最先进的技术</div>
                <div class="more"><a href="javascript:;" class="company_service_btn" onClick="clickLog('from=chr_normdetail_comintro');">查看更多<i class="icon_hf icon_down"></i></a></div>
				
				            </div>
<!-- ......................................... -->
	<div class="land">
		<div class="click">
			<a href=""><img src="images/msg/back.jpg" width="20px"
				height="20px;" style="float: right;
margin: 10px 20px;"></a>
			<form action="applyCompanyjob" method="post">

<fieldset>
	<p class="p pp" >
	<label for="name">姓名（Name):</label>
	<input type="text" id="name" name="name"  placeholder="你的姓名" required="required" />
	</p>
		<p class="p">
	<label for="name">学历:</label>
	<input type="text" id="name" name="education"  placeholder="学历" required="required" />
	</p>
		<p class="p">
	<label for="name">求职意向:</label>
	<input type="text" id="name" name="job"  placeholder="求职意向" required="required" />
	</p>
	<p class="p">
	<label for="email">联系方式（邮箱）:</label>
	<input type="email" id="email" name="phone" placeholder="联系方式" required="required" />
	</p>
		<p class="p">
	<label for="message">个人经历:</label>
	<textarea cols="40" rows="5" id="message" name="exp" required="required" placeholder="在此填写你的个人经历."></textarea>
	</p>
	<p class="p">
	<label for="message">自我介绍:</label>
	<textarea cols="40" rows="5" id="message" name="information" required="required" placeholder="在此填写你的自我介绍."></textarea>
	</p>

</fieldset>
	


				<div class="form-group">
					<div class="">
						<a href="applyCompanyjob" name="applyCompanyjob">
							<button type="submit" class="btn btn-default">提交</button>
						</a>
						<button type="reset" class="btn btn-default">撤销</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	
	</body>
</html>
