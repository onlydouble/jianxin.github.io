package com.entity;

import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

public class Employee {

	// 1.共有的类
	// 2.提供公有的不带参数的构�?函数
	// 3.属�?
	// 4.属�?setter/getter封装
	private int eid; // 用户编号
	private String eno; // 用户登录账号
	private String epassword; // 登录密码
	private String ename; // 用户姓名
	private String esex; // 用户性别
	private Date ebirth; // 用户出生日期
	private String eidnumber; // 用户身份�?
	private int ephone; // 用户联系方式
	private String email; // 用户邮箱
    private String eimg;//用户头像
    private Set<Companyjob> companyjobs = new HashSet<Companyjob>();
    
public Employee(int eid, String eno, String epassword, String ename,
			String esex, Date ebirth, String eidnumber, int ephone,
			String email, String eimg) {
		super();
		this.eid = eid;
		this.eno = eno;
		this.epassword = epassword;
		this.ename = ename;
		this.esex = esex;
		this.ebirth = ebirth;
		this.eidnumber = eidnumber;
		this.ephone = ephone;
		this.email = email;
		this.eimg = eimg;
		//
		
		
	}

	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public String getEno() {
		return eno;
	}

	public void setEno(String eno) {
		this.eno = eno;
	}

	public String getEpassword() {
		return epassword;
	}

	public void setEpassword(String epassword) {
		this.epassword = epassword;
	}

	public String getEname() {
		
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getEsex() {
		return esex;
	}

	public void setEsex(String esex) {
		this.esex = esex;
	}

	public Date getEbirth() {
		return ebirth;
	}

	public void setEbirth(Date ebirth) {
		this.ebirth = ebirth;
	}

	public String getEidnumber() {
		return eidnumber;
	}

	public void setEidnumber(String eidnumber) {
		this.eidnumber = eidnumber;
	}

	public int getEphone() {
		return ephone;
	}

	public void setEphone(int ephone) {
		this.ephone = ephone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEimg() {
		return eimg;
	}

	public void setEimg(String eimg) {
		this.eimg = eimg;
	}

	@Override
	public String toString() {
		return "Employee [eid=" + eid + ", eno=" + eno + ", epassword="
				+ epassword + ", ename=" + ename + ", esex=" + esex
				+ ", ebirth=" + ebirth + ", eidnumber=" + eidnumber
				+ ", ephone=" + ephone + ", email=" + email + ", eimg=" + eimg
				+ "]";
	}

	public Set<Companyjob> getCompanyjobs() {
		return companyjobs;
	}

	public void setCompanyjobs(Set<Companyjob> companyjobs) {
		this.companyjobs = companyjobs;
	}

	//
	




    
    //
    
    
    
    
}
