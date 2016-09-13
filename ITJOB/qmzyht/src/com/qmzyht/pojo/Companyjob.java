package com.qmzyht.pojo;

import java.io.Serializable;
import java.util.Date;




public class Companyjob implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 
	 */

	private int cjid;
	private String cjob;
	private String csalary;
	private String crequest;
	private String cjaddress;
    private Date credate;
    private int cid;
	public Date getCredate() {
		return credate;
	}

	public void setCredate(Date credate) {
		this.credate = credate;
	}

	private Company company;//与companyjob表建立关系

	public Company getCompany() {
		return company;
	}
//
	
	//
	public void setCompany(Company company) {
		this.company = company;
		// TODO Auto-generated method stub
             	 
        }
	
	//equals hashCode方法
	//
	
   	 
   	 //
	public int getCjid() {
		return cjid;
	}

	public void setCjid(int cjid) {
		this.cjid = cjid;
	}

	public String getCjob() {
		return cjob;
	}

	public void setCjob(String cjob) {
		this.cjob = cjob;
	}

	public String getCsalary() {
		return csalary;
	}

	public void setCsalary(String csalary) {
		this.csalary = csalary;
	}

	public String getCrequest() {
		return crequest;
	}

	public void setCrequest(String crequest) {
		this.crequest = crequest;
	}

	public String getCjaddress() {
		return cjaddress;
	}

	public void setCjaddress(String cjaddress) {
		this.cjaddress = cjaddress;
	}


@Override
	public String toString() {
		return "Companyjob [cjid=" + cjid + ", cjob=" + cjob + ", csalary="
				+ csalary + ", crequest=" + crequest + ", cjaddress="
				+ cjaddress + ", company=" + company + "]";
	}

public Companyjob(int cjid, String cjob, String csalary, String crequest, String cjaddress, Company company) {
	super();
	this.cjid = cjid;
	this.cjob = cjob;
	this.csalary = csalary;
	this.crequest = crequest;
	this.cjaddress = cjaddress;
	this.company = company;
	
}

public Companyjob() {
	// TODO Auto-generated constructor stub
	super();
}

public int getCid() {
	return cid;
}

public void setCid(int cid) {
	this.cid = cid;
}





}
