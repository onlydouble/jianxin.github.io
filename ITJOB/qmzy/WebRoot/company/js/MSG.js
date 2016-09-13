function getLength(str){
	return str.replace(/[^x00-xff]/g,"xx").length;
}
function findStr(str,n){
	var tmp = 0;
	for (var i = 0; i < str.length; i++) {
		if (str.charAt(i)==n) {
			tmp++;
		}
	}
	return tmp;
}
window.onload = function(){
	var ainput = document.getElementsByTagName('input');
	var cName = ainput[0];
	var cpwd = ainput[4];
	var cemail =  ainput[2];
	var caddress = ainput[3];
	var clink = ainput[1];
	var aP= document.getElementsByTagName('p');
	var cname_msg=aP[1];
	var cpwd_msg=aP[5];
	var cemail_msg=aP[3];
	var caddress_msg=aP[4];
	var clink_msg=aP[2];
	var count = document.getElementById('count');
	var cname_length=0;
	var cpwd_length=0;
	var caddress_length=0;
	//数字、字母（不分大小写 ）、 汉字、下划线
	//5-25
	//unicode\u4e00-\

	//用户名
	cName.onfocus=function(){
                    cname_msg.style.display="block";
                    cname_msg.innerHTML = '<i class="ati"></i>5-25个字符，一个汉字两个字符，推荐中文名'
	}
	cName.onkeyup=function(){

		count.style.display="block";
		cname_length=getLength(this.value);

		count.innerHTML=cname_length + "个字符";
		if(cname_length==0){
			count.style.display="none";
		}

	}
	cName.onblur=function(){
//含有非法字符、
	var re = /[^\w\u4e00-\u9fa5]/g;
	if(re.test(this.value)){
                         cname_msg.innerHTML='<i class="error"></i>含有非法字符'
	}
	//不能为空、
	
                else if(this.value==""){
                	  cname_msg.innerHTML='<i class="error"></i>不能为空'
                }
                //长度超过25字符、
                 else if(cname_length>25){
                	  cname_msg.innerHTML='<i class="error"></i>长度不能超过25个字符'
    	            }
	//长度少于6个字符
	           else if(cname_length<6){
                	  cname_msg.innerHTML='<i class="error"></i>长度不能小于6个字符'
    	            }
//、OK
                           else{
                                   cname_msg.innerHTML='<i class="ok"></i>OK' 
           clink.removeAttribute("disabled");
                                    count.style.display="none";

                           }
	}	

//密码
cpwd.onfocus=function(){
	   cpwd_msg.style.display="block";
                    cpwd_msg.innerHTML = '<i class="ati"></i>5-10个字符，推荐包含数字+字母+符合'
}

cpwd.onblur=function(){
var m=findStr(cpwd.value,cpwd.value[0]);
 if (this.value=="") {
 	  cpwd_msg.innerHTML='<i class="error"></i>不能为空'
 }
else if(m==this.value.length){
	  cpwd_msg.innerHTML='<i class="error"></i>密码不可以完全相同'
}

 else if(this.value.length<5||this.value.length>10){
 	cpwd_msg.innerHTML='<i class="error"></i>长度应在5-10个字符之间'
 }
 else{
 	cpwd_msg.innerHTML='<i class="ok"></i>OK'
 }}
 //email验证
 cemail.onfocus=function(){
	cemail_msg.style.display="block";
	cemail_msg.innerHTML='<i class="ati"></i>请输入合法邮箱'
 }
 cemail.onblur=function(){

 	
 	var ce=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/g;
	 	if(ce.test(this.value)){
	 		cemail_msg.innerHTML='<i class="ok"></i>';
	 		           caddress.removeAttribute("disabled");
	 	}else if(this.value==""){
	 		cemail_msg.innerHTML='<i class="error"></i>不能为空';
	 	}else {
	 		cemail_msg.innerHTML='<i class="error"></i>请输入合法邮箱';
	 	}

	}
 
 //地址验证
 caddress.onfocus=function(){
	   caddress_msg.style.display="block";
                    caddress_msg.innerHTML = '<i class="ati"></i>4-20个字符必须为中文'
}
 caddress.onblur=function(){
 	var cd=/[^\u4e00-\u9fa5]/g;

 	if(cd.test(this.value)){
 		caddress_msg.innerHTML = '<i class="error"></i>地址必须为中文'
 	}else  if (this.value=="") {
                 	   caddress_msg.innerHTML = '<i class="error"></i>地址不能为空'
                 }	
else  if (getLength(this.value)<4||getLength(this.value)>20) {
                 	   caddress_msg.innerHTML = '<i class="error"></i>地址长度必须在4-20字符之间'
                 }else{
                 	caddress_msg.innerHTML='<i class="ok"></i>OK';
                 	           cpwd.removeAttribute("disabled");
                 }
 }
clink.onfocus=function(){
	clink_msg.style.display="block";
                    clink_msg.innerHTML = '<i class="ati"></i>请输入合法链接eg:www.goole.com'
}
clink.onblur=function(){
	var cl = /(((^https?:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[\w]*))?)$/g;
	if(cl.test(this.value)){
		clink_msg.innerHTML='<i class="ok"></i>OK';
		   cemail.removeAttribute("disabled");
	}  else if(this.value==""){
                	  clink_msg.innerHTML='<i class="error"></i>不能为空'
                }else {
		clink_msg.innerHTML = '<i class="error"></i>请输入合法链接:eg:www.baidu.com';
	}
        
}
}
