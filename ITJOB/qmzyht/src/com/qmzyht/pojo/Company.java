package com.qmzyht.pojo;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;




public class Company implements Serializable{

	/**
	 * 
	 */
	 static final long serialVersionUID = 1L;
	// 1.共有的类
		// 2.提供公有的不带参数的构造函数
		// 3.属性
		// 4.属性setter/getter封装
		private int cid; // 公司编号
		private String cname; // 公司名称
		private String cpassword; // 登录密码
		
		private String caddress; // 公司地址
		private String clink; // 公司链接
		private String cphone; // 公司联系方式
		private String cemail; // 公司邮箱
	    private String cimg;//公司头像
	    private String content;
	    

	    //
	    
	    //

		//


		public Company() {
			super();
			// TODO Auto-generated constructor stub
		}

		public Company(int cid, String cname, String cpassword,
				String caddress, String clink, String cphone, String cemail,
				String cimg, String content) {
			super();
			this.cid = cid;
			this.cname = cname;
			this.cpassword = cpassword;
			this.caddress = caddress;
			this.clink = clink;
			this.cphone = cphone;
			this.cemail = cemail;
			this.cimg = cimg;
			this.content = content;
		}

		//
		public int getCid() {
			System.out.println("000000000000000000cid:"+cid);
			return cid;
		}
		public void setCid(int cid) {
			this.cid = cid;
		}
		public String getCname() {
	
			return cname;
		}
		public void setCname(String cname) {

			this.cname = cname;
		}
		public String getCpassword() {
	
			return cpassword;
			
		}
		public void setCpassword(String cpassword) {
			this.cpassword = cpassword;
		}
	
		public String getCaddress() {
			return caddress;
		}
		public void setCaddress(String caddress) {
			this.caddress = caddress;
		}
		public String getClink() {
			return clink;
		}
		public void setClink(String clink) {
			this.clink = clink;
		}
		public String getCphone() {
			return cphone;
		}
		public void setCphone(String cphone) {
			this.cphone = cphone;
		}
		public String getCemail() {
			return cemail;
		}
		public void setCemail(String cemail) {
			this.cemail = cemail;
		}
		public String getCimg() {
			return cimg;
		}
		public void setCimg(String cimg) {
			this.cimg = cimg;
		}
		@Override
		public String toString() {
			return "Company [cid=" + cid + ", cname=" + cname + ", cpassword="
					+ cpassword + ", caddress=" + caddress + ", clink=" + clink
					+ ", cphone=" + cphone + ", cemail=" + cemail + ", cimg="
					+ cimg + ", content=" + content + "]";
		}


		public String getContent() {
			return content;
		}


		public void setContent(String content) {
			this.content = content;
		}
		
		//
		

}
