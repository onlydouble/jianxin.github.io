package com.entity;

import java.io.Serializable;

import javax.xml.crypto.Data;

import org.apache.struts2.components.Date;

public class Apply implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
   
	private int sid;
	private String name;
	private String job;
	private String education;
	private String exp;
	private String information;
    private Date date;
	
	public Apply(int sid, String name, String job, String education,
			String exp, String information, Date date) {
		super();
		this.sid = sid;
		this.name = name;
		this.job = job;
		this.education = education;
		this.exp = exp;
		this.information = information;
		this.date = date;
	}
	public Apply(){
		super();
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getExp() {
		return exp;
	}
	public void setExp(String exp) {
		this.exp = exp;
	}
	public String getInformation() {
		return information;
	}
	public void setInformation(String information) {
		this.information = information;
	}

	public Apply(int sid, String name, String job, String education,
			String exp, String information) {
		super();
		this.sid = sid;
		this.name = name;
		this.job = job;
		this.education = education;
		this.exp = exp;
		this.information = information;
	}
	@Override
	public String toString() {
		return "Apply [sid=" + sid + ", name=" + name + ", job=" + job
				+ ", education=" + education + ", exp=" + exp
				+ ", information=" + information + ", date=" + date + "]";
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
}
